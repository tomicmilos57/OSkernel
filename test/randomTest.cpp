#include "moj_Test.hpp"
#include "../h/syscall_cpp.hpp"
#include "printing.hpp"

#define NUM 10
void randomTest(){
    printString("Test9\n");
    sem_t arr[NUM];
    for (int i = 0; i < NUM; i++)
    {
        sem_open(&arr[i], 1);
    }
    for (int i = NUM-1; i >= 0; i--)
    {
        sem_close(arr[i]);
    }
    sem_t sem;
    sem_open(&sem, 0);

    sem_timedwait(sem, 10);
    printString("GG\n");
}