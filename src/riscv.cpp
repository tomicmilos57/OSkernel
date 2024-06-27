#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/semaphore.hpp"
#include "../h/memory.hpp"
#include "../h/console.hpp"
#define a0(x)                                 \
    __asm__ volatile("mv t0, %0" : : "r"(x)); \
    __asm__ volatile("sw t0, 80(x8)");
void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    mc_sstatus(SSTATUS_SPP); // clear sstatus na nulu tj spp
    __asm__ volatile("sret");
}
#include "../lib/mem.h"
void Riscv::handleSupervisorTrap()
{
    uint64 scause = r_scause();

        uint64 volatile code, a1, a2, a3, a4;
        __asm__ volatile("mv %[code], a0" : [code] "=r"(code));
        __asm__ volatile("mv %[a1], a1" : [a1] "=r"(a1));
        __asm__ volatile("mv %[a2], a2" : [a2] "=r"(a2));
        __asm__ volatile("mv %[a3], a3" : [a3] "=r"(a3));
        __asm__ volatile("mv %[a4], a4" : [a4] "=r"(a4));
    if (scause == 0x0000000000000009UL || scause == 0x0000000000000008UL)
    {                                        // ecall
        
        uint64 volatile sepc = r_sepc() + 4; // ecall return to its address
        uint64 volatile sstatus = r_sstatus();
        



        switch (code)
        {
        case MEM_ALLOC:
        {  
            void *ptr = malloc((size_t)a1);
            a0((uint64)ptr) break;
        }
        case MEM_FREE:
        {
            int r = free((void *)a1);
            a0((uint64)r) break;
        }
        case THREAD_CREATE:
        {
            //SprintLine("Arg Ptr: ", (uint64)a3);
            //SprintLine("Start Routine: ", (uint64)a2);
            //SprintLine("Handle: ", (uint64)a1);
            TCB* volatile val = TCB::createThread((void(*)(void*))a2, (void*)a3);
            //SprintLine("Created Thr with handle: ", (uint64)val);
            
            (*(thread_t**)a1) = (thread_t*)val;
            //a0((uint64)val)
            if(val){a0(0)}
            else {a0(-1)}
            break;
        }
        case THREAD_EXIT:
        {   
            TCB::thread_exit();
            a0(0)
            break;
        }

        case SEM_OPEN:
        {
            //SprintLine("Handle S MODE: ", a1);
            //SprintLine("Init S MODE: ", a2);
            Sem **handle = (Sem**)a1;
            Sem *semaphore = new Sem(a2);//should a2 be unsigned or uint64?
            //(*(thread_t**)a1) = (thread_t*)val;
            if(semaphore == nullptr) a0(-1);
            
            *handle = semaphore;
            Scheduler::putSem(semaphore);
            a0(0)
            break;
        }
        case SEM_CLOSE:
        {
            Sem* handle = (Sem*)a1;
            if(handle == nullptr || !Scheduler::semaphoreExists(handle)){
                a0(-1)
                break;
            }
            Scheduler::removeSemaphore(handle);
            SprintLine("Num of Semaphores: ", Scheduler::getSemaphoresNumber());
            a0(0)
            break;
        }
        case SEM_WAIT:
        {
            Sem* handle = (Sem*)a1;
            if(!Scheduler::semaphoreExists(handle)){
                a0(-1)
                break;
            }
            a0(handle->wait())
            break;
        }
        case SEM_SIGNAL:
        {
            Sem* handle = (Sem*)a1;
            if(!Scheduler::semaphoreExists(handle)){
                a0(-1)
                break;
            }
            a0(handle->signal())
            //break; //after signal -> go to dispatch
        }
        case THREAD_DISPATCH:
        {
            uint64 volatile sepc_yield = r_sepc() + 4; // ecall return to its address
            uint64 volatile sstatus_yield = r_sstatus();
            TCB::timeSLiceCounter = 0;
            if (TCB::running->sleeping > 0)
                TCB::dispatchSleep();
            else
                TCB::dispatch();
            w_sstatus(sstatus_yield);
            w_sepc(sepc_yield);
            break;
        }
        case SEM_TIMEDWAIT://sleeping = a2;
        {
            Sem* handle = (Sem*)a1;
            uint64 timeout = a2;
            if(handle == nullptr){
                a0(-1)
                break;
            }
            int ret = handle->timedwait(timeout);
            a0(ret)
            break;
        }
        case SEM_TRYWAIT:
        {
            Sem* handle = (Sem*)a1;
            if(!Scheduler::semaphoreExists(handle)){
                a0(-1)
                break;
            }
            a0(handle->trywait())
            break;
        }
        case TIME_SLEEP:
        {
            a0(TCB::time_sleep(a1));
            break;
        }
        case GETC:
        {
            a0((uint64)MyConsole::__getc());
            break;
        }
        case PUTC:{
            MyConsole::__putc((char)a1);
            break;
        }
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    { // interrupt, supervisor software interrupt (timer)
        TCB::timeSLiceCounter++;
        for (uint64 i = 0; i < Scheduler::getNumOfSleep(); i++) // This won't work if Scheduler is not queue
        {                                                       
            TCB *elem = Scheduler::getSleep();
            elem->sleeping--;
            if (elem->sleeping > 0)
                Scheduler::putSleep(elem);
            else
                Scheduler::put(elem);
        }
        Scheduler::wakeUpSleepingSemaphores();
        //for (uint64 i = 0; i < Scheduler::getNumSemSleep(); i++) 
        //{                                                       
        //    TCB *elem = Scheduler::getSemSleep();
        //    elem->sleeping--;
        //    if (elem->sleeping > 0)
        //        Scheduler::putSemSleep(elem);
        //    else{
        //        //remove from blocked
        //        Scheduler::put(elem);
        //    }
        //}
        if (TCB::timeSLiceCounter >= TCB::running->getTimeSlice())
        {
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSLiceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL)
    { // interrupt, supervisor external interrupt (console)
        //console_handler();
        int irq = plic_claim();
        // if (irq == CONSOLE_IRQ) {
        while (*((char*)(CONSOLE_STATUS)) & CONSOLE_RX_STATUS_BIT) {
           char c = (*(char*)CONSOLE_RX_DATA);
           //c=c;
           MyConsole::putFromKeyboard(c);
        }
        // }
        plic_complete(irq);
    }
    else
    { // unexpected trap cause
        SprintString("Unexpected trap cause\n");
        // print scause
        SprintLine("Scause: ", r_scause());
        // print sepc
        SprintLine("Sepc: ", r_sepc());
        // print stval
        SprintLine("Stval: ", r_stval());
        while(1);
        //TCB::time_sleep(1000);
    }
}