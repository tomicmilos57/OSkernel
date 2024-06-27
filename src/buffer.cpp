#include "../h/buffer.hpp"
#include "../h/memory.hpp"
#include "../h/semaphore.hpp"
#include "../h/console.hpp"
MyBuffer::MyBuffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    buffer = (char *)malloc(sizeof(char) * cap);
    itemAvailable = new Sem(0);
    spaceAvailable = new Sem(_cap);
    mutexHead = new Sem(1);
    mutexTail = new Sem(1);
}

MyBuffer::~MyBuffer() {
    MyConsole::__putc('\n');
    // SprintString("Buffer deleted!\n");
    while (getCnt()) {
        char ch = buffer[head];  
        MyConsole::__putc(ch);
        head = (head + 1) % cap;
    }
    // MyConsole::__putc('!');
    // MyConsole::__putc('\n');

    free(buffer);
    delete itemAvailable;
    delete spaceAvailable;
    delete mutexTail;
    delete mutexHead;

}

void MyBuffer::tryput(char val) {
    spaceAvailable->trywait();

    // mutexTail->trywait();
    buffer[tail] = val;
    tail = (tail + 1) % cap;
    // mutexTail->signal();

    itemAvailable->signal();
}

void MyBuffer::put(char volatile val) {
    spaceAvailable->wait();

    // mutexTail->wait();
    
    buffer[tail] = val;
    tail = (tail + 1) % cap;
    // mutexTail->signal();

    itemAvailable->signal();
}
char MyBuffer::tryget(){
    itemAvailable->trywait();

    // mutexHead->trywait();

    char ret = buffer[head];
    head = (head + 1) % cap;
    // mutexHead->signal();

    spaceAvailable->signal();
    return ret;
}
char MyBuffer::get() {
    itemAvailable->wait();

    // mutexHead->wait();

    char ret = buffer[head];
    head = (head + 1) % cap;
    // mutexHead->signal();

    spaceAvailable->signal();
    return ret;
}

int MyBuffer::getCnt() {
    int ret;

    // mutexHead->wait();
    // mutexTail->wait();

    if (tail >= head) {
        ret = tail - head;
    } else {
        ret = cap - head + tail;
    }

    // mutexTail->signal();
    // mutexHead->signal();
    return ret;
}
