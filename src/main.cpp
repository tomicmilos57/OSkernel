#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/workers.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/memory.hpp"
#include "../h/console.hpp"
extern void userMain();
void empty(){ while(1){SprintString("Idle\n");} }
void next(){ putc('c');}

int main() {
    initmem();
    
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    MyConsole::initConsole();
    TCB* mainthread = TCB::createThread(nullptr);
    
    TCB::running = mainthread;
    
    Scheduler::idle = TCB::createIdleThread(empty);
    
    TCB* mymain = TCB::createThread(userMain);

    
    // while(1);
    while(!mymain->isFinished()){thread_dispatch();}
    delete mymain; //ERROR
    delete mainthread; //ERROR
    //SprintString("\nFinished\n");
    return 0;
}