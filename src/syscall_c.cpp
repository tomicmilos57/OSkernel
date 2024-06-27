#include "../h/syscall_c.h"
#include "../h/riscv.hpp"
#include "../h/memory.hpp"
#define ECALL __asm__ volatile("ecall");
#define a0(x) __asm__ volatile("mv a0, %0" : : "r" (x));
#define a1(x) __asm__ volatile("mv a1, %0" : : "r" (x));
#define a2(x) __asm__ volatile("mv a2, %0" : : "r" (x));
#define a3(x) __asm__ volatile("mv a3, %0" : : "r" (x));
#define a4(x) __asm__ volatile("mv a4, %0" : : "r" (x));
#define RET Riscv::read_ret();
#include "../h/print.hpp"
#include "../h/console.hpp"
void* mem_alloc(size_t size){
    if(size == 0) return nullptr;
    if(Riscv::S) return malloc(size);
    a1((uint64)size)
    a0(MEM_ALLOC)
    ECALL
    return (void*)RET
}
int mem_free(void *arg){
    if(Riscv::S) return free(arg);
    a1((uint64)arg)
    a0(MEM_FREE)
    ECALL
    return (int)RET
}

int thread_create (thread_t* handle, void (*start_routine)(void*), void* arg){//TODO stack_space argument missing
    //UprintLine("\nSyscall cpp arg ptr: ", (uint64)arg);
    a3((uint64)arg)
    a2((uint64)start_routine)
    a1((uint64)handle)
    a0(THREAD_CREATE)
    ECALL
    void* r = (void*)RET
    //UprintLine("VAN: ", (uint64)*start_routine);
    if(r == nullptr) return -1;
    return 0;
}
int thread_exit (){
    a0(THREAD_EXIT)
    ECALL
    return (int)RET
}

void thread_dispatch (){
    a0(THREAD_DISPATCH)
    ECALL
}

int sem_open (sem_t* volatile handle, unsigned volatile init){
    a0(SEM_OPEN)
    a1((uint64)handle)
    a2((uint64)init)
    ECALL
    return RET
}
int sem_close (sem_t volatile handle){
    a0(SEM_CLOSE)
    a1((uint64)handle)
    ECALL
    return RET
}
int sem_wait (sem_t volatile id){
    a0(SEM_WAIT)
    a1((uint64)id)
    ECALL
    return RET
}
int sem_signal (sem_t volatile id){
    a0(SEM_SIGNAL)
    a1((uint64)id)
    ECALL
    return RET
}

int sem_timedwait(sem_t volatile id, time_t volatile timeout){
    a0(SEM_TIMEDWAIT)// !!!!!!!!!!!!!!
    a1((uint64) id)
    a2((uint64) timeout)
    ECALL
    return RET
}
int sem_trywait(sem_t volatile id){
    a0(SEM_TRYWAIT)// !!!!!!!!!!!!!!
    a1((uint64) id)
    ECALL
    return RET
}
int time_sleep (time_t volatile time){
    a1((uint64)time) 
    a0(TIME_SLEEP)
    ECALL
    return RET
}
char getc (){
    a0(GETC)
    ECALL
    return (char)RET
}
void putc (char volatile c){
    a1((uint64)c)
    a0(PUTC)
    ECALL
} 