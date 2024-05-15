#ifndef cbb_hpp
#define cbb_hpp
#include "../lib/hw.h"
#include "scheduler.hpp"
// Vezbe 7

class CCB {
public:
  using Body = void (*)();
  static CCB *createCoroutine(Body body);
  bool isFinished() const { return finished; }
  void setFinished(bool f) { CCB::finished = f; }
  static void yield();
  ~CCB() { delete[] stack; }
  static CCB *running;

private:
  CCB(Body body)
      : body(body), stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
        context({body != nullptr ? (uint64)body : 0,
                 stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0}),
        finished(false) {
    if (body != nullptr) {
      Scheduler::put(this);
    }
  }

  struct Context {
    uint64 ra;
    uint64 sp;
  };
  Body body;
  uint64 *stack;
  Context context;
  bool finished;
  static void dispatch();
  static void contextSwitch(Context *, Context *);
  static uint64 constexpr STACK_SIZE = 1024;
};

#endif