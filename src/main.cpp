#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/workers.hpp"
#include "../h/riscv.hpp"
int main() {

    TCB *coroutines[5];
    coroutines[0] = TCB::createThread(nullptr);
    TCB::running = coroutines[0];

    coroutines[1] = TCB::createThread(workerBodyA);
    printString("ThreadA created\n");
    coroutines[2] = TCB::createThread(workerBodyB);
    printString("ThreadB created\n");
    coroutines[3] = TCB::createThread(workerBodyC);
    printString("ThreadC created\n");
    coroutines[4] = TCB::createThread(workerBodyD);
    printString("ThreadD created\n");

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(coroutines[1]->isFinished() &&
    coroutines[2]->isFinished()&&
    coroutines[3]->isFinished()&&
    coroutines[4]->isFinished())) {
        TCB::yield();
    }
    for (auto &coroutine: coroutines) {
        delete coroutine;
    }
    printString("Finished\n");
    return 0;
}
