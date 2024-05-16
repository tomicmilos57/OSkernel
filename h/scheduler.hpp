#ifndef scheduler_hpp
#define scheduler_hpp
#include "list.hpp"
// Vezbe 7

class TCB;

class Scheduler {
private:
  static List<TCB> readyCoroutineQueue;

public:
  static TCB *get();
  static void put(TCB *ccb);
};

#endif