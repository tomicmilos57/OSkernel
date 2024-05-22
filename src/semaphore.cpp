#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"
//int Semaphore::sem_open(int init){}


void Semaphore::putBlock(TCB *tcb){blockedQueue.addLast(tcb);}
TCB *Semaphore::getBlock(){return blockedQueue.removeFirst();}

void Semaphore::block(){
    TCB *old = TCB::running;

    putBlock(old);
    //Scheduler::putSleep(old);

    TCB::running = Scheduler::get();

    TCB::contextSwitch(&old->context, &TCB::running->context);
}
void Semaphore::unblock(){
    TCB* blocked = getBlock();
    Scheduler::put(blocked);
}

void Semaphore::wait(){
    //lock
    if(--val < 0) block();
    //unlock
}
void Semaphore::signal(){
    //lock
    if(++val <= 0) unblock();
    //unlock
}
int Semaphore::close(){
    while(blockedQueue.getNumOfElem() > 0){
        TCB* thread = getBlock();
        Scheduler::put(thread);
    }
    return 0;
}
