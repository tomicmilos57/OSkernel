#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/workers.hpp"
#include "../h/riscv.hpp"
void empty(){ while(1){printString("Idle\n");} }
int main() {
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    
    TCB *coroutines[5];
    coroutines[0] = TCB::createThread(nullptr);
    printLine("MainThread created: ", (uint64)coroutines[0]);
    TCB::running = coroutines[0];
    Scheduler::idle = TCB::createIdleThread(empty);
    printLine("IdleThread created: ", (uint64)Scheduler::idle);

    coroutines[1] = TCB::createThread(workerBodyA);
    printLine("ThreadA created: ", (uint64)coroutines[1]);
    coroutines[2] = TCB::createThread(workerBodyB);
    printLine("ThreadB created: ", (uint64)coroutines[2]);
    coroutines[3] = TCB::createThread(workerBodyC);
    printLine("ThreadC created: ", (uint64)coroutines[3]);
    coroutines[4] = TCB::createThread(workerBodyD);
    printLine("ThreadD created: ", (uint64)coroutines[4]);
    

    while (!(coroutines[1]->isFinished() &&
    coroutines[2]->isFinished()&&
    coroutines[3]->isFinished()&&
    coroutines[4]->isFinished())) {
        TCB::time_sleep(300);
        //TCB::yield();
    }
    for (auto &coroutine: coroutines) {
        delete coroutine;
    }
    printString("Finished\n");
    return 0;
}
