#ifndef cbb_hpp
#define cbb_hpp

#include "../lib/hw.h"
#include "scheduler.hpp"
// Vezbe 7

class TCB {
private:
    using Body = void (*)();
    struct Context {
        uint64 ra;
        uint64 sp;
    };
    Body body;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    bool finished;
    uint64 sleeping = 0;

    static uint64 timeSLiceCounter;
    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
public:
    //using Body = void (*)();

    static TCB *createThread(Body body);
    static TCB *createIdleThread(Body body);

    bool isFinished() const { return finished; }
    void setFinished(bool f) { TCB::finished = f; }
    uint64 getTimeSlice() const { return timeSlice; }
    static void thread_exit();
    static int time_sleep (time_t);
    static void dispatch();
    static void dispatchSleep();
    static void yield();

    ~TCB() { delete[] stack; }

    static TCB *running;

private:
    TCB(Body body, uint64 timeSlice)
            : body(body), stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
              context({(uint64) &threadWrapper,
                       stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
              timeSlice(timeSlice),
              finished(false) {
        if (body != nullptr) {
            Scheduler::put(this);
        }
    }
    TCB(Body body, uint64 timeSlice, bool put)
            : body(body), stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
              context({(uint64) &threadWrapper,
                       stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
              timeSlice(timeSlice),
              finished(false) {}
    friend class Riscv;
    friend class Semaphore;
    static void threadWrapper();
    static void contextSwitch(Context *, Context *);
};

#endif