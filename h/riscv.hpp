#ifndef riscv_hpp
#define riscv_hpp
#include "../lib/hw.h"
// Vezbe 7

class Riscv {
public:
  static void pushRegisters();
  static void popRegisters();
  ;
  // read register scause
  static uint64 r_scause();

  // write register scause
  static void w_scause(uint64 scause);

  // read registre sepc
  static uint64 r_sepc();

  // write register sepc
  static void w_sepc(uint64 sepc);

  // read registre stvec
  static uint64 r_stvec();

  // write register stvec
  static void w_stvec(uint64 stvec);

  // read registre stval
  static uint64 r_stval();

  // write register stval
  static void w_stval(uint64 stval);

  enum BitMaskSip {
    SIP_SSIE = (1 << 1),
    SIP_STIE = (1 << 5),
    SIP_SEIE = (1 << 9),
  };
  // mask set register sstatus
  static void ms_sstatus(uint64 mask);

  // mask clear register sstatus
  static void mc_sstatus(uint64 mask);

  // read register sstatus
  static uint64 r_sstatus();

  // wrute register sstatus
  static uint64 w_sstatus(uint64 sstatus);
};

inline uint64 Riscv::r_scause() {
  uint64 volatile scause;
  __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
  return scause;
}
inline void Riscv::w_scause(uint64 scause) {
  __asm__ volatile("csrw scause, %[scause]" : : [scause] "r"(scause));
}
inline uint64 Riscv::r_sepc() {
  uint64 volatile sepc;
  __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
  return sepc;
}
#endif