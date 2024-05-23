
#include "../h/workers.hpp"
#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../lib/hw.h"
#include "../h/syscall_c.h"


void myMain(){
    getc();
    //time_sleep(50);
    thread_exit();
    void* ptr = mem_alloc(51);
    UprintLine("Pointer returned: ", (uint64)ptr);
    //mem_free(ptr);
    UprintLine("Uspesno: ", mem_free(ptr));
}




static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) {
        return n;
    }
    if (n % 10 == 0)
        TCB::yield();
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA() {
    //TCB::time_sleep(50);
    for (uint64 i = 0; i < 10; i++) {
        UprintString("A: i=");
        UprintInteger(i);
        UprintString("\n");
        for (uint64 j = 0; j < 10000; ++j) {
            for (uint64 k = 0; k < 30000; ++k) {

            }
        }
    }
}

void workerBodyB() {
    //TCB::time_sleep(100);
    for (uint64 i = 0; i < 16; i++) {
        UprintString("B: i=");
        UprintInteger(i);
        UprintString("\n");
        for (uint64 j = 0; j < 10000; ++j) {
            for (uint64 k = 0; k < 30000; ++k) {

            }
        }
    }
}

void test() {
    UprintString("C: TEST INSIDE\n");
}

void workerBodyC() {
    //TCB::time_sleep(150);
    uint8 i = 0;
    for (; i < 3; i++) {
        UprintString("C: i=");
        UprintInteger(i);
        UprintString("\n");
    }
    UprintString("C: yield\n");
    __asm__("li t1, 7");
    TCB::yield();
    uint64 t1 = 0;
    __asm__("mv %[t1], t1" : [t1] "=r"(t1));
    UprintString("C: t1=");
    UprintInteger(t1);
    UprintString("\n");
    //printString("C: EXITING\n");
    //TCB::thread_exit();
    UprintString("C: TEST BEFORE\n");
    //TCB::time_sleep(50);
    TCB *testtcb = TCB::createThread(test);
    //TCB::time_sleep(100);
    UprintString("C: TEST RIGHT AFTER\n");
    while (!testtcb->isFinished()) {
        TCB::yield();
    }
    //TCB::time_sleep(100);
    UprintString("C: TEST AFTER AFTER\n");
    uint64 result = fibonacci(12);
    UprintString("C: fibonaci=");
    UprintInteger(result);
    UprintString("\n");
    for (; i < 6; i++) {
        UprintString("C: i=");
        UprintInteger(i);
        UprintString("\n");
    }

}

void workerBodyD() {
    //TCB::time_sleep(200);
    uint8 i = 10;
    for (; i < 13; i++) {
        UprintString("D: i=");
        UprintInteger(i);
        UprintString("\n");
    }
    UprintString("D: yield\n");
    __asm__("li t1, 5");
    TCB::yield();

    uint64 result = fibonacci(16);
    UprintString("D: fibonaci=");
    UprintInteger(result);
    UprintString("\n");
    for (; i < 16; i++) {
        UprintString("D: i=");
        UprintInteger(i);
        UprintString("\n");
    }
}