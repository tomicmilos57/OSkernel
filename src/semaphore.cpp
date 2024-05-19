#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"
//int Semaphore::sem_open(int init){}


void Semaphore::putBlock(TCB *tcb){blockedQueue.addLast(tcb);}
TCB *Semaphore::getBlock(){return blockedQueue.removeFirst();}

void Semaphore::sem_block(){
    TCB *old = TCB::running;

    putBlock(old);
    //Scheduler::putSleep(old);

    TCB::running = Scheduler::get();

    TCB::contextSwitch(&old->context, &TCB::running->context);
}
void Semaphore::sem_unblock(){
    TCB* blocked = getBlock();
    Scheduler::put(blocked);
}

void Semaphore::sem_wait(){
    //lock
    if(--val < 0) sem_block();
    //unlock
}
void Semaphore::sem_signal(){
    //lock
    if(++val <= 0) sem_unblock();
    //unlock
}
//int Semaphore::sem_close(){}