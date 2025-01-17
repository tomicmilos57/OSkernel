#include "../h/print.hpp"
#include "../h/console.hpp"
#include "../h/riscv.hpp"

void SprintString(const char *string) {
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0') {
        MyConsole::__putc(*string);
        string++;
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}

void SprintInteger(uint64 in) {
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    static char digits[] = "0123456789";
    char buf[16];
    int i;
    int neg = 0;
    long long integer = (long long) in;
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
        MyConsole::__putc(buf[i]);
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}
void SprintLine(char const *string, uint64 integer){
    SprintString(string);
    SprintInteger(integer);
    SprintString("\n");
}



void UprintString(const char *string) {
    while (*string != '\0') {
        MyConsole::__putc(*string);
        string++;
    }
}

void UprintInteger(uint64 in) {
    static char digits[] = "0123456789";
    char buf[16];
    int i;
    int neg = 0;
    uint x;
    long long integer = (long long) in;
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
        MyConsole::__putc(buf[i]);
}
void UprintLine(char const *string, uint64 integer){
    UprintString(string);
    UprintInteger(integer);
    UprintString("\n");
}