#include "../h/semaphore.hpp"
#include "../h/scheduler.hpp"
#include "../h/tcb.hpp"


void Sem::putBlock(TCB *tcb) { blockedQueue.addLast(tcb); }
TCB *Sem::getBlock() { return blockedQueue.removeFirst(); }

int Sem::block() {
  TCB *old = TCB::running;

  putBlock(old);
  // Scheduler::putSleep(old);

  TCB::running = Scheduler::get();

  TCB::contextSwitch(&old->context, &TCB::running->context);
  return 0;
}
void Sem::unblock() {
  TCB *blocked = getBlock();
  if (blocked != 0) {
    if (blocked->sleeping != 0)
      val++;
    blocked->sleeping = 0;
    blocked->timeout = 0;
    // Scheduler::put(blocked);
    Scheduler::putFirst(blocked);
  }
}
int Sem::wait() {
  TCB *old = TCB::running;

  if (--val < 0)
    putBlock(old);
  else
    Scheduler::put(old);
  TCB::running = Scheduler::get();

  TCB::contextSwitch(&old->context, &TCB::running->context);

  TCB *temp = TCB::getRunning();
  if (temp->timeout == 1) {
    temp->timeout = 0;
    return -1;
  }

  return 0;
}
int Sem::trywait() {
  if (--val < 0)
    return block();
  return 1;
}

int Sem::timedwait(time_t timeout) {
  if (timeout <= 0)
    return 0;
  TCB *old = TCB::running;

  if (--val < 0) {
    old->sleeping = timeout;
    putBlock(old);
  } else
    Scheduler::put(old);
  TCB::running = Scheduler::get();

  TCB::contextSwitch(&old->context, &TCB::running->context);
  TCB *temp = TCB::getRunning();
  if (temp->timeout == 2) {
    temp->timeout = 0;
    return -2;
  } else if (temp->timeout == 1) {
    temp->timeout = 0;
    return -1;
  }
  return 0;
}
int Sem::signal() {

  if (++val <= 0)
    unblock();

  return 0;
}
int Sem::close() {
  while (blockedQueue.getN() > 0) {
    TCB *thread = getBlock();
    Scheduler::put(thread);
  }
  return 0;
}

void Sem::wakeUp() {

  for (uint64 i = 0; i < blockedQueue.getN(); i++) {
    TCB *elem = blockedQueue.removeFirst();
    if (elem->sleeping == 1) {
      elem->sleeping = 0;
      elem->timeout = 2;
      Scheduler::put(elem);
    } else if (elem->sleeping > 1) {
      elem->sleeping--;
      blockedQueue.addLast(elem);
    } else
      blockedQueue.addLast(elem);
  }
}
void Sem::unblockAll() {
  for (uint64 i = 0; i < blockedQueue.getN(); i++) {
    TCB *blocked = getBlock();
    i--;
    if (blocked != 0) {
      blocked->sleeping = 0;
      blocked->timeout = 1;
      Scheduler::putFirst(blocked);
    }
  }
}