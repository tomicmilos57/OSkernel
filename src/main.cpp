#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/workers.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"
void empty(){ while(1){printString("Idle\n");} }
int main() {
    
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    TCB *coroutines[5];
    coroutines[0] = TCB::createThread(nullptr);
    printLine("MainThread created: ", (uint64)coroutines[0]);
    TCB::running = coroutines[0];
    Scheduler::idle = TCB::createIdleThread(empty);
    printLine("IdleThread created: ", (uint64)Scheduler::idle);
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
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
        //TCB::yield(); thread_dispatch(){ yield(); }
    }
    for (auto &coroutine: coroutines) {
        delete coroutine;
    }
    printString("Finished\n");
    return 0;
}


#include "../h/semaphore.hpp"

Semaphore *sem1;
Semaphore *sem2;

void seminc(){
    for (uint64 i = 0; i < 10; i++) {
        TCB::time_sleep(10);
        sem1->wait();
        __putc('A');
        __putc('\n');
        sem2->signal();
    }
}

void semdec(){
    for (uint64 i = 0; i < 10; i++) {
        sem2->wait();
        __putc('B');
        __putc('\n');
        sem1->signal();
    }  
}

int main3(){
    __putc('S');
    __putc('\n');
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    __putc('S');
    __putc('\n');
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __putc('S');
    __putc('\n');
    TCB *coroutines[5];
    coroutines[0] = TCB::createThread(nullptr);
    printLine("MainThread created: ", (uint64)coroutines[0]);
    TCB::running = coroutines[0];
    Scheduler::idle = TCB::createIdleThread(empty);
    printLine("IdleThread created: ", (uint64)Scheduler::idle);

    sem1 =  new Semaphore(1);
    sem2 =  new Semaphore(0);

    coroutines[1] = TCB::createThread(seminc);
    printLine("ThreadA created: ", (uint64)coroutines[1]);
    //coroutines[4] = TCB::createThread(semdec);
    //printLine("ThreadB created: ", (uint64)coroutines[4]);
    coroutines[3] = TCB::createThread(semdec);
    printLine("ThreadA created: ", (uint64)coroutines[3]);
    //coroutines[2] = TCB::createThread(semdec);
    //printLine("ThreadB created: ", (uint64)coroutines[2]);


    while (!(coroutines[1]->isFinished() &&
    coroutines[3]->isFinished())) {
        //TCB::time_sleep(300);
        //TCB::yield();
    }
    for (auto &coroutine: coroutines) {
        delete coroutine;
    }
    printString("Finished\n");
    return 0;
}
