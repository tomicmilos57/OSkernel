#include "../h/console.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
MyBuffer *MyConsole::in;
MyBuffer *MyConsole::out;

void MyConsole::putFromKeyboard(char c)
{
    in->tryput(c);
}
char MyConsole::__getc()
{
    return in->get();
}

void MyConsole::__putc(char c)
{
    out->tryput(c);
}
char MyConsole::getToConsole()
{
    char c = out->tryget();
    return c;
}
#include "../h/riscv.hpp"
void writeToConsole()
{
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (1)
    {
        if (*((char *)(CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT)
        {
            char c = MyConsole::getToConsole();
            (*(char *)CONSOLE_TX_DATA) = c;
            // ::__putc(c);
        }
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}
void MyConsole::initConsole()
{
    in = new MyBuffer(4096);
    out = new MyBuffer(4096);
    TCB::createSuperThread(writeToConsole);
}