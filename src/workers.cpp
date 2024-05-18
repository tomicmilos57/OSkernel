
#include "../h/workers.hpp"
#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../lib/hw.h"

static uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) {
        return n;
    }
    if (n % 10 == 0)
        TCB::yield();
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA() {
    TCB::time_sleep(50);
    for (uint64 i = 0; i < 10; i++) {
        printString("A: i=");
        printInteger(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; ++j) {
            for (uint64 k = 0; k < 30000; ++k) {

            }
        }
    }
}

void workerBodyB() {
    TCB::time_sleep(100);
    for (uint64 i = 0; i < 16; i++) {
        printString("B: i=");
        printInteger(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; ++j) {
            for (uint64 k = 0; k < 30000; ++k) {

            }
        }
    }
}

void test() {
    printString("C: TEST INSIDE\n");
}

void workerBodyC() {
    TCB::time_sleep(150);
    uint8 i = 0;
    for (; i < 3; i++) {
        printString("C: i=");
        printInteger(i);
        printString("\n");
    }
    printString("C: yield\n");
    __asm__("li t1, 7");
    TCB::yield();
    uint64 t1 = 0;
    __asm__("mv %[t1], t1" : [t1] "=r"(t1));
    printString("C: t1=");
    printInteger(t1);
    printString("\n");
    //printString("C: EXITING\n");
    //TCB::thread_exit();
    printString("C: TEST BEFORE\n");
    //TCB::time_sleep(50);
    TCB *testtcb = TCB::createThread(test);
    //TCB::time_sleep(100);
    printString("C: TEST RIGHT AFTER\n");
    while (!testtcb->isFinished()) {
        TCB::yield();
    }
    //TCB::time_sleep(100);
    printString("C: TEST AFTER AFTER\n");
    uint64 result = fibonacci(12);
    printString("C: fibonaci=");
    printInteger(result);
    printString("\n");
    for (; i < 6; i++) {
        printString("C: i=");
        printInteger(i);
        printString("\n");
    }

}

void workerBodyD() {
    TCB::time_sleep(200);
    uint8 i = 10;
    for (; i < 13; i++) {
        printString("D: i=");
        printInteger(i);
        printString("\n");
    }
    printString("D: yield\n");
    __asm__("li t1, 5");
    TCB::yield();

    uint64 result = fibonacci(16);
    printString("D: fibonaci=");
    printInteger(result);
    printString("\n");
    for (; i < 16; i++) {
        printString("D: i=");
        printInteger(i);
        printString("\n");
    }
}