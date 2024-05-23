#include "../h/syscall_cpp.hpp"
#include "../lib/mem.h"
void *operator new(size_t n) { return __mem_alloc(n); }
void *operator new[](size_t n) { return __mem_alloc(n); }
void operator delete(void *n) { __mem_free(n); }
void operator delete[](void *n) { __mem_free(n); }
Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg) {}
Thread::Thread()
{
    this->body = nullptr;
    this->arg = nullptr;
}
int Thread::start()
{
    if(body == nullptr) return thread_create(&myHandle, myRun, this);
    return thread_create(&myHandle, body, arg);
}
void Thread::dispatch() { thread_dispatch(); }
int Thread::sleep(time_t time) { return time_sleep(time); }
Thread::~Thread() {} // delete

Semaphore::Semaphore(unsigned init) { sem_open(&myHandle, init); }
Semaphore::~Semaphore() { sem_close(myHandle); }
int Semaphore::wait() { return sem_wait(myHandle); }
int Semaphore::signal() { return sem_signal(myHandle); }

char Console::getc() { return getc(); }
void Console::putc(char c) { putc(c); }