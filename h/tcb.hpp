#ifndef cbb_hpp
#define cbb_hpp

#include "../lib/hw.h"
#include "scheduler.hpp"
// Vezbe 7

class TCB
{
public:
    using Body = void (*)();
    using Bodyarg = void (*)(void *);
    int timeout = 0;

private:
    struct Context
    {
        uint64 ra;
        uint64 sp;
    };
    Body body;
    Bodyarg bodyarg;

    uint64 *stack;
    Context context;
    void *arg;
    uint64 timeSlice;
    bool finished;
    uint64 sleeping = 0;

    static uint64 timeSLiceCounter;
    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;

public:
    // using Body = void (*)();

    static TCB *createThread(Body body);
    static TCB *createThread(Bodyarg body, void *arg);
    static TCB *createIdleThread(Body body);
    static TCB *createSuperThread(Body body);

    bool isFinished() const { return finished; }
    void setFinished(bool f) { TCB::finished = f; }
    uint64 getTimeSlice() const { return timeSlice; }
    static void thread_exit();
    static int time_sleep(time_t);
    static void dispatch();
    static void dispatchSleep();
    static void yield();
    static TCB *getRunning();
    ~TCB() { delete[] stack; }

    static TCB *running;

private:
    TCB(Body body, uint64 timeSlice)
        : body(body), stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
          context({(uint64)&threadWrapper,
                   stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0}),
          timeSlice(timeSlice),
          finished(false)
    {
        if (body != nullptr)
        {
            Scheduler::put(this);
        }
    }
    TCB(Bodyarg bodyl, void *argg, uint64 timeSlice)
        : bodyarg(bodyl), stack(bodyl != nullptr ? new uint64[STACK_SIZE] : nullptr),
          context({(uint64)&threadWrapperarg,
                   stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0}),
          arg(argg),
          timeSlice(timeSlice),
          finished(false)
    {
        if (bodyl != nullptr)
        {
            Scheduler::put(this);
        }
    }
    TCB(Body body, uint64 timeSlice, bool put)
        : body(body), stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
          context({(uint64)&threadWrapper,
                   stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0}),
          timeSlice(timeSlice),
          finished(false) {}
    TCB(Body body, uint64 timeSlice, char c)
        : body(body), stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
          context({(uint64)&threadWrapperSuper,
                   stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0}),
          timeSlice(timeSlice),
          finished(false)
    {
        if (body != nullptr)
        {
            Scheduler::put(this);
        }
    }
    friend class Riscv;
    friend class Sem;
    static void threadWrapper();
    static void threadWrapperarg();
    static void threadWrapperSuper();
    static void contextSwitch(Context *, Context *);
};

#endif