#include "../h/print.hpp"
#include "../lib/console.h"
#include "../h/riscv.hpp"

void printString(const char *string) {
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0') {
        __putc(*string);
        string++;
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}

void printInteger(uint64 integer) {
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    static char digits[] = "0123456789";
    char buf[16];
    int i;
    int neg = 0;
    uint x;
    if (integer < 0) {
        neg = 1;
        x = -integer;
    } else {
        x = integer;
    }
    i = 0;
    do {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    if (neg)
        buf[i++] = '-';
    while (--i >= 0)
        __putc(buf[i]);
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}
void printLine(char const *string, uint64 integer){
    printString(string);
    printInteger(integer);
    printString("\n");
}