#include "../h/syscall_cpp.hpp"
#include "../lib/mem.h"
#include "../h/memory.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
void *operator new(size_t n) { 
        if(Riscv::S) return malloc(n);
        return mem_alloc(n);
    } 
void *operator new[](size_t n) { 
        if(Riscv::S) return malloc(n);
        return mem_alloc(n); 
    }
void operator delete(void *n) { 
        if(Riscv::S) {
            free(n);
            return;
        }
        mem_free(n); 
    }
void operator delete[](void *n) { 
        if(Riscv::S) {
            free(n);
            return;
        }
        mem_free(n); 
    }
Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg) {}
Thread::Thread()
{
    this->body = nullptr;
    this->arg = nullptr;
}
#include "../h/print.hpp"
int Thread::start()
{
    //UprintLine("Inside start with handle: ", (uint64) &myHandle);
    //UprintLine("Inside start with this ptr: ", (uint64) this);
    if(body == nullptr) return thread_create(&myHandle, myRun, (void*)this);
    return thread_create(&myHandle, body, arg);
}
void Thread::dispatch() { thread_dispatch(); }
int Thread::sleep(time_t time) { return time_sleep(time); }
Thread::~Thread() {} // delete

Semaphore::Semaphore(unsigned init) { sem_open(&myHandle, init); }
Semaphore::~Semaphore() { sem_close(myHandle); }
int Semaphore::wait() { return sem_wait(myHandle); }
int Semaphore::signal() { return sem_signal(myHandle); }
int Semaphore::timedWait(time_t time){ return sem_timedwait(myHandle, time); }
int Semaphore::tryWait(){ return sem_trywait(myHandle); }
char Console::getc() { return ::getc(); }
void Console::putc(char c) { ::putc(c); } //Potencijalno problem ako se syscall_c.cpp preimenuje u syscall_c.c

PeriodicThread::PeriodicThread(time_t period) : period(period) {}

void PeriodicThread::run(){
    while (period)
    {
        time_sleep(period);
        periodicActivation();
    }
    
}
void PeriodicThread::terminate(){
    period = 0;
}