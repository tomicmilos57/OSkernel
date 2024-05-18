#include "../h/scheduler.hpp"
#include "../h/tcb.hpp"
List<TCB> Scheduler::readyThreadQueue;
List<TCB> Scheduler::sleepThreadQueue;
uint64 Scheduler::nsleep = 0;
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