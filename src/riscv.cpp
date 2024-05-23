#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/syscall_cpp.hpp"
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
    if (scause == 0x0000000000000009UL || scause == 0x0000000000000008UL)
    {                                        // ecall
        uint64 volatile sepc = r_sepc() + 4; // ecall return to its address
        uint64 volatile sstatus = r_sstatus();
        uint64 code, a1, a2, a3, a4;

        __asm__ volatile("mv %[code], a0" : [code] "=r"(code));
        __asm__ volatile("mv %[a1], a1" : [a1] "=r"(a1));
        __asm__ volatile("mv %[a2], a2" : [a2] "=r"(a2));
        __asm__ volatile("mv %[a3], a3" : [a3] "=r"(a3));
        __asm__ volatile("mv %[a4], a4" : [a4] "=r"(a4));
        switch (code)
        {
        case MEM_ALLOC:
        {  
            void *ptr = __mem_alloc((size_t)a1);
            a0((uint64)ptr) break;
        }
        case MEM_FREE:
        {
            int r = __mem_free((void *)a1);
            a0((uint64)r) break;
        }
        case THREAD_CREATE:
            
            break;
        case THREAD_EXIT:
        {
            TCB::thread_exit();
            break;
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
        case SEM_OPEN:

            break;
        case SEM_CLOSE:

            break;
        case SEM_WAIT:

            break;
        case SEM_SIGNAL:

            break;
        case SEM_TIMEDWAIT:

            break;
        case SEM_TRYWAIT:

            break;
        case TIME_SLEEP:
            TCB::time_sleep(a1);
            break;
        case GETC:
            a0(__getc());
            break;
        case PUTC:
            __putc(a1);
            break;
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    { // interrupt, supervisor software interrupt (timer)
        TCB::timeSLiceCounter++;
        for (uint64 i = 0; i < Scheduler::getNumOfSleep(); i++) // This won't work if Scheduler is not queue
        {                                                       // change from int i to uint64 i
            TCB *elem = Scheduler::getSleep();
            elem->sleeping--;
            if (elem->sleeping > 0)
                Scheduler::putSleep(elem);
            else
                Scheduler::put(elem);
        }

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
        console_handler();
    }
    else
    { // unexpected trap cause
        printString("Unexpected trap cause\n");
        // print scause
        printLine("Scause: ", r_scause());
        // print sepc
        printLine("Sepc: ", r_sepc());
        // print stval
        printLine("Stval: ", r_stval());
    }
}