#ifndef scheduler_hpp
#define scheduler_hpp
#include "../lib/hw.h"
#include "list.hpp"
#include "../h/semaphore.hpp"
// Vezbe 7

class TCB;

class Scheduler {
private:
  static List<TCB> readyThreadQueue;
  static List<TCB> sleepThreadQueue;
  static List<Sem> semaphoreQueue;
  //static List<TCB> semaphoreSleepQueue;
  static uint64 nsleep;
  static uint64 semsleep;
public:
  static TCB *get();
  static void put(TCB *ccb);
  static void putFirst(TCB *ccb);
   
  static TCB *getSleep();
  static void putSleep(TCB *ccb);
  static uint64 getNumOfSleep();
  static TCB* idle;
  
  static Sem *getSem();
  static void putSem(Sem *ccb);

  static void wakeUpSleepingSemaphores();
  static void removeSemaphore(Sem*);
  static int getSemaphoresNumber(){ return semaphoreQueue.getN(); } //debug function
  static bool semaphoreExists(Sem*);
//  static TCB *getSemSleep();
//  static void putSemSleep(TCB *ccb);
//  static uint64 getNumSemSleep();
};

#endif