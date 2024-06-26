#include "../h/console.hpp"
#include "../h/tcb.hpp"

MyBuffer *MyConsole::in;
MyBuffer *MyConsole::out;

void MyConsole::putFromKeyboard(char c)
{
    in->put(c);
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
        if (*((char *)(CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT)
        {
            char c = MyConsole::getToConsole();
            (*(char*)CONSOLE_RX_DATA) = c;
        }
    }
}
void MyConsole::initConsole()
{
    TCB::createThread(writeToConsole);
}