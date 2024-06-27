#include "../h/scheduler.hpp"

List<TCB> Scheduler::readyThreadQueue;
List<TCB> Scheduler::sleepThreadQueue;
List<Sem> Scheduler::semaphoreQueue;
TCB* Scheduler::idle = nullptr;

TCB *Scheduler::get() { 
    if(readyThreadQueue.getN() == 0) 
        return idle;
    return readyThreadQueue.removeFirst(); 
}
void Scheduler::put(TCB *ccb) { if(ccb != idle) readyThreadQueue.addLast(ccb); }
void Scheduler::putFirst(TCB *ccb) { if(ccb != idle) readyThreadQueue.addFirst(ccb); }
    
TCB *Scheduler::getSleep() { return sleepThreadQueue.removeFirst(); }
void Scheduler::putSleep(TCB *ccb) { sleepThreadQueue.addLast(ccb); }
uint64 Scheduler::getNumOfSleep(){return sleepThreadQueue.getN();}


Sem *Scheduler::getSem(){ return semaphoreQueue.removeFirst(); }

void Scheduler::putSem(Sem *sem){ semaphoreQueue.addLast(sem); } 


void Scheduler::wakeUpSleepingSemaphores(){
    for(semaphoreQueue.init();semaphoreQueue.hasNext();semaphoreQueue.next()){
        semaphoreQueue.getCurrent()->wakeUp();
    }
}

void Scheduler::removeSemaphore(Sem* sem){
    for (uint64 i = 0; i < semaphoreQueue.getN(); i++) 
    {                                                       
        Sem *elem = semaphoreQueue.removeFirst();
        if (elem != sem){
            semaphoreQueue.addLast(elem);
        }else{
            sem->unblockAll();
        }
    }
}
bool Scheduler::semaphoreExists(Sem* sem){
    if(sem == nullptr) return false;
    for(semaphoreQueue.init();semaphoreQueue.hasNext();semaphoreQueue.next()){
        if(semaphoreQueue.getCurrent() == sem) {
            return true;
        }
    }
    return false;
}