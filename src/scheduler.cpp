#include "../h/scheduler.hpp"

List<TCB> Scheduler::readyThreadQueue;
List<TCB> Scheduler::sleepThreadQueue;
uint64 Scheduler::nsleep = 0;
TCB *Scheduler::get() { return readyThreadQueue.removeFirst(); }
void Scheduler::put(TCB *ccb) { readyThreadQueue.addLast(ccb); }

TCB *Scheduler::getSleep() { nsleep--; return sleepThreadQueue.removeFirst(); }
void Scheduler::putSleep(TCB *ccb) { nsleep++; sleepThreadQueue.addLast(ccb); }
uint64 Scheduler::getNumOfSleep(){return nsleep;}