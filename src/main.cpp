#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/workers.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.h"
#include "../h/memory.hpp"
extern void userMain();
void empty(){ while(1){SprintString("Idle\n");} }

int main() {
    initmem();
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    
    TCB* mainthread = TCB::createThread(nullptr);
    
     TCB::running = mainthread;
    Scheduler::idle = TCB::createIdleThread(empty);
    
    TCB* mymain = TCB::createThread(userMain);
    //SprintLine("MAGIC NUM: ", ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR)/MEM_BLOCK_SIZE);

    while(!mymain->isFinished()){
        //__putc('a');
        //TCB::time_sleep(500);
        thread_dispatch();
    }
    //delete mymain; //ERROR
    //delete mainthread; //ERROR
    //SprintString("\nFinished\n");
    return 0;
}