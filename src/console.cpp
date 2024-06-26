#include "../h/console.hpp"
#include "../h/tcb.hpp"

MyBuffer *MyConsole::in;
MyBuffer *MyConsole::out;

void MyConsole::putFromKeyboard(char c)
{
    if(in->getCnt() != 4096) in->put(c);
}
char MyConsole::__getc()
{
    return in->get();
}

void MyConsole::__putc(char c)
{
    out->put(c);
}
char MyConsole::getToConsole()
{
    return out->get();
}

void writeToConsole()
{
    while (1)
    {
        while (*((char *)(CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT)
        {
            char c = MyConsole::getToConsole();
            (*(char*)CONSOLE_TX_DATA) = c;
        }
    }
}
void MyConsole::initConsole()
{
    in = new MyBuffer(4096);
    out = new MyBuffer(4096);
    TCB::createThread(writeToConsole);
}