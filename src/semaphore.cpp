#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"



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
    if(blocked == 0){ //When there are no blocked
        //TODO get from semSleepQueue 
    }
    Scheduler::put(blocked);
}
int Sem::wait(){
    TCB *old = TCB::running;

    if(--val < 0) putBlock(old);
    else Scheduler::put(old);
    TCB::running = Scheduler::get();

    TCB::contextSwitch(&old->context, &TCB::running->context);
    return 0;
}
int Sem::trywait(){
    //lock
    if(--val < 0) block();
    //unlock
    return 0;
}
int Sem::timedwait(time_t timeout){
    TCB *old = TCB::running;

    if(--val < 0) {
        old->sleeping = timeout;
        Scheduler::putSemSleep(old);
    }
    else Scheduler::put(old);
    TCB::running = Scheduler::get();

    TCB::contextSwitch(&old->context, &TCB::running->context);
    return 0;
}
int Sem::signal(){
    //lock
    if(++val <= 0) unblock();
    //unlock
    return 0;
}
int Sem::close(){
    while(blockedQueue.getNumOfElem() > 0){
        TCB* thread = getBlock();
        Scheduler::put(thread);
    }
    return 0;
}
