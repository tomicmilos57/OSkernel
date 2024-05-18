#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/print.hpp"


void Riscv::popSppSpie() {
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap() {
    uint64 scause = r_scause();
    if (scause == 0x0000000000000009UL) { //ecall
        uint64 sepc = r_sepc() + 4; //ecall return to its address
        uint64 sstatus = r_sstatus();
        TCB::timeSLiceCounter = 0;
        if(TCB::running->sleeping > 0) TCB::dispatchSleep();
        else TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if (scause == 0x8000000000000001UL) { //interrupt, supervisor software interrupt (timer)
        TCB::timeSLiceCounter++;
        for (uint64 i = 0; i < Scheduler::getNumOfSleep(); i++)//This won't work if Scheduler is not queue
        { // change from int i to uint64 i
            TCB *elem = Scheduler::getSleep();
            elem->sleeping--;
            if (elem->sleeping > 0)Scheduler::putSleep(elem);
            else Scheduler::put(elem);
        }

        if (TCB::timeSLiceCounter >= TCB::running->getTimeSlice()) {
            uint64 sepc = r_sepc();
            uint64 sstatus = r_sstatus();
            TCB::timeSLiceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);

    } else if (scause == 0x8000000000000009UL) {//interrupt, supervisor external interrupt (console)
        console_handler();
    } else { //unexpected trap cause
        /*printString("Unexpected trap cause\n");
        //print scause
        printString("Scause: ");
        printInteger(r_scause());
        printString("\n");
        //print sepc
        printString("Sepc: ");
        printInteger(r_sepc());
        printString("\n");
        //print stval
        printString("Stval: ");
        printInteger(r_stval());
        printString("\n");*/
    }
}