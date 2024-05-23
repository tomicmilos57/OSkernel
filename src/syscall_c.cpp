#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#define ECALL __asm__ volatile("ecall");
#define a0(x) __asm__ volatile("mv a0, %0" : : "r" (x));
#define a1(x) __asm__ volatile("mv a1, %0" : : "r" (x));
#define a2(x) __asm__ volatile("mv a2, %0" : : "r" (x));
#define a3(x) __asm__ volatile("mv a3, %0" : : "r" (x));
#define a4(x) __asm__ volatile("mv a4, %0" : : "r" (x));
#define RET Riscv::read_ret();
void* mem_alloc(size_t size){
    if(size == 0) return nullptr;
    a0(MEM_ALLOC)
    a1((uint64)size);
    ECALL
    return (void*)RET
}
int mem_free(void *arg){
    a0(MEM_FREE)
    a1((uint64)arg)
    ECALL
    return (int)RET
}

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    a0(THREAD_CREATE)
    a1((uint64)handle)
    a2((uint64)start_routine)
    a3((uint64)arg)
    //a4?
    ECALL
    return (int)RET
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

int sem_open (sem_t* handle, unsigned init){
    a0(SEM_OPEN)
    a1((uint64)handle)
    a2((uint64)init)
    ECALL
    return RET
}
int sem_close (sem_t handle){
    a0(SEM_CLOSE)
    a1((uint64)handle)
    ECALL
    return RET
}
int sem_wait (sem_t id){
    a0(SEM_WAIT)
    a1((uint64)id)
    ECALL
    return RET
}
int sem_signal (sem_t id){
    a0(SEM_SIGNAL)
    a1((uint64)id)
    ECALL
    return RET
}

int sem_timedwait(sem_t id, time_t timeout){
    a0(SEM_TIMEDWAIT)
    a1((uint64) id)
    a2((uint64) timeout)
    ECALL
    return RET
}
int sem_trywait(sem_t id){
    a0(SEM_TRYWAIT)
    a1((uint64) id)
    ECALL
    return RET
}
int time_sleep (time_t time){
    a0(TIME_SLEEP)
    a1((uint64)time)
    ECALL
    return RET
}
char getc (){
    a0(GETC)
    return RET
}
void putc (char c){
    a0(PUTC)
    a1(c)
    ECALL
} 