#ifndef buff_hpp
#define buff_hpp

#include "../h/syscall_cpp.hpp"
class MyBuffer {
private:
    int cap;
    int *buffer;
    int head, tail;

    Semaphore* spaceAvailable;
    Semaphore* itemAvailable;
    Semaphore* mutexHead;
    Semaphore* mutexTail;

public:
    MyBuffer(int _cap);
    ~MyBuffer();

    void put(int val);
    int get();

    int getCnt();
};


#endif 
