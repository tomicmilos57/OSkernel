#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/memory.hpp"
#include "../h/console.hpp"
extern void userMain();
void empty(){ while(1){} }


int main() {
    initmem();
    Riscv::S = true;
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    MyConsole::initConsole();
    TCB* mainthread = TCB::createThread(nullptr);
    
    TCB::running = mainthread;
    
    Scheduler::idle = TCB::createIdleThread(empty);
    
    TCB* mymain = TCB::createThread(userMain);
    
    while(!mymain->isFinished()){thread_dispatch();}
    delete mymain; 
    delete mainthread; 
    return 0;
}