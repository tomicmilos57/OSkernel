#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"

TCB *TCB::running = nullptr;
uint64 TCB::timeSLiceCounter = 0;

TCB *TCB::createThread(Body body) { return new TCB(body, TIME_SLICE); }

void TCB::yield() {
    __asm__ volatile("ecall");
};

void TCB::dispatch() {
    TCB *old = running;
    if (!old->isFinished()) {
        Scheduler::put(old);
    }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}
void TCB::dispatchSleep() {
    TCB *old = running;

    Scheduler::putSleep(old);

    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}
void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body();
    running->setFinished(true);
    TCB::yield();
}

void TCB::thread_exit(){
    running->setFinished(true); // Also can running = Scheduler::get(); TCB::contextSwitch...;
    TCB::yield();
}
#include "../h/print.hpp"
#include "../h/riscv.hpp"
int TCB::time_sleep (time_t t){
    running->sleeping = t;
    TCB::yield();
    return 0;
}