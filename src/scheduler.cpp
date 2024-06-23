#include "../h/scheduler.hpp"
#include "../h/tcb.hpp"
List<TCB> Scheduler::readyThreadQueue;
List<TCB> Scheduler::sleepThreadQueue;
//List<TCB> Scheduler::semaphoreSleepQueue;
List<Sem> Scheduler::semaphoreQueue;
uint64 Scheduler::nsleep = 0;
uint64 Scheduler::semsleep = 0;
TCB* Scheduler::idle = nullptr;
#include "../h/print.hpp"

TCB *Scheduler::get() { 
    if(readyThreadQueue.getNumOfElem() == 0) 
        return idle;
    return readyThreadQueue.removeFirst(); 
}
void Scheduler::put(TCB *ccb) {
    if(ccb != idle) {
        //printString("Dodat\n");
        readyThreadQueue.addLast(ccb);
    }
}
void Scheduler::putFirst(TCB *ccb) {
    if(ccb != idle) {
        readyThreadQueue.addFirst(ccb);
    }
}
TCB *Scheduler::getSleep() { nsleep--; return sleepThreadQueue.removeFirst(); }
void Scheduler::putSleep(TCB *ccb) { nsleep++; sleepThreadQueue.addLast(ccb); }
uint64 Scheduler::getNumOfSleep(){return nsleep;}


Sem *Scheduler::getSem(){
    return semaphoreQueue.removeFirst();
}
void Scheduler::putSem(Sem *sem){
    semaphoreQueue.addLast(sem);
} 


void Scheduler::wakeUpSleepingSemaphores(){
    for(semaphoreQueue.init();semaphoreQueue.hasNext();semaphoreQueue.next()){
        semaphoreQueue.getCurrent()->wakeUp();
    }
}

void Scheduler::removeSemaphore(Sem* sem){
//    for(semaphoreQueue.init();semaphoreQueue.hasNext();semaphoreQueue.next()){
//        if(semaphoreQueue.getCurrent() == sem) {
//            semaphoreQueue.removeCurrent();
//            break;
//        }
//    }
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
    bool found = false;
    for(semaphoreQueue.init();semaphoreQueue.hasNext();semaphoreQueue.next()){
        if(semaphoreQueue.getCurrent() == sem) {
            found = true;
            break;
        }
    }
    return found;
}