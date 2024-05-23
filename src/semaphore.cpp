#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"
//int Semaphore::sem_open(int init){}


void Sem::putBlock(TCB *tcb){blockedQueue.addLast(tcb);}
TCB *Sem::getBlock(){return blockedQueue.removeFirst();}

void Sem::block(){
    TCB *old = TCB::running;

    putBlock(old);
    //Scheduler::putSleep(old);

    TCB::running = Scheduler::get();

    TCB::contextSwitch(&old->context, &TCB::running->context);
}
void Sem::unblock(){
    TCB* blocked = getBlock();
    Scheduler::put(blocked);
}

void Sem::wait(){
    //lock
    if(--val < 0) block();
    //unlock
}
void Sem::signal(){
    //lock
    if(++val <= 0) unblock();
    //unlock
}
int Sem::close(){
    while(blockedQueue.getNumOfElem() > 0){
        TCB* thread = getBlock();
        Scheduler::put(thread);
    }
    return 0;
}
