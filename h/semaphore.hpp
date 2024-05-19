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
    void sem_block();
    void sem_unblock();
    void putBlock(TCB *tcb);
    TCB *getBlock();
public:
    Semaphore(int init = 1) : val(init) {}
    int value() const { return val; } //maybe unnecessary
    ~Semaphore() = default;
public://uint64 insted of int?
    //int sem_open(int init);
    int sem_close();
    void sem_wait();
    void sem_signal();
    int sem_timedwait(time_t timeout);
    int sem_trywait();
};


#endif