#ifndef Semaphore_hpp
#define Semaphore_hpp
#include "../lib/hw.h"
#include "../h/list.hpp"
class TCB;
class Semaphore{
private:
    int val;
    List<TCB> blockedQueue;
protected:
    void block();
    void unblock();
    void putBlock(TCB *tcb);
    TCB *getBlock();
public:
    Semaphore(int init = 1) : val(init) {}
    int value() const { return val; } //maybe unnecessary
    ~Semaphore() = default;
public:
    //int sem_open(int init);
    int close();
    void wait();
    void signal();
    //void timedwait(time_t timeout);//should be implemented in C API
    //int trywait(); C API
};


#endif