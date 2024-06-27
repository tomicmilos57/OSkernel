#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"



void Sem::putBlock(TCB *tcb){blockedQueue.addLast(tcb);}
TCB *Sem::getBlock(){return blockedQueue.removeFirst();}

int Sem::block(){
    TCB *old = TCB::running;

    putBlock(old);
    //Scheduler::putSleep(old);

    TCB::running = Scheduler::get();

    TCB::contextSwitch(&old->context, &TCB::running->context);
    return 0;
}
void Sem::unblock(){
    TCB* blocked = getBlock();
    if(blocked != 0){
    blocked->sleeping = 0; 
    //Scheduler::put(blocked);
    Scheduler::putFirst(blocked);
    }
}
int Sem::wait(){
    TCB *old = TCB::running;

    if(--val < 0) putBlock(old);
    else Scheduler::put(old);
    TCB::running = Scheduler::get();

    TCB::contextSwitch(&old->context, &TCB::running->context);

    TCB *temp = TCB::getRunning();
    if(temp->timeout == 1) {
        temp->timeout = 0;
        return -1; 
    }

    return 0;
}
int Sem::trywait(){
    if(--val < 0) return block();//return value?
    return 1;
}
#include "../h/print.hpp"
int Sem::timedwait(time_t timeout){
    if(timeout <= 0) return 0;
    TCB *old = TCB::running;//volatile
    
    if(--val < 0) {
        old->sleeping = timeout;
        putBlock(old);
    }
    else Scheduler::put(old);
    TCB::running = Scheduler::get();

    TCB::contextSwitch(&old->context, &TCB::running->context);
    //if(TCB::running){SprintString("radi\n");}
    //SprintLine("After : ", (uint64)old);
    TCB *temp = TCB::getRunning();
    if(temp->timeout == 2) {
        //SprintLine("timeoutWakeup : ", temp->timeout);
        temp->timeout = 0;
        return -2; 
    }else if(temp->timeout == 1) {
        temp->timeout = 0;
        return -1; 
    }
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


void Sem::wakeUp(){
    //for(blockedQueue.init(); blockedQueue.hasNext(); blockedQueue.next()){
    //    TCB* curr = blockedQueue.getCurrent();
    //    if(curr->sleeping == 1){
    //        curr->sleeping = 0;
    //        curr->timeout = 2;
    //        blockedQueue.removeCurrent();
    //        Scheduler::put(curr);
    //    }else if(curr->sleeping > 1) curr->sleeping--;
    //}
    for (uint64 i = 0; i < blockedQueue.getN(); i++) 
    {                                                       
        TCB *elem = blockedQueue.removeFirst();
        if (elem->sleeping == 1){
            elem->sleeping = 0;
            elem->timeout = 2;
            //SprintLine("timeoutWakeup : ", (uint64)elem);
            //SprintLine("timeoutWakeup : ", elem->timeout);

            Scheduler::put(elem);
        }
        else if(elem->sleeping > 1) {
            elem->sleeping--;
            blockedQueue.addLast(elem);
        }else blockedQueue.addLast(elem);
    }
}
void Sem::unblockAll(){
    for (uint64 i = 0; i < blockedQueue.getN(); i++) {
        TCB* blocked = getBlock();
        if(blocked != 0){
            blocked->sleeping = 0;
            blocked->timeout = 1;
            Scheduler::putFirst(blocked);
        }
    }
}