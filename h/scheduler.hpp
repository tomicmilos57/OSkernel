#ifndef scheduler_hpp
#define scheduler_hpp
#include "../lib/hw.h"
#include "list.hpp"
// Vezbe 7

class TCB;

class Scheduler {
private:
  static List<TCB> readyThreadQueue;
  static List<TCB> sleepThreadQueue;
  static uint64 nsleep;
public:
  static TCB *get();
  static void put(TCB *ccb);
  static TCB *getSleep();
  static void putSleep(TCB *ccb);
  static uint64 getNumOfSleep();
  static TCB* idle;
};

#endif