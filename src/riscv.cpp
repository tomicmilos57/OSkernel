#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/tcb.hpp"

void Riscv::popSppSpie() {
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}


void Riscv::handleSupervisorTrap() {
    uint64 scause = r_scause();
    if(scause == 0x0000000000000009UL){ //ecall
        uint64 sepc = r_sepc() + 4; //ecall return to its address
        uint64 sstatus = r_sstatus();
        TCB::timeSLiceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL) { //interrupt, supervisor software interrupt (timer)
        TCB::timeSLiceCounter++;
        if(TCB::timeSLiceCounter >= TCB::running->getTimeSlice()) {
            uint64 sepc = r_sepc();
            uint64 sstatus = r_sstatus();
            TCB::timeSLiceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);

    }else if (scause == 0x8000000000000009UL){//interrupt, supervisor external interrupt (console)
        console_handler();
    }else{ //unexpected trap cause
        //print scause
        //print sepc
        //print stval
    }
}