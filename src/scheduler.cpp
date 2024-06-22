#include "../h/scheduler.hpp"
#include "../h/tcb.hpp"
List<TCB> Scheduler::readyThreadQueue;
List<TCB> Scheduler::sleepThreadQueue;
List<TCB> Scheduler::semaphoreSleepQueue;
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

TCB *Scheduler::getSleep() { nsleep--; return sleepThreadQueue.removeFirst(); }
void Scheduler::putSleep(TCB *ccb) { nsleep++; sleepThreadQueue.addLast(ccb); }
uint64 Scheduler::getNumOfSleep(){return nsleep;}


Sem *Scheduler::getSem(){
    return semaphoreQueue.removeFirst();
}
void Scheduler::putSem(Sem *sem){
    semaphoreQueue.addLast(sem);
} 
TCB *Scheduler::getSemSleep(){semsleep--; return semaphoreSleepQueue.removeFirst(); }
void Scheduler::putSemSleep(TCB *sem){semsleep++; semaphoreSleepQueue.addLast(sem); }
uint64 Scheduler::getNumSemSleep(){ return semsleep; }