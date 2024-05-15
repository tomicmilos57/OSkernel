#ifndef scheduler_hpp
#define scheduler_hpp
#include "list.hpp"
// Vezbe 7

class CCB;

class Scheduler {
private:
  static List<CCB> readyCoroutineQueue;

public:
  static CCB *get();
  static void put(CCB *ccb);
};

#endif