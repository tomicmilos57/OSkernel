#ifndef Semaphore_hpp
#define Semaphore_hpp
#include "../lib/hw.h"
#include "../h/list.hpp"
class TCB;
class Sem{
private:
    int val;
    List<TCB> blockedQueue;
protected:
    void block();
    void unblock();
    void putBlock(TCB *tcb);
    TCB *getBlock();
public:
    Sem(int init = 1) : val(init) {}
    int value() const { return val; } //maybe unnecessary
    ~Sem() = default;
    //TCB* current;
    //int sem_open(int init);
    int close();
    int wait();
    int signal();
    int timedwait(time_t timeout);
    int trywait();
    void wakeUp();
    void unblockAll();
};


#endif