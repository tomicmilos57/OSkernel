
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	5f813103          	ld	sp,1528(sp) # 800045f8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	101010ef          	jal	ra,8000191c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3CCB13contextSwitchEPNS_7ContextES1_
.type _ZN3CCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3CCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001000:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001004:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001008:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000100c:	0085b103          	ld	sp,8(a1)
    80001010:	00008067          	ret

0000000080001014 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001014:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001018:	00313c23          	sd	gp,24(sp)
    8000101c:	02413023          	sd	tp,32(sp)
    80001020:	02513423          	sd	t0,40(sp)
    80001024:	02613823          	sd	t1,48(sp)
    80001028:	02713c23          	sd	t2,56(sp)
    8000102c:	04813023          	sd	s0,64(sp)
    80001030:	04913423          	sd	s1,72(sp)
    80001034:	04a13823          	sd	a0,80(sp)
    80001038:	04b13c23          	sd	a1,88(sp)
    8000103c:	06c13023          	sd	a2,96(sp)
    80001040:	06d13423          	sd	a3,104(sp)
    80001044:	06e13823          	sd	a4,112(sp)
    80001048:	06f13c23          	sd	a5,120(sp)
    8000104c:	09013023          	sd	a6,128(sp)
    80001050:	09113423          	sd	a7,136(sp)
    80001054:	09213823          	sd	s2,144(sp)
    80001058:	09313c23          	sd	s3,152(sp)
    8000105c:	0b413023          	sd	s4,160(sp)
    80001060:	0b513423          	sd	s5,168(sp)
    80001064:	0b613823          	sd	s6,176(sp)
    80001068:	0b713c23          	sd	s7,184(sp)
    8000106c:	0d813023          	sd	s8,192(sp)
    80001070:	0d913423          	sd	s9,200(sp)
    80001074:	0da13823          	sd	s10,208(sp)
    80001078:	0db13c23          	sd	s11,216(sp)
    8000107c:	0fc13023          	sd	t3,224(sp)
    80001080:	0fd13423          	sd	t4,232(sp)
    80001084:	0fe13823          	sd	t5,240(sp)
    80001088:	0ff13c23          	sd	t6,248(sp)
    ret
    8000108c:	00008067          	ret

0000000080001090 <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001090:	01813183          	ld	gp,24(sp)
    80001094:	02013203          	ld	tp,32(sp)
    80001098:	02813283          	ld	t0,40(sp)
    8000109c:	03013303          	ld	t1,48(sp)
    800010a0:	03813383          	ld	t2,56(sp)
    800010a4:	04013403          	ld	s0,64(sp)
    800010a8:	04813483          	ld	s1,72(sp)
    800010ac:	05013503          	ld	a0,80(sp)
    800010b0:	05813583          	ld	a1,88(sp)
    800010b4:	06013603          	ld	a2,96(sp)
    800010b8:	06813683          	ld	a3,104(sp)
    800010bc:	07013703          	ld	a4,112(sp)
    800010c0:	07813783          	ld	a5,120(sp)
    800010c4:	08013803          	ld	a6,128(sp)
    800010c8:	08813883          	ld	a7,136(sp)
    800010cc:	09013903          	ld	s2,144(sp)
    800010d0:	09813983          	ld	s3,152(sp)
    800010d4:	0a013a03          	ld	s4,160(sp)
    800010d8:	0a813a83          	ld	s5,168(sp)
    800010dc:	0b013b03          	ld	s6,176(sp)
    800010e0:	0b813b83          	ld	s7,184(sp)
    800010e4:	0c013c03          	ld	s8,192(sp)
    800010e8:	0c813c83          	ld	s9,200(sp)
    800010ec:	0d013d03          	ld	s10,208(sp)
    800010f0:	0d813d83          	ld	s11,216(sp)
    800010f4:	0e013e03          	ld	t3,224(sp)
    800010f8:	0e813e83          	ld	t4,232(sp)
    800010fc:	0f013f03          	ld	t5,240(sp)
    80001100:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001104:	10010113          	addi	sp,sp,256
    80001108:	00008067          	ret

000000008000110c <_ZN3CCB15createCoroutineEPFvvE>:
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"

CCB *CCB::running = nullptr;

CCB *CCB::createCoroutine(Body body) { return new CCB(body); }
    8000110c:	fe010113          	addi	sp,sp,-32
    80001110:	00113c23          	sd	ra,24(sp)
    80001114:	00813823          	sd	s0,16(sp)
    80001118:	00913423          	sd	s1,8(sp)
    8000111c:	01213023          	sd	s2,0(sp)
    80001120:	02010413          	addi	s0,sp,32
    80001124:	00050913          	mv	s2,a0
    80001128:	02800513          	li	a0,40
    8000112c:	00000097          	auipc	ra,0x0
    80001130:	578080e7          	jalr	1400(ra) # 800016a4 <_Znwm>
    80001134:	00050493          	mv	s1,a0
private:
  CCB(Body body)
      : body(body), stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
        context({body != nullptr ? (uint64)body : 0,
                 stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0}),
        finished(false) {
    80001138:	01253023          	sd	s2,0(a0)
      : body(body), stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    8000113c:	00090a63          	beqz	s2,80001150 <_ZN3CCB15createCoroutineEPFvvE+0x44>
    80001140:	00002537          	lui	a0,0x2
    80001144:	00000097          	auipc	ra,0x0
    80001148:	588080e7          	jalr	1416(ra) # 800016cc <_Znam>
    8000114c:	0080006f          	j	80001154 <_ZN3CCB15createCoroutineEPFvvE+0x48>
    80001150:	00000513          	li	a0,0
        finished(false) {
    80001154:	00a4b423          	sd	a0,8(s1)
        context({body != nullptr ? (uint64)body : 0,
    80001158:	02090a63          	beqz	s2,8000118c <_ZN3CCB15createCoroutineEPFvvE+0x80>
    8000115c:	00090793          	mv	a5,s2
        finished(false) {
    80001160:	00f4b823          	sd	a5,16(s1)
                 stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0}),
    80001164:	02050863          	beqz	a0,80001194 <_ZN3CCB15createCoroutineEPFvvE+0x88>
    80001168:	000027b7          	lui	a5,0x2
    8000116c:	00f50533          	add	a0,a0,a5
        finished(false) {
    80001170:	00a4bc23          	sd	a0,24(s1)
    80001174:	02048023          	sb	zero,32(s1)
    if (body != nullptr) {
    80001178:	04090063          	beqz	s2,800011b8 <_ZN3CCB15createCoroutineEPFvvE+0xac>
      Scheduler::put(this);
    8000117c:	00048513          	mv	a0,s1
    80001180:	00000097          	auipc	ra,0x0
    80001184:	19c080e7          	jalr	412(ra) # 8000131c <_ZN9Scheduler3putEP3CCB>
    80001188:	0300006f          	j	800011b8 <_ZN3CCB15createCoroutineEPFvvE+0xac>
        context({body != nullptr ? (uint64)body : 0,
    8000118c:	00000793          	li	a5,0
    80001190:	fd1ff06f          	j	80001160 <_ZN3CCB15createCoroutineEPFvvE+0x54>
                 stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0}),
    80001194:	00000513          	li	a0,0
    80001198:	fd9ff06f          	j	80001170 <_ZN3CCB15createCoroutineEPFvvE+0x64>
    8000119c:	00050913          	mv	s2,a0
    800011a0:	00048513          	mv	a0,s1
    800011a4:	00000097          	auipc	ra,0x0
    800011a8:	550080e7          	jalr	1360(ra) # 800016f4 <_ZdlPv>
    800011ac:	00090513          	mv	a0,s2
    800011b0:	00004097          	auipc	ra,0x4
    800011b4:	5b8080e7          	jalr	1464(ra) # 80005768 <_Unwind_Resume>
    800011b8:	00048513          	mv	a0,s1
    800011bc:	01813083          	ld	ra,24(sp)
    800011c0:	01013403          	ld	s0,16(sp)
    800011c4:	00813483          	ld	s1,8(sp)
    800011c8:	00013903          	ld	s2,0(sp)
    800011cc:	02010113          	addi	sp,sp,32
    800011d0:	00008067          	ret

00000000800011d4 <_ZN3CCB8dispatchEv>:
  Riscv::pushRegisters();
  CCB::dispatch();
  Riscv::popRegisters();
};

void CCB::dispatch() {
    800011d4:	fe010113          	addi	sp,sp,-32
    800011d8:	00113c23          	sd	ra,24(sp)
    800011dc:	00813823          	sd	s0,16(sp)
    800011e0:	00913423          	sd	s1,8(sp)
    800011e4:	02010413          	addi	s0,sp,32
  CCB *old = running;
    800011e8:	00003497          	auipc	s1,0x3
    800011ec:	4684b483          	ld	s1,1128(s1) # 80004650 <_ZN3CCB7runningE>
  bool isFinished() const { return finished; }
    800011f0:	0204c783          	lbu	a5,32(s1)
  if (!old->isFinished()) {
    800011f4:	02078c63          	beqz	a5,8000122c <_ZN3CCB8dispatchEv+0x58>
    Scheduler::put(old);
  }
  running = Scheduler::get();
    800011f8:	00000097          	auipc	ra,0x0
    800011fc:	0bc080e7          	jalr	188(ra) # 800012b4 <_ZN9Scheduler3getEv>
    80001200:	00003797          	auipc	a5,0x3
    80001204:	44a7b823          	sd	a0,1104(a5) # 80004650 <_ZN3CCB7runningE>

  CCB::contextSwitch(&old->context, &running->context);
    80001208:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    8000120c:	01048513          	addi	a0,s1,16
    80001210:	00000097          	auipc	ra,0x0
    80001214:	df0080e7          	jalr	-528(ra) # 80001000 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
    80001218:	01813083          	ld	ra,24(sp)
    8000121c:	01013403          	ld	s0,16(sp)
    80001220:	00813483          	ld	s1,8(sp)
    80001224:	02010113          	addi	sp,sp,32
    80001228:	00008067          	ret
    Scheduler::put(old);
    8000122c:	00048513          	mv	a0,s1
    80001230:	00000097          	auipc	ra,0x0
    80001234:	0ec080e7          	jalr	236(ra) # 8000131c <_ZN9Scheduler3putEP3CCB>
    80001238:	fc1ff06f          	j	800011f8 <_ZN3CCB8dispatchEv+0x24>

000000008000123c <_ZN3CCB5yieldEv>:
void CCB::yield() {
    8000123c:	ff010113          	addi	sp,sp,-16
    80001240:	00113423          	sd	ra,8(sp)
    80001244:	00813023          	sd	s0,0(sp)
    80001248:	01010413          	addi	s0,sp,16
  Riscv::pushRegisters();
    8000124c:	00000097          	auipc	ra,0x0
    80001250:	dc8080e7          	jalr	-568(ra) # 80001014 <_ZN5Riscv13pushRegistersEv>
  CCB::dispatch();
    80001254:	00000097          	auipc	ra,0x0
    80001258:	f80080e7          	jalr	-128(ra) # 800011d4 <_ZN3CCB8dispatchEv>
  Riscv::popRegisters();
    8000125c:	00000097          	auipc	ra,0x0
    80001260:	e34080e7          	jalr	-460(ra) # 80001090 <_ZN5Riscv12popRegistersEv>
};
    80001264:	00813083          	ld	ra,8(sp)
    80001268:	00013403          	ld	s0,0(sp)
    8000126c:	01010113          	addi	sp,sp,16
    80001270:	00008067          	ret

0000000080001274 <_Z41__static_initialization_and_destruction_0ii>:
#include "../h/scheduler.hpp"

List<CCB> Scheduler::readyCoroutineQueue;

CCB *Scheduler::get() { return readyCoroutineQueue.removeFirst(); }
    80001274:	ff010113          	addi	sp,sp,-16
    80001278:	00813423          	sd	s0,8(sp)
    8000127c:	01010413          	addi	s0,sp,16
    80001280:	00100793          	li	a5,1
    80001284:	00f50863          	beq	a0,a5,80001294 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001288:	00813403          	ld	s0,8(sp)
    8000128c:	01010113          	addi	sp,sp,16
    80001290:	00008067          	ret
    80001294:	000107b7          	lui	a5,0x10
    80001298:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000129c:	fef596e3          	bne	a1,a5,80001288 <_Z41__static_initialization_and_destruction_0ii+0x14>
    Elem(T *data, Elem *next) : data(data), next(next) {}
  };
  Elem *head, *tail;

public:
  List() : head(0), tail(0) {}
    800012a0:	00003797          	auipc	a5,0x3
    800012a4:	3f078793          	addi	a5,a5,1008 # 80004690 <_ZN9Scheduler19readyCoroutineQueueE>
    800012a8:	0007b023          	sd	zero,0(a5)
    800012ac:	0007b423          	sd	zero,8(a5)
    800012b0:	fd9ff06f          	j	80001288 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800012b4 <_ZN9Scheduler3getEv>:
CCB *Scheduler::get() { return readyCoroutineQueue.removeFirst(); }
    800012b4:	fe010113          	addi	sp,sp,-32
    800012b8:	00113c23          	sd	ra,24(sp)
    800012bc:	00813823          	sd	s0,16(sp)
    800012c0:	00913423          	sd	s1,8(sp)
    800012c4:	02010413          	addi	s0,sp,32
    } else {
      head = tail = elem;
    }
  }
  T *removeFirst() {
    if (!head) {
    800012c8:	00003517          	auipc	a0,0x3
    800012cc:	3c853503          	ld	a0,968(a0) # 80004690 <_ZN9Scheduler19readyCoroutineQueueE>
    800012d0:	04050263          	beqz	a0,80001314 <_ZN9Scheduler3getEv+0x60>
      return 0;
    }
    Elem *elem = head;
    head = head->next;
    800012d4:	00853783          	ld	a5,8(a0)
    800012d8:	00003717          	auipc	a4,0x3
    800012dc:	3af73c23          	sd	a5,952(a4) # 80004690 <_ZN9Scheduler19readyCoroutineQueueE>
    if (!head) {
    800012e0:	02078463          	beqz	a5,80001308 <_ZN9Scheduler3getEv+0x54>
      tail = 0;
    }
    T *ret = elem->data;
    800012e4:	00053483          	ld	s1,0(a0)
    delete elem;
    800012e8:	00000097          	auipc	ra,0x0
    800012ec:	40c080e7          	jalr	1036(ra) # 800016f4 <_ZdlPv>
    800012f0:	00048513          	mv	a0,s1
    800012f4:	01813083          	ld	ra,24(sp)
    800012f8:	01013403          	ld	s0,16(sp)
    800012fc:	00813483          	ld	s1,8(sp)
    80001300:	02010113          	addi	sp,sp,32
    80001304:	00008067          	ret
      tail = 0;
    80001308:	00003797          	auipc	a5,0x3
    8000130c:	3807b823          	sd	zero,912(a5) # 80004698 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001310:	fd5ff06f          	j	800012e4 <_ZN9Scheduler3getEv+0x30>
      return 0;
    80001314:	00050493          	mv	s1,a0
    80001318:	fd9ff06f          	j	800012f0 <_ZN9Scheduler3getEv+0x3c>

000000008000131c <_ZN9Scheduler3putEP3CCB>:
    8000131c:	fe010113          	addi	sp,sp,-32
    80001320:	00113c23          	sd	ra,24(sp)
    80001324:	00813823          	sd	s0,16(sp)
    80001328:	00913423          	sd	s1,8(sp)
    8000132c:	02010413          	addi	s0,sp,32
    80001330:	00050493          	mv	s1,a0
    Elem *elem = new Elem(data, 0);
    80001334:	01000513          	li	a0,16
    80001338:	00000097          	auipc	ra,0x0
    8000133c:	36c080e7          	jalr	876(ra) # 800016a4 <_Znwm>
    Elem(T *data, Elem *next) : data(data), next(next) {}
    80001340:	00953023          	sd	s1,0(a0)
    80001344:	00053423          	sd	zero,8(a0)
    if (tail) {
    80001348:	00003797          	auipc	a5,0x3
    8000134c:	3507b783          	ld	a5,848(a5) # 80004698 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001350:	02078263          	beqz	a5,80001374 <_ZN9Scheduler3putEP3CCB+0x58>
      tail->next = elem;
    80001354:	00a7b423          	sd	a0,8(a5)
      tail = elem;
    80001358:	00003797          	auipc	a5,0x3
    8000135c:	34a7b023          	sd	a0,832(a5) # 80004698 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001360:	01813083          	ld	ra,24(sp)
    80001364:	01013403          	ld	s0,16(sp)
    80001368:	00813483          	ld	s1,8(sp)
    8000136c:	02010113          	addi	sp,sp,32
    80001370:	00008067          	ret
      head = tail = elem;
    80001374:	00003797          	auipc	a5,0x3
    80001378:	31c78793          	addi	a5,a5,796 # 80004690 <_ZN9Scheduler19readyCoroutineQueueE>
    8000137c:	00a7b423          	sd	a0,8(a5)
    80001380:	00a7b023          	sd	a0,0(a5)
    80001384:	fddff06f          	j	80001360 <_ZN9Scheduler3putEP3CCB+0x44>

0000000080001388 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80001388:	ff010113          	addi	sp,sp,-16
    8000138c:	00113423          	sd	ra,8(sp)
    80001390:	00813023          	sd	s0,0(sp)
    80001394:	01010413          	addi	s0,sp,16
    80001398:	000105b7          	lui	a1,0x10
    8000139c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800013a0:	00100513          	li	a0,1
    800013a4:	00000097          	auipc	ra,0x0
    800013a8:	ed0080e7          	jalr	-304(ra) # 80001274 <_Z41__static_initialization_and_destruction_0ii>
    800013ac:	00813083          	ld	ra,8(sp)
    800013b0:	00013403          	ld	s0,0(sp)
    800013b4:	01010113          	addi	sp,sp,16
    800013b8:	00008067          	ret

00000000800013bc <_ZL9fibonaccim>:
#include "../h/workers.hpp"
#include "../h/ccb.hpp"
#include "../h/print.hpp"
#include "../lib/hw.h"

static uint64 fibonacci(uint64 n) {
    800013bc:	fe010113          	addi	sp,sp,-32
    800013c0:	00113c23          	sd	ra,24(sp)
    800013c4:	00813823          	sd	s0,16(sp)
    800013c8:	00913423          	sd	s1,8(sp)
    800013cc:	01213023          	sd	s2,0(sp)
    800013d0:	02010413          	addi	s0,sp,32
    800013d4:	00050493          	mv	s1,a0
  if (n == 0 || n == 1) {
    800013d8:	00100793          	li	a5,1
    800013dc:	02a7f663          	bgeu	a5,a0,80001408 <_ZL9fibonaccim+0x4c>
    return n;
  }
  if (n % 4 == 0)
    800013e0:	00357793          	andi	a5,a0,3
    800013e4:	02078e63          	beqz	a5,80001420 <_ZL9fibonaccim+0x64>
    CCB::yield();
  return fibonacci(n - 1) + fibonacci(n - 2);
    800013e8:	fff48513          	addi	a0,s1,-1
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	fd0080e7          	jalr	-48(ra) # 800013bc <_ZL9fibonaccim>
    800013f4:	00050913          	mv	s2,a0
    800013f8:	ffe48513          	addi	a0,s1,-2
    800013fc:	00000097          	auipc	ra,0x0
    80001400:	fc0080e7          	jalr	-64(ra) # 800013bc <_ZL9fibonaccim>
    80001404:	00a90533          	add	a0,s2,a0
}
    80001408:	01813083          	ld	ra,24(sp)
    8000140c:	01013403          	ld	s0,16(sp)
    80001410:	00813483          	ld	s1,8(sp)
    80001414:	00013903          	ld	s2,0(sp)
    80001418:	02010113          	addi	sp,sp,32
    8000141c:	00008067          	ret
    CCB::yield();
    80001420:	00000097          	auipc	ra,0x0
    80001424:	e1c080e7          	jalr	-484(ra) # 8000123c <_ZN3CCB5yieldEv>
    80001428:	fc1ff06f          	j	800013e8 <_ZL9fibonaccim+0x2c>

000000008000142c <_Z11workerBodyAv>:

void workerBodyA() {
    8000142c:	fe010113          	addi	sp,sp,-32
    80001430:	00113c23          	sd	ra,24(sp)
    80001434:	00813823          	sd	s0,16(sp)
    80001438:	00913423          	sd	s1,8(sp)
    8000143c:	01213023          	sd	s2,0(sp)
    80001440:	02010413          	addi	s0,sp,32
  uint8 i = 0;
    80001444:	00000493          	li	s1,0
    80001448:	0380006f          	j	80001480 <_Z11workerBodyAv+0x54>
  for (; i < 3; i++) {
    printString("A: i=");
    8000144c:	00003517          	auipc	a0,0x3
    80001450:	bb450513          	addi	a0,a0,-1100 # 80004000 <kvmincrease+0x2e0>
    80001454:	00000097          	auipc	ra,0x0
    80001458:	2f0080e7          	jalr	752(ra) # 80001744 <_Z11printStringPKc>
    printInteger(i);
    8000145c:	00048513          	mv	a0,s1
    80001460:	00000097          	auipc	ra,0x0
    80001464:	328080e7          	jalr	808(ra) # 80001788 <_Z12printIntegerm>
    printString("\n");
    80001468:	00003517          	auipc	a0,0x3
    8000146c:	c3850513          	addi	a0,a0,-968 # 800040a0 <_ZZ12printIntegermE6digits+0x48>
    80001470:	00000097          	auipc	ra,0x0
    80001474:	2d4080e7          	jalr	724(ra) # 80001744 <_Z11printStringPKc>
  for (; i < 3; i++) {
    80001478:	0014849b          	addiw	s1,s1,1
    8000147c:	0ff4f493          	andi	s1,s1,255
    80001480:	00200793          	li	a5,2
    80001484:	fc97f4e3          	bgeu	a5,s1,8000144c <_Z11workerBodyAv+0x20>
  }
  printString("A: yield\n");
    80001488:	00003517          	auipc	a0,0x3
    8000148c:	b8050513          	addi	a0,a0,-1152 # 80004008 <kvmincrease+0x2e8>
    80001490:	00000097          	auipc	ra,0x0
    80001494:	2b4080e7          	jalr	692(ra) # 80001744 <_Z11printStringPKc>
  __asm__("li t1, 7");
    80001498:	00700313          	li	t1,7
  CCB::yield();
    8000149c:	00000097          	auipc	ra,0x0
    800014a0:	da0080e7          	jalr	-608(ra) # 8000123c <_ZN3CCB5yieldEv>
  uint64 t1 = 0;
  __asm__("mv %[t1], t1" : [t1] "=r"(t1));
    800014a4:	00030913          	mv	s2,t1
  printString("A: t1=");
    800014a8:	00003517          	auipc	a0,0x3
    800014ac:	b7050513          	addi	a0,a0,-1168 # 80004018 <kvmincrease+0x2f8>
    800014b0:	00000097          	auipc	ra,0x0
    800014b4:	294080e7          	jalr	660(ra) # 80001744 <_Z11printStringPKc>
  printInteger(t1);
    800014b8:	00090513          	mv	a0,s2
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	2cc080e7          	jalr	716(ra) # 80001788 <_Z12printIntegerm>
  printString("\n");
    800014c4:	00003517          	auipc	a0,0x3
    800014c8:	bdc50513          	addi	a0,a0,-1060 # 800040a0 <_ZZ12printIntegermE6digits+0x48>
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	278080e7          	jalr	632(ra) # 80001744 <_Z11printStringPKc>

  uint64 result = fibonacci(20);
    800014d4:	01400513          	li	a0,20
    800014d8:	00000097          	auipc	ra,0x0
    800014dc:	ee4080e7          	jalr	-284(ra) # 800013bc <_ZL9fibonaccim>
    800014e0:	00050913          	mv	s2,a0
  printString("A: fibonaci=");
    800014e4:	00003517          	auipc	a0,0x3
    800014e8:	b3c50513          	addi	a0,a0,-1220 # 80004020 <kvmincrease+0x300>
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	258080e7          	jalr	600(ra) # 80001744 <_Z11printStringPKc>
  printInteger(result);
    800014f4:	00090513          	mv	a0,s2
    800014f8:	00000097          	auipc	ra,0x0
    800014fc:	290080e7          	jalr	656(ra) # 80001788 <_Z12printIntegerm>
  printString("\n");
    80001500:	00003517          	auipc	a0,0x3
    80001504:	ba050513          	addi	a0,a0,-1120 # 800040a0 <_ZZ12printIntegermE6digits+0x48>
    80001508:	00000097          	auipc	ra,0x0
    8000150c:	23c080e7          	jalr	572(ra) # 80001744 <_Z11printStringPKc>
    80001510:	0380006f          	j	80001548 <_Z11workerBodyAv+0x11c>
  for (; i < 6; i++) {
    printString("A: i=");
    80001514:	00003517          	auipc	a0,0x3
    80001518:	aec50513          	addi	a0,a0,-1300 # 80004000 <kvmincrease+0x2e0>
    8000151c:	00000097          	auipc	ra,0x0
    80001520:	228080e7          	jalr	552(ra) # 80001744 <_Z11printStringPKc>
    printInteger(i);
    80001524:	00048513          	mv	a0,s1
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	260080e7          	jalr	608(ra) # 80001788 <_Z12printIntegerm>
    printString("\n");
    80001530:	00003517          	auipc	a0,0x3
    80001534:	b7050513          	addi	a0,a0,-1168 # 800040a0 <_ZZ12printIntegermE6digits+0x48>
    80001538:	00000097          	auipc	ra,0x0
    8000153c:	20c080e7          	jalr	524(ra) # 80001744 <_Z11printStringPKc>
  for (; i < 6; i++) {
    80001540:	0014849b          	addiw	s1,s1,1
    80001544:	0ff4f493          	andi	s1,s1,255
    80001548:	00500793          	li	a5,5
    8000154c:	fc97f4e3          	bgeu	a5,s1,80001514 <_Z11workerBodyAv+0xe8>
  void setFinished(bool f) { CCB::finished = f; }
    80001550:	00003797          	auipc	a5,0x3
    80001554:	1007b783          	ld	a5,256(a5) # 80004650 <_ZN3CCB7runningE>
    80001558:	00100713          	li	a4,1
    8000155c:	02e78023          	sb	a4,32(a5)
  }
  CCB::running->setFinished(true);
  CCB::yield();
    80001560:	00000097          	auipc	ra,0x0
    80001564:	cdc080e7          	jalr	-804(ra) # 8000123c <_ZN3CCB5yieldEv>
}
    80001568:	01813083          	ld	ra,24(sp)
    8000156c:	01013403          	ld	s0,16(sp)
    80001570:	00813483          	ld	s1,8(sp)
    80001574:	00013903          	ld	s2,0(sp)
    80001578:	02010113          	addi	sp,sp,32
    8000157c:	00008067          	ret

0000000080001580 <_Z11workerBodyBv>:

void workerBodyB() {
    80001580:	fe010113          	addi	sp,sp,-32
    80001584:	00113c23          	sd	ra,24(sp)
    80001588:	00813823          	sd	s0,16(sp)
    8000158c:	00913423          	sd	s1,8(sp)
    80001590:	01213023          	sd	s2,0(sp)
    80001594:	02010413          	addi	s0,sp,32
  uint8 i = 10;
    80001598:	00a00493          	li	s1,10
    8000159c:	0380006f          	j	800015d4 <_Z11workerBodyBv+0x54>
  for (; i < 13; i++) {
    printString("B: i=");
    800015a0:	00003517          	auipc	a0,0x3
    800015a4:	a9050513          	addi	a0,a0,-1392 # 80004030 <kvmincrease+0x310>
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	19c080e7          	jalr	412(ra) # 80001744 <_Z11printStringPKc>
    printInteger(i);
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	1d4080e7          	jalr	468(ra) # 80001788 <_Z12printIntegerm>
    printString("\n");
    800015bc:	00003517          	auipc	a0,0x3
    800015c0:	ae450513          	addi	a0,a0,-1308 # 800040a0 <_ZZ12printIntegermE6digits+0x48>
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	180080e7          	jalr	384(ra) # 80001744 <_Z11printStringPKc>
  for (; i < 13; i++) {
    800015cc:	0014849b          	addiw	s1,s1,1
    800015d0:	0ff4f493          	andi	s1,s1,255
    800015d4:	00c00793          	li	a5,12
    800015d8:	fc97f4e3          	bgeu	a5,s1,800015a0 <_Z11workerBodyBv+0x20>
  }
  printString("B: yield\n");
    800015dc:	00003517          	auipc	a0,0x3
    800015e0:	a5c50513          	addi	a0,a0,-1444 # 80004038 <kvmincrease+0x318>
    800015e4:	00000097          	auipc	ra,0x0
    800015e8:	160080e7          	jalr	352(ra) # 80001744 <_Z11printStringPKc>
  __asm__("li t1, 1");
    800015ec:	00100313          	li	t1,1
  CCB::yield();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	c4c080e7          	jalr	-948(ra) # 8000123c <_ZN3CCB5yieldEv>

  uint64 result = fibonacci(23);
    800015f8:	01700513          	li	a0,23
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	dc0080e7          	jalr	-576(ra) # 800013bc <_ZL9fibonaccim>
    80001604:	00050913          	mv	s2,a0
  printString("B: fibonaci=");
    80001608:	00003517          	auipc	a0,0x3
    8000160c:	a4050513          	addi	a0,a0,-1472 # 80004048 <kvmincrease+0x328>
    80001610:	00000097          	auipc	ra,0x0
    80001614:	134080e7          	jalr	308(ra) # 80001744 <_Z11printStringPKc>
  printInteger(result);
    80001618:	00090513          	mv	a0,s2
    8000161c:	00000097          	auipc	ra,0x0
    80001620:	16c080e7          	jalr	364(ra) # 80001788 <_Z12printIntegerm>
  printString("\n");
    80001624:	00003517          	auipc	a0,0x3
    80001628:	a7c50513          	addi	a0,a0,-1412 # 800040a0 <_ZZ12printIntegermE6digits+0x48>
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	118080e7          	jalr	280(ra) # 80001744 <_Z11printStringPKc>
    80001634:	0380006f          	j	8000166c <_Z11workerBodyBv+0xec>
  for (; i < 16; i++) {
    printString("B: i=");
    80001638:	00003517          	auipc	a0,0x3
    8000163c:	9f850513          	addi	a0,a0,-1544 # 80004030 <kvmincrease+0x310>
    80001640:	00000097          	auipc	ra,0x0
    80001644:	104080e7          	jalr	260(ra) # 80001744 <_Z11printStringPKc>
    printInteger(i);
    80001648:	00048513          	mv	a0,s1
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	13c080e7          	jalr	316(ra) # 80001788 <_Z12printIntegerm>
    printString("\n");
    80001654:	00003517          	auipc	a0,0x3
    80001658:	a4c50513          	addi	a0,a0,-1460 # 800040a0 <_ZZ12printIntegermE6digits+0x48>
    8000165c:	00000097          	auipc	ra,0x0
    80001660:	0e8080e7          	jalr	232(ra) # 80001744 <_Z11printStringPKc>
  for (; i < 16; i++) {
    80001664:	0014849b          	addiw	s1,s1,1
    80001668:	0ff4f493          	andi	s1,s1,255
    8000166c:	00f00793          	li	a5,15
    80001670:	fc97f4e3          	bgeu	a5,s1,80001638 <_Z11workerBodyBv+0xb8>
    80001674:	00003797          	auipc	a5,0x3
    80001678:	fdc7b783          	ld	a5,-36(a5) # 80004650 <_ZN3CCB7runningE>
    8000167c:	00100713          	li	a4,1
    80001680:	02e78023          	sb	a4,32(a5)
  }
  CCB::running->setFinished(true);
  CCB::yield();
    80001684:	00000097          	auipc	ra,0x0
    80001688:	bb8080e7          	jalr	-1096(ra) # 8000123c <_ZN3CCB5yieldEv>
    8000168c:	01813083          	ld	ra,24(sp)
    80001690:	01013403          	ld	s0,16(sp)
    80001694:	00813483          	ld	s1,8(sp)
    80001698:	00013903          	ld	s2,0(sp)
    8000169c:	02010113          	addi	sp,sp,32
    800016a0:	00008067          	ret

00000000800016a4 <_Znwm>:
#include "../lib/mem.h"

void *operator new(uint64 n) { return __mem_alloc(n); }
    800016a4:	ff010113          	addi	sp,sp,-16
    800016a8:	00113423          	sd	ra,8(sp)
    800016ac:	00813023          	sd	s0,0(sp)
    800016b0:	01010413          	addi	s0,sp,16
    800016b4:	00002097          	auipc	ra,0x2
    800016b8:	3f4080e7          	jalr	1012(ra) # 80003aa8 <__mem_alloc>
    800016bc:	00813083          	ld	ra,8(sp)
    800016c0:	00013403          	ld	s0,0(sp)
    800016c4:	01010113          	addi	sp,sp,16
    800016c8:	00008067          	ret

00000000800016cc <_Znam>:
void *operator new[](uint64 n) { return __mem_alloc(n); }
    800016cc:	ff010113          	addi	sp,sp,-16
    800016d0:	00113423          	sd	ra,8(sp)
    800016d4:	00813023          	sd	s0,0(sp)
    800016d8:	01010413          	addi	s0,sp,16
    800016dc:	00002097          	auipc	ra,0x2
    800016e0:	3cc080e7          	jalr	972(ra) # 80003aa8 <__mem_alloc>
    800016e4:	00813083          	ld	ra,8(sp)
    800016e8:	00013403          	ld	s0,0(sp)
    800016ec:	01010113          	addi	sp,sp,16
    800016f0:	00008067          	ret

00000000800016f4 <_ZdlPv>:
void operator delete(void *n) noexcept { __mem_free(n); }
    800016f4:	ff010113          	addi	sp,sp,-16
    800016f8:	00113423          	sd	ra,8(sp)
    800016fc:	00813023          	sd	s0,0(sp)
    80001700:	01010413          	addi	s0,sp,16
    80001704:	00002097          	auipc	ra,0x2
    80001708:	2d8080e7          	jalr	728(ra) # 800039dc <__mem_free>
    8000170c:	00813083          	ld	ra,8(sp)
    80001710:	00013403          	ld	s0,0(sp)
    80001714:	01010113          	addi	sp,sp,16
    80001718:	00008067          	ret

000000008000171c <_ZdaPv>:
    8000171c:	ff010113          	addi	sp,sp,-16
    80001720:	00113423          	sd	ra,8(sp)
    80001724:	00813023          	sd	s0,0(sp)
    80001728:	01010413          	addi	s0,sp,16
    8000172c:	00002097          	auipc	ra,0x2
    80001730:	2b0080e7          	jalr	688(ra) # 800039dc <__mem_free>
    80001734:	00813083          	ld	ra,8(sp)
    80001738:	00013403          	ld	s0,0(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret

0000000080001744 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../lib/console.h"

void printString(const char *string) {
    80001744:	fe010113          	addi	sp,sp,-32
    80001748:	00113c23          	sd	ra,24(sp)
    8000174c:	00813823          	sd	s0,16(sp)
    80001750:	00913423          	sd	s1,8(sp)
    80001754:	02010413          	addi	s0,sp,32
    80001758:	00050493          	mv	s1,a0
  while (*string != '\0') {
    8000175c:	0004c503          	lbu	a0,0(s1)
    80001760:	00050a63          	beqz	a0,80001774 <_Z11printStringPKc+0x30>
    __putc(*string);
    80001764:	00002097          	auipc	ra,0x2
    80001768:	49c080e7          	jalr	1180(ra) # 80003c00 <__putc>
    string++;
    8000176c:	00148493          	addi	s1,s1,1
  while (*string != '\0') {
    80001770:	fedff06f          	j	8000175c <_Z11printStringPKc+0x18>
  }
}
    80001774:	01813083          	ld	ra,24(sp)
    80001778:	01013403          	ld	s0,16(sp)
    8000177c:	00813483          	ld	s1,8(sp)
    80001780:	02010113          	addi	sp,sp,32
    80001784:	00008067          	ret

0000000080001788 <_Z12printIntegerm>:

void printInteger(uint64 integer) {
    80001788:	fd010113          	addi	sp,sp,-48
    8000178c:	02113423          	sd	ra,40(sp)
    80001790:	02813023          	sd	s0,32(sp)
    80001794:	00913c23          	sd	s1,24(sp)
    80001798:	03010413          	addi	s0,sp,48
  uint x;
  if (integer < 0) {
    neg = 1;
    x = -integer;
  } else {
    x = integer;
    8000179c:	0005051b          	sext.w	a0,a0
  }
  i = 0;
    800017a0:	00000493          	li	s1,0
  do {
    buf[i++] = digits[x % 10];
    800017a4:	00a00613          	li	a2,10
    800017a8:	02c5773b          	remuw	a4,a0,a2
    800017ac:	02071693          	slli	a3,a4,0x20
    800017b0:	0206d693          	srli	a3,a3,0x20
    800017b4:	00003717          	auipc	a4,0x3
    800017b8:	8a470713          	addi	a4,a4,-1884 # 80004058 <_ZZ12printIntegermE6digits>
    800017bc:	00d70733          	add	a4,a4,a3
    800017c0:	00074703          	lbu	a4,0(a4)
    800017c4:	fe040693          	addi	a3,s0,-32
    800017c8:	009687b3          	add	a5,a3,s1
    800017cc:	0014849b          	addiw	s1,s1,1
    800017d0:	fee78823          	sb	a4,-16(a5)
  } while ((x /= 10) != 0);
    800017d4:	0005071b          	sext.w	a4,a0
    800017d8:	02c5553b          	divuw	a0,a0,a2
    800017dc:	00900793          	li	a5,9
    800017e0:	fce7e2e3          	bltu	a5,a4,800017a4 <_Z12printIntegerm+0x1c>
  if (neg)
    buf[i++] = '-';
  while (--i >= 0)
    800017e4:	fff4849b          	addiw	s1,s1,-1
    800017e8:	0004ce63          	bltz	s1,80001804 <_Z12printIntegerm+0x7c>
    __putc(buf[i]);
    800017ec:	fe040793          	addi	a5,s0,-32
    800017f0:	009787b3          	add	a5,a5,s1
    800017f4:	ff07c503          	lbu	a0,-16(a5)
    800017f8:	00002097          	auipc	ra,0x2
    800017fc:	408080e7          	jalr	1032(ra) # 80003c00 <__putc>
    80001800:	fe5ff06f          	j	800017e4 <_Z12printIntegerm+0x5c>
    80001804:	02813083          	ld	ra,40(sp)
    80001808:	02013403          	ld	s0,32(sp)
    8000180c:	01813483          	ld	s1,24(sp)
    80001810:	03010113          	addi	sp,sp,48
    80001814:	00008067          	ret

0000000080001818 <main>:
#include "../h/ccb.hpp"
#include "../h/print.hpp"
#include "../h/workers.hpp"
int main() {
    80001818:	fc010113          	addi	sp,sp,-64
    8000181c:	02113c23          	sd	ra,56(sp)
    80001820:	02813823          	sd	s0,48(sp)
    80001824:	02913423          	sd	s1,40(sp)
    80001828:	03213023          	sd	s2,32(sp)
    8000182c:	04010413          	addi	s0,sp,64

  CCB *coroutines[3];
  coroutines[0] = CCB::createCoroutine(nullptr);
    80001830:	00000513          	li	a0,0
    80001834:	00000097          	auipc	ra,0x0
    80001838:	8d8080e7          	jalr	-1832(ra) # 8000110c <_ZN3CCB15createCoroutineEPFvvE>
    8000183c:	fca43423          	sd	a0,-56(s0)
  CCB::running = coroutines[0];
    80001840:	00003797          	auipc	a5,0x3
    80001844:	e0a7b823          	sd	a0,-496(a5) # 80004650 <_ZN3CCB7runningE>

  coroutines[1] = CCB::createCoroutine(workerBodyA);
    80001848:	00000517          	auipc	a0,0x0
    8000184c:	be450513          	addi	a0,a0,-1052 # 8000142c <_Z11workerBodyAv>
    80001850:	00000097          	auipc	ra,0x0
    80001854:	8bc080e7          	jalr	-1860(ra) # 8000110c <_ZN3CCB15createCoroutineEPFvvE>
    80001858:	fca43823          	sd	a0,-48(s0)
  printString("CoroutineA created\n");
    8000185c:	00003517          	auipc	a0,0x3
    80001860:	80c50513          	addi	a0,a0,-2036 # 80004068 <_ZZ12printIntegermE6digits+0x10>
    80001864:	00000097          	auipc	ra,0x0
    80001868:	ee0080e7          	jalr	-288(ra) # 80001744 <_Z11printStringPKc>
  coroutines[2] = CCB::createCoroutine(workerBodyB);
    8000186c:	00000517          	auipc	a0,0x0
    80001870:	d1450513          	addi	a0,a0,-748 # 80001580 <_Z11workerBodyBv>
    80001874:	00000097          	auipc	ra,0x0
    80001878:	898080e7          	jalr	-1896(ra) # 8000110c <_ZN3CCB15createCoroutineEPFvvE>
    8000187c:	fca43c23          	sd	a0,-40(s0)
  printString("CoroutineB created\n");
    80001880:	00003517          	auipc	a0,0x3
    80001884:	80050513          	addi	a0,a0,-2048 # 80004080 <_ZZ12printIntegermE6digits+0x28>
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	ebc080e7          	jalr	-324(ra) # 80001744 <_Z11printStringPKc>
    80001890:	00c0006f          	j	8000189c <main+0x84>
  while (!(coroutines[1]->isFinished() && coroutines[2]->isFinished())) {
    CCB::yield();
    80001894:	00000097          	auipc	ra,0x0
    80001898:	9a8080e7          	jalr	-1624(ra) # 8000123c <_ZN3CCB5yieldEv>
  while (!(coroutines[1]->isFinished() && coroutines[2]->isFinished())) {
    8000189c:	fd043783          	ld	a5,-48(s0)
  bool isFinished() const { return finished; }
    800018a0:	0207c783          	lbu	a5,32(a5)
    800018a4:	fe0788e3          	beqz	a5,80001894 <main+0x7c>
    800018a8:	fd843783          	ld	a5,-40(s0)
    800018ac:	0207c783          	lbu	a5,32(a5)
    800018b0:	fe0782e3          	beqz	a5,80001894 <main+0x7c>
    800018b4:	fc840493          	addi	s1,s0,-56
    800018b8:	0140006f          	j	800018cc <main+0xb4>
  }
  for (auto &coroutine : coroutines) {
    delete coroutine;
    800018bc:	00090513          	mv	a0,s2
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	e34080e7          	jalr	-460(ra) # 800016f4 <_ZdlPv>
  for (auto &coroutine : coroutines) {
    800018c8:	00848493          	addi	s1,s1,8
    800018cc:	fe040793          	addi	a5,s0,-32
    800018d0:	02f48063          	beq	s1,a5,800018f0 <main+0xd8>
    delete coroutine;
    800018d4:	0004b903          	ld	s2,0(s1)
    800018d8:	fe0908e3          	beqz	s2,800018c8 <main+0xb0>
  ~CCB() { delete[] stack; }
    800018dc:	00893503          	ld	a0,8(s2)
    800018e0:	fc050ee3          	beqz	a0,800018bc <main+0xa4>
    800018e4:	00000097          	auipc	ra,0x0
    800018e8:	e38080e7          	jalr	-456(ra) # 8000171c <_ZdaPv>
    800018ec:	fd1ff06f          	j	800018bc <main+0xa4>
  }
  printString("Finished\n");
    800018f0:	00002517          	auipc	a0,0x2
    800018f4:	7a850513          	addi	a0,a0,1960 # 80004098 <_ZZ12printIntegermE6digits+0x40>
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	e4c080e7          	jalr	-436(ra) # 80001744 <_Z11printStringPKc>
  return 0;
}
    80001900:	00000513          	li	a0,0
    80001904:	03813083          	ld	ra,56(sp)
    80001908:	03013403          	ld	s0,48(sp)
    8000190c:	02813483          	ld	s1,40(sp)
    80001910:	02013903          	ld	s2,32(sp)
    80001914:	04010113          	addi	sp,sp,64
    80001918:	00008067          	ret

000000008000191c <start>:
    8000191c:	ff010113          	addi	sp,sp,-16
    80001920:	00813423          	sd	s0,8(sp)
    80001924:	01010413          	addi	s0,sp,16
    80001928:	300027f3          	csrr	a5,mstatus
    8000192c:	ffffe737          	lui	a4,0xffffe
    80001930:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8eef>
    80001934:	00e7f7b3          	and	a5,a5,a4
    80001938:	00001737          	lui	a4,0x1
    8000193c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001940:	00e7e7b3          	or	a5,a5,a4
    80001944:	30079073          	csrw	mstatus,a5
    80001948:	00000797          	auipc	a5,0x0
    8000194c:	16078793          	addi	a5,a5,352 # 80001aa8 <system_main>
    80001950:	34179073          	csrw	mepc,a5
    80001954:	00000793          	li	a5,0
    80001958:	18079073          	csrw	satp,a5
    8000195c:	000107b7          	lui	a5,0x10
    80001960:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001964:	30279073          	csrw	medeleg,a5
    80001968:	30379073          	csrw	mideleg,a5
    8000196c:	104027f3          	csrr	a5,sie
    80001970:	2227e793          	ori	a5,a5,546
    80001974:	10479073          	csrw	sie,a5
    80001978:	fff00793          	li	a5,-1
    8000197c:	00a7d793          	srli	a5,a5,0xa
    80001980:	3b079073          	csrw	pmpaddr0,a5
    80001984:	00f00793          	li	a5,15
    80001988:	3a079073          	csrw	pmpcfg0,a5
    8000198c:	f14027f3          	csrr	a5,mhartid
    80001990:	0200c737          	lui	a4,0x200c
    80001994:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001998:	0007869b          	sext.w	a3,a5
    8000199c:	00269713          	slli	a4,a3,0x2
    800019a0:	000f4637          	lui	a2,0xf4
    800019a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800019a8:	00d70733          	add	a4,a4,a3
    800019ac:	0037979b          	slliw	a5,a5,0x3
    800019b0:	020046b7          	lui	a3,0x2004
    800019b4:	00d787b3          	add	a5,a5,a3
    800019b8:	00c585b3          	add	a1,a1,a2
    800019bc:	00371693          	slli	a3,a4,0x3
    800019c0:	00003717          	auipc	a4,0x3
    800019c4:	ce070713          	addi	a4,a4,-800 # 800046a0 <timer_scratch>
    800019c8:	00b7b023          	sd	a1,0(a5)
    800019cc:	00d70733          	add	a4,a4,a3
    800019d0:	00f73c23          	sd	a5,24(a4)
    800019d4:	02c73023          	sd	a2,32(a4)
    800019d8:	34071073          	csrw	mscratch,a4
    800019dc:	00000797          	auipc	a5,0x0
    800019e0:	6e478793          	addi	a5,a5,1764 # 800020c0 <timervec>
    800019e4:	30579073          	csrw	mtvec,a5
    800019e8:	300027f3          	csrr	a5,mstatus
    800019ec:	0087e793          	ori	a5,a5,8
    800019f0:	30079073          	csrw	mstatus,a5
    800019f4:	304027f3          	csrr	a5,mie
    800019f8:	0807e793          	ori	a5,a5,128
    800019fc:	30479073          	csrw	mie,a5
    80001a00:	f14027f3          	csrr	a5,mhartid
    80001a04:	0007879b          	sext.w	a5,a5
    80001a08:	00078213          	mv	tp,a5
    80001a0c:	30200073          	mret
    80001a10:	00813403          	ld	s0,8(sp)
    80001a14:	01010113          	addi	sp,sp,16
    80001a18:	00008067          	ret

0000000080001a1c <timerinit>:
    80001a1c:	ff010113          	addi	sp,sp,-16
    80001a20:	00813423          	sd	s0,8(sp)
    80001a24:	01010413          	addi	s0,sp,16
    80001a28:	f14027f3          	csrr	a5,mhartid
    80001a2c:	0200c737          	lui	a4,0x200c
    80001a30:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001a34:	0007869b          	sext.w	a3,a5
    80001a38:	00269713          	slli	a4,a3,0x2
    80001a3c:	000f4637          	lui	a2,0xf4
    80001a40:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001a44:	00d70733          	add	a4,a4,a3
    80001a48:	0037979b          	slliw	a5,a5,0x3
    80001a4c:	020046b7          	lui	a3,0x2004
    80001a50:	00d787b3          	add	a5,a5,a3
    80001a54:	00c585b3          	add	a1,a1,a2
    80001a58:	00371693          	slli	a3,a4,0x3
    80001a5c:	00003717          	auipc	a4,0x3
    80001a60:	c4470713          	addi	a4,a4,-956 # 800046a0 <timer_scratch>
    80001a64:	00b7b023          	sd	a1,0(a5)
    80001a68:	00d70733          	add	a4,a4,a3
    80001a6c:	00f73c23          	sd	a5,24(a4)
    80001a70:	02c73023          	sd	a2,32(a4)
    80001a74:	34071073          	csrw	mscratch,a4
    80001a78:	00000797          	auipc	a5,0x0
    80001a7c:	64878793          	addi	a5,a5,1608 # 800020c0 <timervec>
    80001a80:	30579073          	csrw	mtvec,a5
    80001a84:	300027f3          	csrr	a5,mstatus
    80001a88:	0087e793          	ori	a5,a5,8
    80001a8c:	30079073          	csrw	mstatus,a5
    80001a90:	304027f3          	csrr	a5,mie
    80001a94:	0807e793          	ori	a5,a5,128
    80001a98:	30479073          	csrw	mie,a5
    80001a9c:	00813403          	ld	s0,8(sp)
    80001aa0:	01010113          	addi	sp,sp,16
    80001aa4:	00008067          	ret

0000000080001aa8 <system_main>:
    80001aa8:	fe010113          	addi	sp,sp,-32
    80001aac:	00813823          	sd	s0,16(sp)
    80001ab0:	00913423          	sd	s1,8(sp)
    80001ab4:	00113c23          	sd	ra,24(sp)
    80001ab8:	02010413          	addi	s0,sp,32
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	0c4080e7          	jalr	196(ra) # 80001b80 <cpuid>
    80001ac4:	00003497          	auipc	s1,0x3
    80001ac8:	b9448493          	addi	s1,s1,-1132 # 80004658 <started>
    80001acc:	02050263          	beqz	a0,80001af0 <system_main+0x48>
    80001ad0:	0004a783          	lw	a5,0(s1)
    80001ad4:	0007879b          	sext.w	a5,a5
    80001ad8:	fe078ce3          	beqz	a5,80001ad0 <system_main+0x28>
    80001adc:	0ff0000f          	fence
    80001ae0:	00002517          	auipc	a0,0x2
    80001ae4:	5f850513          	addi	a0,a0,1528 # 800040d8 <_ZZ12printIntegermE6digits+0x80>
    80001ae8:	00001097          	auipc	ra,0x1
    80001aec:	a74080e7          	jalr	-1420(ra) # 8000255c <panic>
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	9c8080e7          	jalr	-1592(ra) # 800024b8 <consoleinit>
    80001af8:	00001097          	auipc	ra,0x1
    80001afc:	154080e7          	jalr	340(ra) # 80002c4c <printfinit>
    80001b00:	00002517          	auipc	a0,0x2
    80001b04:	5a050513          	addi	a0,a0,1440 # 800040a0 <_ZZ12printIntegermE6digits+0x48>
    80001b08:	00001097          	auipc	ra,0x1
    80001b0c:	ab0080e7          	jalr	-1360(ra) # 800025b8 <__printf>
    80001b10:	00002517          	auipc	a0,0x2
    80001b14:	59850513          	addi	a0,a0,1432 # 800040a8 <_ZZ12printIntegermE6digits+0x50>
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	aa0080e7          	jalr	-1376(ra) # 800025b8 <__printf>
    80001b20:	00002517          	auipc	a0,0x2
    80001b24:	58050513          	addi	a0,a0,1408 # 800040a0 <_ZZ12printIntegermE6digits+0x48>
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	a90080e7          	jalr	-1392(ra) # 800025b8 <__printf>
    80001b30:	00001097          	auipc	ra,0x1
    80001b34:	4a8080e7          	jalr	1192(ra) # 80002fd8 <kinit>
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	148080e7          	jalr	328(ra) # 80001c80 <trapinit>
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	16c080e7          	jalr	364(ra) # 80001cac <trapinithart>
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	5b8080e7          	jalr	1464(ra) # 80002100 <plicinit>
    80001b50:	00000097          	auipc	ra,0x0
    80001b54:	5d8080e7          	jalr	1496(ra) # 80002128 <plicinithart>
    80001b58:	00000097          	auipc	ra,0x0
    80001b5c:	078080e7          	jalr	120(ra) # 80001bd0 <userinit>
    80001b60:	0ff0000f          	fence
    80001b64:	00100793          	li	a5,1
    80001b68:	00002517          	auipc	a0,0x2
    80001b6c:	55850513          	addi	a0,a0,1368 # 800040c0 <_ZZ12printIntegermE6digits+0x68>
    80001b70:	00f4a023          	sw	a5,0(s1)
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	a44080e7          	jalr	-1468(ra) # 800025b8 <__printf>
    80001b7c:	0000006f          	j	80001b7c <system_main+0xd4>

0000000080001b80 <cpuid>:
    80001b80:	ff010113          	addi	sp,sp,-16
    80001b84:	00813423          	sd	s0,8(sp)
    80001b88:	01010413          	addi	s0,sp,16
    80001b8c:	00020513          	mv	a0,tp
    80001b90:	00813403          	ld	s0,8(sp)
    80001b94:	0005051b          	sext.w	a0,a0
    80001b98:	01010113          	addi	sp,sp,16
    80001b9c:	00008067          	ret

0000000080001ba0 <mycpu>:
    80001ba0:	ff010113          	addi	sp,sp,-16
    80001ba4:	00813423          	sd	s0,8(sp)
    80001ba8:	01010413          	addi	s0,sp,16
    80001bac:	00020793          	mv	a5,tp
    80001bb0:	00813403          	ld	s0,8(sp)
    80001bb4:	0007879b          	sext.w	a5,a5
    80001bb8:	00779793          	slli	a5,a5,0x7
    80001bbc:	00004517          	auipc	a0,0x4
    80001bc0:	b1450513          	addi	a0,a0,-1260 # 800056d0 <cpus>
    80001bc4:	00f50533          	add	a0,a0,a5
    80001bc8:	01010113          	addi	sp,sp,16
    80001bcc:	00008067          	ret

0000000080001bd0 <userinit>:
    80001bd0:	ff010113          	addi	sp,sp,-16
    80001bd4:	00813423          	sd	s0,8(sp)
    80001bd8:	01010413          	addi	s0,sp,16
    80001bdc:	00813403          	ld	s0,8(sp)
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00000317          	auipc	t1,0x0
    80001be8:	c3430067          	jr	-972(t1) # 80001818 <main>

0000000080001bec <either_copyout>:
    80001bec:	ff010113          	addi	sp,sp,-16
    80001bf0:	00813023          	sd	s0,0(sp)
    80001bf4:	00113423          	sd	ra,8(sp)
    80001bf8:	01010413          	addi	s0,sp,16
    80001bfc:	02051663          	bnez	a0,80001c28 <either_copyout+0x3c>
    80001c00:	00058513          	mv	a0,a1
    80001c04:	00060593          	mv	a1,a2
    80001c08:	0006861b          	sext.w	a2,a3
    80001c0c:	00002097          	auipc	ra,0x2
    80001c10:	c58080e7          	jalr	-936(ra) # 80003864 <__memmove>
    80001c14:	00813083          	ld	ra,8(sp)
    80001c18:	00013403          	ld	s0,0(sp)
    80001c1c:	00000513          	li	a0,0
    80001c20:	01010113          	addi	sp,sp,16
    80001c24:	00008067          	ret
    80001c28:	00002517          	auipc	a0,0x2
    80001c2c:	4d850513          	addi	a0,a0,1240 # 80004100 <_ZZ12printIntegermE6digits+0xa8>
    80001c30:	00001097          	auipc	ra,0x1
    80001c34:	92c080e7          	jalr	-1748(ra) # 8000255c <panic>

0000000080001c38 <either_copyin>:
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00813023          	sd	s0,0(sp)
    80001c40:	00113423          	sd	ra,8(sp)
    80001c44:	01010413          	addi	s0,sp,16
    80001c48:	02059463          	bnez	a1,80001c70 <either_copyin+0x38>
    80001c4c:	00060593          	mv	a1,a2
    80001c50:	0006861b          	sext.w	a2,a3
    80001c54:	00002097          	auipc	ra,0x2
    80001c58:	c10080e7          	jalr	-1008(ra) # 80003864 <__memmove>
    80001c5c:	00813083          	ld	ra,8(sp)
    80001c60:	00013403          	ld	s0,0(sp)
    80001c64:	00000513          	li	a0,0
    80001c68:	01010113          	addi	sp,sp,16
    80001c6c:	00008067          	ret
    80001c70:	00002517          	auipc	a0,0x2
    80001c74:	4b850513          	addi	a0,a0,1208 # 80004128 <_ZZ12printIntegermE6digits+0xd0>
    80001c78:	00001097          	auipc	ra,0x1
    80001c7c:	8e4080e7          	jalr	-1820(ra) # 8000255c <panic>

0000000080001c80 <trapinit>:
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00813423          	sd	s0,8(sp)
    80001c88:	01010413          	addi	s0,sp,16
    80001c8c:	00813403          	ld	s0,8(sp)
    80001c90:	00002597          	auipc	a1,0x2
    80001c94:	4c058593          	addi	a1,a1,1216 # 80004150 <_ZZ12printIntegermE6digits+0xf8>
    80001c98:	00004517          	auipc	a0,0x4
    80001c9c:	ab850513          	addi	a0,a0,-1352 # 80005750 <tickslock>
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00001317          	auipc	t1,0x1
    80001ca8:	5c430067          	jr	1476(t1) # 80003268 <initlock>

0000000080001cac <trapinithart>:
    80001cac:	ff010113          	addi	sp,sp,-16
    80001cb0:	00813423          	sd	s0,8(sp)
    80001cb4:	01010413          	addi	s0,sp,16
    80001cb8:	00000797          	auipc	a5,0x0
    80001cbc:	2f878793          	addi	a5,a5,760 # 80001fb0 <kernelvec>
    80001cc0:	10579073          	csrw	stvec,a5
    80001cc4:	00813403          	ld	s0,8(sp)
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00008067          	ret

0000000080001cd0 <usertrap>:
    80001cd0:	ff010113          	addi	sp,sp,-16
    80001cd4:	00813423          	sd	s0,8(sp)
    80001cd8:	01010413          	addi	s0,sp,16
    80001cdc:	00813403          	ld	s0,8(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret

0000000080001ce8 <usertrapret>:
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00813423          	sd	s0,8(sp)
    80001cf0:	01010413          	addi	s0,sp,16
    80001cf4:	00813403          	ld	s0,8(sp)
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret

0000000080001d00 <kerneltrap>:
    80001d00:	fe010113          	addi	sp,sp,-32
    80001d04:	00813823          	sd	s0,16(sp)
    80001d08:	00113c23          	sd	ra,24(sp)
    80001d0c:	00913423          	sd	s1,8(sp)
    80001d10:	02010413          	addi	s0,sp,32
    80001d14:	142025f3          	csrr	a1,scause
    80001d18:	100027f3          	csrr	a5,sstatus
    80001d1c:	0027f793          	andi	a5,a5,2
    80001d20:	10079c63          	bnez	a5,80001e38 <kerneltrap+0x138>
    80001d24:	142027f3          	csrr	a5,scause
    80001d28:	0207ce63          	bltz	a5,80001d64 <kerneltrap+0x64>
    80001d2c:	00002517          	auipc	a0,0x2
    80001d30:	46c50513          	addi	a0,a0,1132 # 80004198 <_ZZ12printIntegermE6digits+0x140>
    80001d34:	00001097          	auipc	ra,0x1
    80001d38:	884080e7          	jalr	-1916(ra) # 800025b8 <__printf>
    80001d3c:	141025f3          	csrr	a1,sepc
    80001d40:	14302673          	csrr	a2,stval
    80001d44:	00002517          	auipc	a0,0x2
    80001d48:	46450513          	addi	a0,a0,1124 # 800041a8 <_ZZ12printIntegermE6digits+0x150>
    80001d4c:	00001097          	auipc	ra,0x1
    80001d50:	86c080e7          	jalr	-1940(ra) # 800025b8 <__printf>
    80001d54:	00002517          	auipc	a0,0x2
    80001d58:	46c50513          	addi	a0,a0,1132 # 800041c0 <_ZZ12printIntegermE6digits+0x168>
    80001d5c:	00001097          	auipc	ra,0x1
    80001d60:	800080e7          	jalr	-2048(ra) # 8000255c <panic>
    80001d64:	0ff7f713          	andi	a4,a5,255
    80001d68:	00900693          	li	a3,9
    80001d6c:	04d70063          	beq	a4,a3,80001dac <kerneltrap+0xac>
    80001d70:	fff00713          	li	a4,-1
    80001d74:	03f71713          	slli	a4,a4,0x3f
    80001d78:	00170713          	addi	a4,a4,1
    80001d7c:	fae798e3          	bne	a5,a4,80001d2c <kerneltrap+0x2c>
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	e00080e7          	jalr	-512(ra) # 80001b80 <cpuid>
    80001d88:	06050663          	beqz	a0,80001df4 <kerneltrap+0xf4>
    80001d8c:	144027f3          	csrr	a5,sip
    80001d90:	ffd7f793          	andi	a5,a5,-3
    80001d94:	14479073          	csrw	sip,a5
    80001d98:	01813083          	ld	ra,24(sp)
    80001d9c:	01013403          	ld	s0,16(sp)
    80001da0:	00813483          	ld	s1,8(sp)
    80001da4:	02010113          	addi	sp,sp,32
    80001da8:	00008067          	ret
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	3c8080e7          	jalr	968(ra) # 80002174 <plic_claim>
    80001db4:	00a00793          	li	a5,10
    80001db8:	00050493          	mv	s1,a0
    80001dbc:	06f50863          	beq	a0,a5,80001e2c <kerneltrap+0x12c>
    80001dc0:	fc050ce3          	beqz	a0,80001d98 <kerneltrap+0x98>
    80001dc4:	00050593          	mv	a1,a0
    80001dc8:	00002517          	auipc	a0,0x2
    80001dcc:	3b050513          	addi	a0,a0,944 # 80004178 <_ZZ12printIntegermE6digits+0x120>
    80001dd0:	00000097          	auipc	ra,0x0
    80001dd4:	7e8080e7          	jalr	2024(ra) # 800025b8 <__printf>
    80001dd8:	01013403          	ld	s0,16(sp)
    80001ddc:	01813083          	ld	ra,24(sp)
    80001de0:	00048513          	mv	a0,s1
    80001de4:	00813483          	ld	s1,8(sp)
    80001de8:	02010113          	addi	sp,sp,32
    80001dec:	00000317          	auipc	t1,0x0
    80001df0:	3c030067          	jr	960(t1) # 800021ac <plic_complete>
    80001df4:	00004517          	auipc	a0,0x4
    80001df8:	95c50513          	addi	a0,a0,-1700 # 80005750 <tickslock>
    80001dfc:	00001097          	auipc	ra,0x1
    80001e00:	490080e7          	jalr	1168(ra) # 8000328c <acquire>
    80001e04:	00003717          	auipc	a4,0x3
    80001e08:	85870713          	addi	a4,a4,-1960 # 8000465c <ticks>
    80001e0c:	00072783          	lw	a5,0(a4)
    80001e10:	00004517          	auipc	a0,0x4
    80001e14:	94050513          	addi	a0,a0,-1728 # 80005750 <tickslock>
    80001e18:	0017879b          	addiw	a5,a5,1
    80001e1c:	00f72023          	sw	a5,0(a4)
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	538080e7          	jalr	1336(ra) # 80003358 <release>
    80001e28:	f65ff06f          	j	80001d8c <kerneltrap+0x8c>
    80001e2c:	00001097          	auipc	ra,0x1
    80001e30:	094080e7          	jalr	148(ra) # 80002ec0 <uartintr>
    80001e34:	fa5ff06f          	j	80001dd8 <kerneltrap+0xd8>
    80001e38:	00002517          	auipc	a0,0x2
    80001e3c:	32050513          	addi	a0,a0,800 # 80004158 <_ZZ12printIntegermE6digits+0x100>
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	71c080e7          	jalr	1820(ra) # 8000255c <panic>

0000000080001e48 <clockintr>:
    80001e48:	fe010113          	addi	sp,sp,-32
    80001e4c:	00813823          	sd	s0,16(sp)
    80001e50:	00913423          	sd	s1,8(sp)
    80001e54:	00113c23          	sd	ra,24(sp)
    80001e58:	02010413          	addi	s0,sp,32
    80001e5c:	00004497          	auipc	s1,0x4
    80001e60:	8f448493          	addi	s1,s1,-1804 # 80005750 <tickslock>
    80001e64:	00048513          	mv	a0,s1
    80001e68:	00001097          	auipc	ra,0x1
    80001e6c:	424080e7          	jalr	1060(ra) # 8000328c <acquire>
    80001e70:	00002717          	auipc	a4,0x2
    80001e74:	7ec70713          	addi	a4,a4,2028 # 8000465c <ticks>
    80001e78:	00072783          	lw	a5,0(a4)
    80001e7c:	01013403          	ld	s0,16(sp)
    80001e80:	01813083          	ld	ra,24(sp)
    80001e84:	00048513          	mv	a0,s1
    80001e88:	0017879b          	addiw	a5,a5,1
    80001e8c:	00813483          	ld	s1,8(sp)
    80001e90:	00f72023          	sw	a5,0(a4)
    80001e94:	02010113          	addi	sp,sp,32
    80001e98:	00001317          	auipc	t1,0x1
    80001e9c:	4c030067          	jr	1216(t1) # 80003358 <release>

0000000080001ea0 <devintr>:
    80001ea0:	142027f3          	csrr	a5,scause
    80001ea4:	00000513          	li	a0,0
    80001ea8:	0007c463          	bltz	a5,80001eb0 <devintr+0x10>
    80001eac:	00008067          	ret
    80001eb0:	fe010113          	addi	sp,sp,-32
    80001eb4:	00813823          	sd	s0,16(sp)
    80001eb8:	00113c23          	sd	ra,24(sp)
    80001ebc:	00913423          	sd	s1,8(sp)
    80001ec0:	02010413          	addi	s0,sp,32
    80001ec4:	0ff7f713          	andi	a4,a5,255
    80001ec8:	00900693          	li	a3,9
    80001ecc:	04d70c63          	beq	a4,a3,80001f24 <devintr+0x84>
    80001ed0:	fff00713          	li	a4,-1
    80001ed4:	03f71713          	slli	a4,a4,0x3f
    80001ed8:	00170713          	addi	a4,a4,1
    80001edc:	00e78c63          	beq	a5,a4,80001ef4 <devintr+0x54>
    80001ee0:	01813083          	ld	ra,24(sp)
    80001ee4:	01013403          	ld	s0,16(sp)
    80001ee8:	00813483          	ld	s1,8(sp)
    80001eec:	02010113          	addi	sp,sp,32
    80001ef0:	00008067          	ret
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	c8c080e7          	jalr	-884(ra) # 80001b80 <cpuid>
    80001efc:	06050663          	beqz	a0,80001f68 <devintr+0xc8>
    80001f00:	144027f3          	csrr	a5,sip
    80001f04:	ffd7f793          	andi	a5,a5,-3
    80001f08:	14479073          	csrw	sip,a5
    80001f0c:	01813083          	ld	ra,24(sp)
    80001f10:	01013403          	ld	s0,16(sp)
    80001f14:	00813483          	ld	s1,8(sp)
    80001f18:	00200513          	li	a0,2
    80001f1c:	02010113          	addi	sp,sp,32
    80001f20:	00008067          	ret
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	250080e7          	jalr	592(ra) # 80002174 <plic_claim>
    80001f2c:	00a00793          	li	a5,10
    80001f30:	00050493          	mv	s1,a0
    80001f34:	06f50663          	beq	a0,a5,80001fa0 <devintr+0x100>
    80001f38:	00100513          	li	a0,1
    80001f3c:	fa0482e3          	beqz	s1,80001ee0 <devintr+0x40>
    80001f40:	00048593          	mv	a1,s1
    80001f44:	00002517          	auipc	a0,0x2
    80001f48:	23450513          	addi	a0,a0,564 # 80004178 <_ZZ12printIntegermE6digits+0x120>
    80001f4c:	00000097          	auipc	ra,0x0
    80001f50:	66c080e7          	jalr	1644(ra) # 800025b8 <__printf>
    80001f54:	00048513          	mv	a0,s1
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	254080e7          	jalr	596(ra) # 800021ac <plic_complete>
    80001f60:	00100513          	li	a0,1
    80001f64:	f7dff06f          	j	80001ee0 <devintr+0x40>
    80001f68:	00003517          	auipc	a0,0x3
    80001f6c:	7e850513          	addi	a0,a0,2024 # 80005750 <tickslock>
    80001f70:	00001097          	auipc	ra,0x1
    80001f74:	31c080e7          	jalr	796(ra) # 8000328c <acquire>
    80001f78:	00002717          	auipc	a4,0x2
    80001f7c:	6e470713          	addi	a4,a4,1764 # 8000465c <ticks>
    80001f80:	00072783          	lw	a5,0(a4)
    80001f84:	00003517          	auipc	a0,0x3
    80001f88:	7cc50513          	addi	a0,a0,1996 # 80005750 <tickslock>
    80001f8c:	0017879b          	addiw	a5,a5,1
    80001f90:	00f72023          	sw	a5,0(a4)
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	3c4080e7          	jalr	964(ra) # 80003358 <release>
    80001f9c:	f65ff06f          	j	80001f00 <devintr+0x60>
    80001fa0:	00001097          	auipc	ra,0x1
    80001fa4:	f20080e7          	jalr	-224(ra) # 80002ec0 <uartintr>
    80001fa8:	fadff06f          	j	80001f54 <devintr+0xb4>
    80001fac:	0000                	unimp
	...

0000000080001fb0 <kernelvec>:
    80001fb0:	f0010113          	addi	sp,sp,-256
    80001fb4:	00113023          	sd	ra,0(sp)
    80001fb8:	00213423          	sd	sp,8(sp)
    80001fbc:	00313823          	sd	gp,16(sp)
    80001fc0:	00413c23          	sd	tp,24(sp)
    80001fc4:	02513023          	sd	t0,32(sp)
    80001fc8:	02613423          	sd	t1,40(sp)
    80001fcc:	02713823          	sd	t2,48(sp)
    80001fd0:	02813c23          	sd	s0,56(sp)
    80001fd4:	04913023          	sd	s1,64(sp)
    80001fd8:	04a13423          	sd	a0,72(sp)
    80001fdc:	04b13823          	sd	a1,80(sp)
    80001fe0:	04c13c23          	sd	a2,88(sp)
    80001fe4:	06d13023          	sd	a3,96(sp)
    80001fe8:	06e13423          	sd	a4,104(sp)
    80001fec:	06f13823          	sd	a5,112(sp)
    80001ff0:	07013c23          	sd	a6,120(sp)
    80001ff4:	09113023          	sd	a7,128(sp)
    80001ff8:	09213423          	sd	s2,136(sp)
    80001ffc:	09313823          	sd	s3,144(sp)
    80002000:	09413c23          	sd	s4,152(sp)
    80002004:	0b513023          	sd	s5,160(sp)
    80002008:	0b613423          	sd	s6,168(sp)
    8000200c:	0b713823          	sd	s7,176(sp)
    80002010:	0b813c23          	sd	s8,184(sp)
    80002014:	0d913023          	sd	s9,192(sp)
    80002018:	0da13423          	sd	s10,200(sp)
    8000201c:	0db13823          	sd	s11,208(sp)
    80002020:	0dc13c23          	sd	t3,216(sp)
    80002024:	0fd13023          	sd	t4,224(sp)
    80002028:	0fe13423          	sd	t5,232(sp)
    8000202c:	0ff13823          	sd	t6,240(sp)
    80002030:	cd1ff0ef          	jal	ra,80001d00 <kerneltrap>
    80002034:	00013083          	ld	ra,0(sp)
    80002038:	00813103          	ld	sp,8(sp)
    8000203c:	01013183          	ld	gp,16(sp)
    80002040:	02013283          	ld	t0,32(sp)
    80002044:	02813303          	ld	t1,40(sp)
    80002048:	03013383          	ld	t2,48(sp)
    8000204c:	03813403          	ld	s0,56(sp)
    80002050:	04013483          	ld	s1,64(sp)
    80002054:	04813503          	ld	a0,72(sp)
    80002058:	05013583          	ld	a1,80(sp)
    8000205c:	05813603          	ld	a2,88(sp)
    80002060:	06013683          	ld	a3,96(sp)
    80002064:	06813703          	ld	a4,104(sp)
    80002068:	07013783          	ld	a5,112(sp)
    8000206c:	07813803          	ld	a6,120(sp)
    80002070:	08013883          	ld	a7,128(sp)
    80002074:	08813903          	ld	s2,136(sp)
    80002078:	09013983          	ld	s3,144(sp)
    8000207c:	09813a03          	ld	s4,152(sp)
    80002080:	0a013a83          	ld	s5,160(sp)
    80002084:	0a813b03          	ld	s6,168(sp)
    80002088:	0b013b83          	ld	s7,176(sp)
    8000208c:	0b813c03          	ld	s8,184(sp)
    80002090:	0c013c83          	ld	s9,192(sp)
    80002094:	0c813d03          	ld	s10,200(sp)
    80002098:	0d013d83          	ld	s11,208(sp)
    8000209c:	0d813e03          	ld	t3,216(sp)
    800020a0:	0e013e83          	ld	t4,224(sp)
    800020a4:	0e813f03          	ld	t5,232(sp)
    800020a8:	0f013f83          	ld	t6,240(sp)
    800020ac:	10010113          	addi	sp,sp,256
    800020b0:	10200073          	sret
    800020b4:	00000013          	nop
    800020b8:	00000013          	nop
    800020bc:	00000013          	nop

00000000800020c0 <timervec>:
    800020c0:	34051573          	csrrw	a0,mscratch,a0
    800020c4:	00b53023          	sd	a1,0(a0)
    800020c8:	00c53423          	sd	a2,8(a0)
    800020cc:	00d53823          	sd	a3,16(a0)
    800020d0:	01853583          	ld	a1,24(a0)
    800020d4:	02053603          	ld	a2,32(a0)
    800020d8:	0005b683          	ld	a3,0(a1)
    800020dc:	00c686b3          	add	a3,a3,a2
    800020e0:	00d5b023          	sd	a3,0(a1)
    800020e4:	00200593          	li	a1,2
    800020e8:	14459073          	csrw	sip,a1
    800020ec:	01053683          	ld	a3,16(a0)
    800020f0:	00853603          	ld	a2,8(a0)
    800020f4:	00053583          	ld	a1,0(a0)
    800020f8:	34051573          	csrrw	a0,mscratch,a0
    800020fc:	30200073          	mret

0000000080002100 <plicinit>:
    80002100:	ff010113          	addi	sp,sp,-16
    80002104:	00813423          	sd	s0,8(sp)
    80002108:	01010413          	addi	s0,sp,16
    8000210c:	00813403          	ld	s0,8(sp)
    80002110:	0c0007b7          	lui	a5,0xc000
    80002114:	00100713          	li	a4,1
    80002118:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000211c:	00e7a223          	sw	a4,4(a5)
    80002120:	01010113          	addi	sp,sp,16
    80002124:	00008067          	ret

0000000080002128 <plicinithart>:
    80002128:	ff010113          	addi	sp,sp,-16
    8000212c:	00813023          	sd	s0,0(sp)
    80002130:	00113423          	sd	ra,8(sp)
    80002134:	01010413          	addi	s0,sp,16
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	a48080e7          	jalr	-1464(ra) # 80001b80 <cpuid>
    80002140:	0085171b          	slliw	a4,a0,0x8
    80002144:	0c0027b7          	lui	a5,0xc002
    80002148:	00e787b3          	add	a5,a5,a4
    8000214c:	40200713          	li	a4,1026
    80002150:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002154:	00813083          	ld	ra,8(sp)
    80002158:	00013403          	ld	s0,0(sp)
    8000215c:	00d5151b          	slliw	a0,a0,0xd
    80002160:	0c2017b7          	lui	a5,0xc201
    80002164:	00a78533          	add	a0,a5,a0
    80002168:	00052023          	sw	zero,0(a0)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <plic_claim>:
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00813023          	sd	s0,0(sp)
    8000217c:	00113423          	sd	ra,8(sp)
    80002180:	01010413          	addi	s0,sp,16
    80002184:	00000097          	auipc	ra,0x0
    80002188:	9fc080e7          	jalr	-1540(ra) # 80001b80 <cpuid>
    8000218c:	00813083          	ld	ra,8(sp)
    80002190:	00013403          	ld	s0,0(sp)
    80002194:	00d5151b          	slliw	a0,a0,0xd
    80002198:	0c2017b7          	lui	a5,0xc201
    8000219c:	00a78533          	add	a0,a5,a0
    800021a0:	00452503          	lw	a0,4(a0)
    800021a4:	01010113          	addi	sp,sp,16
    800021a8:	00008067          	ret

00000000800021ac <plic_complete>:
    800021ac:	fe010113          	addi	sp,sp,-32
    800021b0:	00813823          	sd	s0,16(sp)
    800021b4:	00913423          	sd	s1,8(sp)
    800021b8:	00113c23          	sd	ra,24(sp)
    800021bc:	02010413          	addi	s0,sp,32
    800021c0:	00050493          	mv	s1,a0
    800021c4:	00000097          	auipc	ra,0x0
    800021c8:	9bc080e7          	jalr	-1604(ra) # 80001b80 <cpuid>
    800021cc:	01813083          	ld	ra,24(sp)
    800021d0:	01013403          	ld	s0,16(sp)
    800021d4:	00d5179b          	slliw	a5,a0,0xd
    800021d8:	0c201737          	lui	a4,0xc201
    800021dc:	00f707b3          	add	a5,a4,a5
    800021e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800021e4:	00813483          	ld	s1,8(sp)
    800021e8:	02010113          	addi	sp,sp,32
    800021ec:	00008067          	ret

00000000800021f0 <consolewrite>:
    800021f0:	fb010113          	addi	sp,sp,-80
    800021f4:	04813023          	sd	s0,64(sp)
    800021f8:	04113423          	sd	ra,72(sp)
    800021fc:	02913c23          	sd	s1,56(sp)
    80002200:	03213823          	sd	s2,48(sp)
    80002204:	03313423          	sd	s3,40(sp)
    80002208:	03413023          	sd	s4,32(sp)
    8000220c:	01513c23          	sd	s5,24(sp)
    80002210:	05010413          	addi	s0,sp,80
    80002214:	06c05c63          	blez	a2,8000228c <consolewrite+0x9c>
    80002218:	00060993          	mv	s3,a2
    8000221c:	00050a13          	mv	s4,a0
    80002220:	00058493          	mv	s1,a1
    80002224:	00000913          	li	s2,0
    80002228:	fff00a93          	li	s5,-1
    8000222c:	01c0006f          	j	80002248 <consolewrite+0x58>
    80002230:	fbf44503          	lbu	a0,-65(s0)
    80002234:	0019091b          	addiw	s2,s2,1
    80002238:	00148493          	addi	s1,s1,1
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	a9c080e7          	jalr	-1380(ra) # 80002cd8 <uartputc>
    80002244:	03298063          	beq	s3,s2,80002264 <consolewrite+0x74>
    80002248:	00048613          	mv	a2,s1
    8000224c:	00100693          	li	a3,1
    80002250:	000a0593          	mv	a1,s4
    80002254:	fbf40513          	addi	a0,s0,-65
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	9e0080e7          	jalr	-1568(ra) # 80001c38 <either_copyin>
    80002260:	fd5518e3          	bne	a0,s5,80002230 <consolewrite+0x40>
    80002264:	04813083          	ld	ra,72(sp)
    80002268:	04013403          	ld	s0,64(sp)
    8000226c:	03813483          	ld	s1,56(sp)
    80002270:	02813983          	ld	s3,40(sp)
    80002274:	02013a03          	ld	s4,32(sp)
    80002278:	01813a83          	ld	s5,24(sp)
    8000227c:	00090513          	mv	a0,s2
    80002280:	03013903          	ld	s2,48(sp)
    80002284:	05010113          	addi	sp,sp,80
    80002288:	00008067          	ret
    8000228c:	00000913          	li	s2,0
    80002290:	fd5ff06f          	j	80002264 <consolewrite+0x74>

0000000080002294 <consoleread>:
    80002294:	f9010113          	addi	sp,sp,-112
    80002298:	06813023          	sd	s0,96(sp)
    8000229c:	04913c23          	sd	s1,88(sp)
    800022a0:	05213823          	sd	s2,80(sp)
    800022a4:	05313423          	sd	s3,72(sp)
    800022a8:	05413023          	sd	s4,64(sp)
    800022ac:	03513c23          	sd	s5,56(sp)
    800022b0:	03613823          	sd	s6,48(sp)
    800022b4:	03713423          	sd	s7,40(sp)
    800022b8:	03813023          	sd	s8,32(sp)
    800022bc:	06113423          	sd	ra,104(sp)
    800022c0:	01913c23          	sd	s9,24(sp)
    800022c4:	07010413          	addi	s0,sp,112
    800022c8:	00060b93          	mv	s7,a2
    800022cc:	00050913          	mv	s2,a0
    800022d0:	00058c13          	mv	s8,a1
    800022d4:	00060b1b          	sext.w	s6,a2
    800022d8:	00003497          	auipc	s1,0x3
    800022dc:	4a048493          	addi	s1,s1,1184 # 80005778 <cons>
    800022e0:	00400993          	li	s3,4
    800022e4:	fff00a13          	li	s4,-1
    800022e8:	00a00a93          	li	s5,10
    800022ec:	05705e63          	blez	s7,80002348 <consoleread+0xb4>
    800022f0:	09c4a703          	lw	a4,156(s1)
    800022f4:	0984a783          	lw	a5,152(s1)
    800022f8:	0007071b          	sext.w	a4,a4
    800022fc:	08e78463          	beq	a5,a4,80002384 <consoleread+0xf0>
    80002300:	07f7f713          	andi	a4,a5,127
    80002304:	00e48733          	add	a4,s1,a4
    80002308:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000230c:	0017869b          	addiw	a3,a5,1
    80002310:	08d4ac23          	sw	a3,152(s1)
    80002314:	00070c9b          	sext.w	s9,a4
    80002318:	0b370663          	beq	a4,s3,800023c4 <consoleread+0x130>
    8000231c:	00100693          	li	a3,1
    80002320:	f9f40613          	addi	a2,s0,-97
    80002324:	000c0593          	mv	a1,s8
    80002328:	00090513          	mv	a0,s2
    8000232c:	f8e40fa3          	sb	a4,-97(s0)
    80002330:	00000097          	auipc	ra,0x0
    80002334:	8bc080e7          	jalr	-1860(ra) # 80001bec <either_copyout>
    80002338:	01450863          	beq	a0,s4,80002348 <consoleread+0xb4>
    8000233c:	001c0c13          	addi	s8,s8,1
    80002340:	fffb8b9b          	addiw	s7,s7,-1
    80002344:	fb5c94e3          	bne	s9,s5,800022ec <consoleread+0x58>
    80002348:	000b851b          	sext.w	a0,s7
    8000234c:	06813083          	ld	ra,104(sp)
    80002350:	06013403          	ld	s0,96(sp)
    80002354:	05813483          	ld	s1,88(sp)
    80002358:	05013903          	ld	s2,80(sp)
    8000235c:	04813983          	ld	s3,72(sp)
    80002360:	04013a03          	ld	s4,64(sp)
    80002364:	03813a83          	ld	s5,56(sp)
    80002368:	02813b83          	ld	s7,40(sp)
    8000236c:	02013c03          	ld	s8,32(sp)
    80002370:	01813c83          	ld	s9,24(sp)
    80002374:	40ab053b          	subw	a0,s6,a0
    80002378:	03013b03          	ld	s6,48(sp)
    8000237c:	07010113          	addi	sp,sp,112
    80002380:	00008067          	ret
    80002384:	00001097          	auipc	ra,0x1
    80002388:	1d8080e7          	jalr	472(ra) # 8000355c <push_on>
    8000238c:	0984a703          	lw	a4,152(s1)
    80002390:	09c4a783          	lw	a5,156(s1)
    80002394:	0007879b          	sext.w	a5,a5
    80002398:	fef70ce3          	beq	a4,a5,80002390 <consoleread+0xfc>
    8000239c:	00001097          	auipc	ra,0x1
    800023a0:	234080e7          	jalr	564(ra) # 800035d0 <pop_on>
    800023a4:	0984a783          	lw	a5,152(s1)
    800023a8:	07f7f713          	andi	a4,a5,127
    800023ac:	00e48733          	add	a4,s1,a4
    800023b0:	01874703          	lbu	a4,24(a4)
    800023b4:	0017869b          	addiw	a3,a5,1
    800023b8:	08d4ac23          	sw	a3,152(s1)
    800023bc:	00070c9b          	sext.w	s9,a4
    800023c0:	f5371ee3          	bne	a4,s3,8000231c <consoleread+0x88>
    800023c4:	000b851b          	sext.w	a0,s7
    800023c8:	f96bf2e3          	bgeu	s7,s6,8000234c <consoleread+0xb8>
    800023cc:	08f4ac23          	sw	a5,152(s1)
    800023d0:	f7dff06f          	j	8000234c <consoleread+0xb8>

00000000800023d4 <consputc>:
    800023d4:	10000793          	li	a5,256
    800023d8:	00f50663          	beq	a0,a5,800023e4 <consputc+0x10>
    800023dc:	00001317          	auipc	t1,0x1
    800023e0:	9f430067          	jr	-1548(t1) # 80002dd0 <uartputc_sync>
    800023e4:	ff010113          	addi	sp,sp,-16
    800023e8:	00113423          	sd	ra,8(sp)
    800023ec:	00813023          	sd	s0,0(sp)
    800023f0:	01010413          	addi	s0,sp,16
    800023f4:	00800513          	li	a0,8
    800023f8:	00001097          	auipc	ra,0x1
    800023fc:	9d8080e7          	jalr	-1576(ra) # 80002dd0 <uartputc_sync>
    80002400:	02000513          	li	a0,32
    80002404:	00001097          	auipc	ra,0x1
    80002408:	9cc080e7          	jalr	-1588(ra) # 80002dd0 <uartputc_sync>
    8000240c:	00013403          	ld	s0,0(sp)
    80002410:	00813083          	ld	ra,8(sp)
    80002414:	00800513          	li	a0,8
    80002418:	01010113          	addi	sp,sp,16
    8000241c:	00001317          	auipc	t1,0x1
    80002420:	9b430067          	jr	-1612(t1) # 80002dd0 <uartputc_sync>

0000000080002424 <consoleintr>:
    80002424:	fe010113          	addi	sp,sp,-32
    80002428:	00813823          	sd	s0,16(sp)
    8000242c:	00913423          	sd	s1,8(sp)
    80002430:	01213023          	sd	s2,0(sp)
    80002434:	00113c23          	sd	ra,24(sp)
    80002438:	02010413          	addi	s0,sp,32
    8000243c:	00003917          	auipc	s2,0x3
    80002440:	33c90913          	addi	s2,s2,828 # 80005778 <cons>
    80002444:	00050493          	mv	s1,a0
    80002448:	00090513          	mv	a0,s2
    8000244c:	00001097          	auipc	ra,0x1
    80002450:	e40080e7          	jalr	-448(ra) # 8000328c <acquire>
    80002454:	02048c63          	beqz	s1,8000248c <consoleintr+0x68>
    80002458:	0a092783          	lw	a5,160(s2)
    8000245c:	09892703          	lw	a4,152(s2)
    80002460:	07f00693          	li	a3,127
    80002464:	40e7873b          	subw	a4,a5,a4
    80002468:	02e6e263          	bltu	a3,a4,8000248c <consoleintr+0x68>
    8000246c:	00d00713          	li	a4,13
    80002470:	04e48063          	beq	s1,a4,800024b0 <consoleintr+0x8c>
    80002474:	07f7f713          	andi	a4,a5,127
    80002478:	00e90733          	add	a4,s2,a4
    8000247c:	0017879b          	addiw	a5,a5,1
    80002480:	0af92023          	sw	a5,160(s2)
    80002484:	00970c23          	sb	s1,24(a4)
    80002488:	08f92e23          	sw	a5,156(s2)
    8000248c:	01013403          	ld	s0,16(sp)
    80002490:	01813083          	ld	ra,24(sp)
    80002494:	00813483          	ld	s1,8(sp)
    80002498:	00013903          	ld	s2,0(sp)
    8000249c:	00003517          	auipc	a0,0x3
    800024a0:	2dc50513          	addi	a0,a0,732 # 80005778 <cons>
    800024a4:	02010113          	addi	sp,sp,32
    800024a8:	00001317          	auipc	t1,0x1
    800024ac:	eb030067          	jr	-336(t1) # 80003358 <release>
    800024b0:	00a00493          	li	s1,10
    800024b4:	fc1ff06f          	j	80002474 <consoleintr+0x50>

00000000800024b8 <consoleinit>:
    800024b8:	fe010113          	addi	sp,sp,-32
    800024bc:	00113c23          	sd	ra,24(sp)
    800024c0:	00813823          	sd	s0,16(sp)
    800024c4:	00913423          	sd	s1,8(sp)
    800024c8:	02010413          	addi	s0,sp,32
    800024cc:	00003497          	auipc	s1,0x3
    800024d0:	2ac48493          	addi	s1,s1,684 # 80005778 <cons>
    800024d4:	00048513          	mv	a0,s1
    800024d8:	00002597          	auipc	a1,0x2
    800024dc:	cf858593          	addi	a1,a1,-776 # 800041d0 <_ZZ12printIntegermE6digits+0x178>
    800024e0:	00001097          	auipc	ra,0x1
    800024e4:	d88080e7          	jalr	-632(ra) # 80003268 <initlock>
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	7ac080e7          	jalr	1964(ra) # 80002c94 <uartinit>
    800024f0:	01813083          	ld	ra,24(sp)
    800024f4:	01013403          	ld	s0,16(sp)
    800024f8:	00000797          	auipc	a5,0x0
    800024fc:	d9c78793          	addi	a5,a5,-612 # 80002294 <consoleread>
    80002500:	0af4bc23          	sd	a5,184(s1)
    80002504:	00000797          	auipc	a5,0x0
    80002508:	cec78793          	addi	a5,a5,-788 # 800021f0 <consolewrite>
    8000250c:	0cf4b023          	sd	a5,192(s1)
    80002510:	00813483          	ld	s1,8(sp)
    80002514:	02010113          	addi	sp,sp,32
    80002518:	00008067          	ret

000000008000251c <console_read>:
    8000251c:	ff010113          	addi	sp,sp,-16
    80002520:	00813423          	sd	s0,8(sp)
    80002524:	01010413          	addi	s0,sp,16
    80002528:	00813403          	ld	s0,8(sp)
    8000252c:	00003317          	auipc	t1,0x3
    80002530:	30433303          	ld	t1,772(t1) # 80005830 <devsw+0x10>
    80002534:	01010113          	addi	sp,sp,16
    80002538:	00030067          	jr	t1

000000008000253c <console_write>:
    8000253c:	ff010113          	addi	sp,sp,-16
    80002540:	00813423          	sd	s0,8(sp)
    80002544:	01010413          	addi	s0,sp,16
    80002548:	00813403          	ld	s0,8(sp)
    8000254c:	00003317          	auipc	t1,0x3
    80002550:	2ec33303          	ld	t1,748(t1) # 80005838 <devsw+0x18>
    80002554:	01010113          	addi	sp,sp,16
    80002558:	00030067          	jr	t1

000000008000255c <panic>:
    8000255c:	fe010113          	addi	sp,sp,-32
    80002560:	00113c23          	sd	ra,24(sp)
    80002564:	00813823          	sd	s0,16(sp)
    80002568:	00913423          	sd	s1,8(sp)
    8000256c:	02010413          	addi	s0,sp,32
    80002570:	00050493          	mv	s1,a0
    80002574:	00002517          	auipc	a0,0x2
    80002578:	c6450513          	addi	a0,a0,-924 # 800041d8 <_ZZ12printIntegermE6digits+0x180>
    8000257c:	00003797          	auipc	a5,0x3
    80002580:	3407ae23          	sw	zero,860(a5) # 800058d8 <pr+0x18>
    80002584:	00000097          	auipc	ra,0x0
    80002588:	034080e7          	jalr	52(ra) # 800025b8 <__printf>
    8000258c:	00048513          	mv	a0,s1
    80002590:	00000097          	auipc	ra,0x0
    80002594:	028080e7          	jalr	40(ra) # 800025b8 <__printf>
    80002598:	00002517          	auipc	a0,0x2
    8000259c:	b0850513          	addi	a0,a0,-1272 # 800040a0 <_ZZ12printIntegermE6digits+0x48>
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	018080e7          	jalr	24(ra) # 800025b8 <__printf>
    800025a8:	00100793          	li	a5,1
    800025ac:	00002717          	auipc	a4,0x2
    800025b0:	0af72a23          	sw	a5,180(a4) # 80004660 <panicked>
    800025b4:	0000006f          	j	800025b4 <panic+0x58>

00000000800025b8 <__printf>:
    800025b8:	f3010113          	addi	sp,sp,-208
    800025bc:	08813023          	sd	s0,128(sp)
    800025c0:	07313423          	sd	s3,104(sp)
    800025c4:	09010413          	addi	s0,sp,144
    800025c8:	05813023          	sd	s8,64(sp)
    800025cc:	08113423          	sd	ra,136(sp)
    800025d0:	06913c23          	sd	s1,120(sp)
    800025d4:	07213823          	sd	s2,112(sp)
    800025d8:	07413023          	sd	s4,96(sp)
    800025dc:	05513c23          	sd	s5,88(sp)
    800025e0:	05613823          	sd	s6,80(sp)
    800025e4:	05713423          	sd	s7,72(sp)
    800025e8:	03913c23          	sd	s9,56(sp)
    800025ec:	03a13823          	sd	s10,48(sp)
    800025f0:	03b13423          	sd	s11,40(sp)
    800025f4:	00003317          	auipc	t1,0x3
    800025f8:	2cc30313          	addi	t1,t1,716 # 800058c0 <pr>
    800025fc:	01832c03          	lw	s8,24(t1)
    80002600:	00b43423          	sd	a1,8(s0)
    80002604:	00c43823          	sd	a2,16(s0)
    80002608:	00d43c23          	sd	a3,24(s0)
    8000260c:	02e43023          	sd	a4,32(s0)
    80002610:	02f43423          	sd	a5,40(s0)
    80002614:	03043823          	sd	a6,48(s0)
    80002618:	03143c23          	sd	a7,56(s0)
    8000261c:	00050993          	mv	s3,a0
    80002620:	4a0c1663          	bnez	s8,80002acc <__printf+0x514>
    80002624:	60098c63          	beqz	s3,80002c3c <__printf+0x684>
    80002628:	0009c503          	lbu	a0,0(s3)
    8000262c:	00840793          	addi	a5,s0,8
    80002630:	f6f43c23          	sd	a5,-136(s0)
    80002634:	00000493          	li	s1,0
    80002638:	22050063          	beqz	a0,80002858 <__printf+0x2a0>
    8000263c:	00002a37          	lui	s4,0x2
    80002640:	00018ab7          	lui	s5,0x18
    80002644:	000f4b37          	lui	s6,0xf4
    80002648:	00989bb7          	lui	s7,0x989
    8000264c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002650:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002654:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002658:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000265c:	00148c9b          	addiw	s9,s1,1
    80002660:	02500793          	li	a5,37
    80002664:	01998933          	add	s2,s3,s9
    80002668:	38f51263          	bne	a0,a5,800029ec <__printf+0x434>
    8000266c:	00094783          	lbu	a5,0(s2)
    80002670:	00078c9b          	sext.w	s9,a5
    80002674:	1e078263          	beqz	a5,80002858 <__printf+0x2a0>
    80002678:	0024849b          	addiw	s1,s1,2
    8000267c:	07000713          	li	a4,112
    80002680:	00998933          	add	s2,s3,s1
    80002684:	38e78a63          	beq	a5,a4,80002a18 <__printf+0x460>
    80002688:	20f76863          	bltu	a4,a5,80002898 <__printf+0x2e0>
    8000268c:	42a78863          	beq	a5,a0,80002abc <__printf+0x504>
    80002690:	06400713          	li	a4,100
    80002694:	40e79663          	bne	a5,a4,80002aa0 <__printf+0x4e8>
    80002698:	f7843783          	ld	a5,-136(s0)
    8000269c:	0007a603          	lw	a2,0(a5)
    800026a0:	00878793          	addi	a5,a5,8
    800026a4:	f6f43c23          	sd	a5,-136(s0)
    800026a8:	42064a63          	bltz	a2,80002adc <__printf+0x524>
    800026ac:	00a00713          	li	a4,10
    800026b0:	02e677bb          	remuw	a5,a2,a4
    800026b4:	00002d97          	auipc	s11,0x2
    800026b8:	b4cd8d93          	addi	s11,s11,-1204 # 80004200 <digits>
    800026bc:	00900593          	li	a1,9
    800026c0:	0006051b          	sext.w	a0,a2
    800026c4:	00000c93          	li	s9,0
    800026c8:	02079793          	slli	a5,a5,0x20
    800026cc:	0207d793          	srli	a5,a5,0x20
    800026d0:	00fd87b3          	add	a5,s11,a5
    800026d4:	0007c783          	lbu	a5,0(a5)
    800026d8:	02e656bb          	divuw	a3,a2,a4
    800026dc:	f8f40023          	sb	a5,-128(s0)
    800026e0:	14c5d863          	bge	a1,a2,80002830 <__printf+0x278>
    800026e4:	06300593          	li	a1,99
    800026e8:	00100c93          	li	s9,1
    800026ec:	02e6f7bb          	remuw	a5,a3,a4
    800026f0:	02079793          	slli	a5,a5,0x20
    800026f4:	0207d793          	srli	a5,a5,0x20
    800026f8:	00fd87b3          	add	a5,s11,a5
    800026fc:	0007c783          	lbu	a5,0(a5)
    80002700:	02e6d73b          	divuw	a4,a3,a4
    80002704:	f8f400a3          	sb	a5,-127(s0)
    80002708:	12a5f463          	bgeu	a1,a0,80002830 <__printf+0x278>
    8000270c:	00a00693          	li	a3,10
    80002710:	00900593          	li	a1,9
    80002714:	02d777bb          	remuw	a5,a4,a3
    80002718:	02079793          	slli	a5,a5,0x20
    8000271c:	0207d793          	srli	a5,a5,0x20
    80002720:	00fd87b3          	add	a5,s11,a5
    80002724:	0007c503          	lbu	a0,0(a5)
    80002728:	02d757bb          	divuw	a5,a4,a3
    8000272c:	f8a40123          	sb	a0,-126(s0)
    80002730:	48e5f263          	bgeu	a1,a4,80002bb4 <__printf+0x5fc>
    80002734:	06300513          	li	a0,99
    80002738:	02d7f5bb          	remuw	a1,a5,a3
    8000273c:	02059593          	slli	a1,a1,0x20
    80002740:	0205d593          	srli	a1,a1,0x20
    80002744:	00bd85b3          	add	a1,s11,a1
    80002748:	0005c583          	lbu	a1,0(a1)
    8000274c:	02d7d7bb          	divuw	a5,a5,a3
    80002750:	f8b401a3          	sb	a1,-125(s0)
    80002754:	48e57263          	bgeu	a0,a4,80002bd8 <__printf+0x620>
    80002758:	3e700513          	li	a0,999
    8000275c:	02d7f5bb          	remuw	a1,a5,a3
    80002760:	02059593          	slli	a1,a1,0x20
    80002764:	0205d593          	srli	a1,a1,0x20
    80002768:	00bd85b3          	add	a1,s11,a1
    8000276c:	0005c583          	lbu	a1,0(a1)
    80002770:	02d7d7bb          	divuw	a5,a5,a3
    80002774:	f8b40223          	sb	a1,-124(s0)
    80002778:	46e57663          	bgeu	a0,a4,80002be4 <__printf+0x62c>
    8000277c:	02d7f5bb          	remuw	a1,a5,a3
    80002780:	02059593          	slli	a1,a1,0x20
    80002784:	0205d593          	srli	a1,a1,0x20
    80002788:	00bd85b3          	add	a1,s11,a1
    8000278c:	0005c583          	lbu	a1,0(a1)
    80002790:	02d7d7bb          	divuw	a5,a5,a3
    80002794:	f8b402a3          	sb	a1,-123(s0)
    80002798:	46ea7863          	bgeu	s4,a4,80002c08 <__printf+0x650>
    8000279c:	02d7f5bb          	remuw	a1,a5,a3
    800027a0:	02059593          	slli	a1,a1,0x20
    800027a4:	0205d593          	srli	a1,a1,0x20
    800027a8:	00bd85b3          	add	a1,s11,a1
    800027ac:	0005c583          	lbu	a1,0(a1)
    800027b0:	02d7d7bb          	divuw	a5,a5,a3
    800027b4:	f8b40323          	sb	a1,-122(s0)
    800027b8:	3eeaf863          	bgeu	s5,a4,80002ba8 <__printf+0x5f0>
    800027bc:	02d7f5bb          	remuw	a1,a5,a3
    800027c0:	02059593          	slli	a1,a1,0x20
    800027c4:	0205d593          	srli	a1,a1,0x20
    800027c8:	00bd85b3          	add	a1,s11,a1
    800027cc:	0005c583          	lbu	a1,0(a1)
    800027d0:	02d7d7bb          	divuw	a5,a5,a3
    800027d4:	f8b403a3          	sb	a1,-121(s0)
    800027d8:	42eb7e63          	bgeu	s6,a4,80002c14 <__printf+0x65c>
    800027dc:	02d7f5bb          	remuw	a1,a5,a3
    800027e0:	02059593          	slli	a1,a1,0x20
    800027e4:	0205d593          	srli	a1,a1,0x20
    800027e8:	00bd85b3          	add	a1,s11,a1
    800027ec:	0005c583          	lbu	a1,0(a1)
    800027f0:	02d7d7bb          	divuw	a5,a5,a3
    800027f4:	f8b40423          	sb	a1,-120(s0)
    800027f8:	42ebfc63          	bgeu	s7,a4,80002c30 <__printf+0x678>
    800027fc:	02079793          	slli	a5,a5,0x20
    80002800:	0207d793          	srli	a5,a5,0x20
    80002804:	00fd8db3          	add	s11,s11,a5
    80002808:	000dc703          	lbu	a4,0(s11)
    8000280c:	00a00793          	li	a5,10
    80002810:	00900c93          	li	s9,9
    80002814:	f8e404a3          	sb	a4,-119(s0)
    80002818:	00065c63          	bgez	a2,80002830 <__printf+0x278>
    8000281c:	f9040713          	addi	a4,s0,-112
    80002820:	00f70733          	add	a4,a4,a5
    80002824:	02d00693          	li	a3,45
    80002828:	fed70823          	sb	a3,-16(a4)
    8000282c:	00078c93          	mv	s9,a5
    80002830:	f8040793          	addi	a5,s0,-128
    80002834:	01978cb3          	add	s9,a5,s9
    80002838:	f7f40d13          	addi	s10,s0,-129
    8000283c:	000cc503          	lbu	a0,0(s9)
    80002840:	fffc8c93          	addi	s9,s9,-1
    80002844:	00000097          	auipc	ra,0x0
    80002848:	b90080e7          	jalr	-1136(ra) # 800023d4 <consputc>
    8000284c:	ffac98e3          	bne	s9,s10,8000283c <__printf+0x284>
    80002850:	00094503          	lbu	a0,0(s2)
    80002854:	e00514e3          	bnez	a0,8000265c <__printf+0xa4>
    80002858:	1a0c1663          	bnez	s8,80002a04 <__printf+0x44c>
    8000285c:	08813083          	ld	ra,136(sp)
    80002860:	08013403          	ld	s0,128(sp)
    80002864:	07813483          	ld	s1,120(sp)
    80002868:	07013903          	ld	s2,112(sp)
    8000286c:	06813983          	ld	s3,104(sp)
    80002870:	06013a03          	ld	s4,96(sp)
    80002874:	05813a83          	ld	s5,88(sp)
    80002878:	05013b03          	ld	s6,80(sp)
    8000287c:	04813b83          	ld	s7,72(sp)
    80002880:	04013c03          	ld	s8,64(sp)
    80002884:	03813c83          	ld	s9,56(sp)
    80002888:	03013d03          	ld	s10,48(sp)
    8000288c:	02813d83          	ld	s11,40(sp)
    80002890:	0d010113          	addi	sp,sp,208
    80002894:	00008067          	ret
    80002898:	07300713          	li	a4,115
    8000289c:	1ce78a63          	beq	a5,a4,80002a70 <__printf+0x4b8>
    800028a0:	07800713          	li	a4,120
    800028a4:	1ee79e63          	bne	a5,a4,80002aa0 <__printf+0x4e8>
    800028a8:	f7843783          	ld	a5,-136(s0)
    800028ac:	0007a703          	lw	a4,0(a5)
    800028b0:	00878793          	addi	a5,a5,8
    800028b4:	f6f43c23          	sd	a5,-136(s0)
    800028b8:	28074263          	bltz	a4,80002b3c <__printf+0x584>
    800028bc:	00002d97          	auipc	s11,0x2
    800028c0:	944d8d93          	addi	s11,s11,-1724 # 80004200 <digits>
    800028c4:	00f77793          	andi	a5,a4,15
    800028c8:	00fd87b3          	add	a5,s11,a5
    800028cc:	0007c683          	lbu	a3,0(a5)
    800028d0:	00f00613          	li	a2,15
    800028d4:	0007079b          	sext.w	a5,a4
    800028d8:	f8d40023          	sb	a3,-128(s0)
    800028dc:	0047559b          	srliw	a1,a4,0x4
    800028e0:	0047569b          	srliw	a3,a4,0x4
    800028e4:	00000c93          	li	s9,0
    800028e8:	0ee65063          	bge	a2,a4,800029c8 <__printf+0x410>
    800028ec:	00f6f693          	andi	a3,a3,15
    800028f0:	00dd86b3          	add	a3,s11,a3
    800028f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800028f8:	0087d79b          	srliw	a5,a5,0x8
    800028fc:	00100c93          	li	s9,1
    80002900:	f8d400a3          	sb	a3,-127(s0)
    80002904:	0cb67263          	bgeu	a2,a1,800029c8 <__printf+0x410>
    80002908:	00f7f693          	andi	a3,a5,15
    8000290c:	00dd86b3          	add	a3,s11,a3
    80002910:	0006c583          	lbu	a1,0(a3)
    80002914:	00f00613          	li	a2,15
    80002918:	0047d69b          	srliw	a3,a5,0x4
    8000291c:	f8b40123          	sb	a1,-126(s0)
    80002920:	0047d593          	srli	a1,a5,0x4
    80002924:	28f67e63          	bgeu	a2,a5,80002bc0 <__printf+0x608>
    80002928:	00f6f693          	andi	a3,a3,15
    8000292c:	00dd86b3          	add	a3,s11,a3
    80002930:	0006c503          	lbu	a0,0(a3)
    80002934:	0087d813          	srli	a6,a5,0x8
    80002938:	0087d69b          	srliw	a3,a5,0x8
    8000293c:	f8a401a3          	sb	a0,-125(s0)
    80002940:	28b67663          	bgeu	a2,a1,80002bcc <__printf+0x614>
    80002944:	00f6f693          	andi	a3,a3,15
    80002948:	00dd86b3          	add	a3,s11,a3
    8000294c:	0006c583          	lbu	a1,0(a3)
    80002950:	00c7d513          	srli	a0,a5,0xc
    80002954:	00c7d69b          	srliw	a3,a5,0xc
    80002958:	f8b40223          	sb	a1,-124(s0)
    8000295c:	29067a63          	bgeu	a2,a6,80002bf0 <__printf+0x638>
    80002960:	00f6f693          	andi	a3,a3,15
    80002964:	00dd86b3          	add	a3,s11,a3
    80002968:	0006c583          	lbu	a1,0(a3)
    8000296c:	0107d813          	srli	a6,a5,0x10
    80002970:	0107d69b          	srliw	a3,a5,0x10
    80002974:	f8b402a3          	sb	a1,-123(s0)
    80002978:	28a67263          	bgeu	a2,a0,80002bfc <__printf+0x644>
    8000297c:	00f6f693          	andi	a3,a3,15
    80002980:	00dd86b3          	add	a3,s11,a3
    80002984:	0006c683          	lbu	a3,0(a3)
    80002988:	0147d79b          	srliw	a5,a5,0x14
    8000298c:	f8d40323          	sb	a3,-122(s0)
    80002990:	21067663          	bgeu	a2,a6,80002b9c <__printf+0x5e4>
    80002994:	02079793          	slli	a5,a5,0x20
    80002998:	0207d793          	srli	a5,a5,0x20
    8000299c:	00fd8db3          	add	s11,s11,a5
    800029a0:	000dc683          	lbu	a3,0(s11)
    800029a4:	00800793          	li	a5,8
    800029a8:	00700c93          	li	s9,7
    800029ac:	f8d403a3          	sb	a3,-121(s0)
    800029b0:	00075c63          	bgez	a4,800029c8 <__printf+0x410>
    800029b4:	f9040713          	addi	a4,s0,-112
    800029b8:	00f70733          	add	a4,a4,a5
    800029bc:	02d00693          	li	a3,45
    800029c0:	fed70823          	sb	a3,-16(a4)
    800029c4:	00078c93          	mv	s9,a5
    800029c8:	f8040793          	addi	a5,s0,-128
    800029cc:	01978cb3          	add	s9,a5,s9
    800029d0:	f7f40d13          	addi	s10,s0,-129
    800029d4:	000cc503          	lbu	a0,0(s9)
    800029d8:	fffc8c93          	addi	s9,s9,-1
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	9f8080e7          	jalr	-1544(ra) # 800023d4 <consputc>
    800029e4:	ff9d18e3          	bne	s10,s9,800029d4 <__printf+0x41c>
    800029e8:	0100006f          	j	800029f8 <__printf+0x440>
    800029ec:	00000097          	auipc	ra,0x0
    800029f0:	9e8080e7          	jalr	-1560(ra) # 800023d4 <consputc>
    800029f4:	000c8493          	mv	s1,s9
    800029f8:	00094503          	lbu	a0,0(s2)
    800029fc:	c60510e3          	bnez	a0,8000265c <__printf+0xa4>
    80002a00:	e40c0ee3          	beqz	s8,8000285c <__printf+0x2a4>
    80002a04:	00003517          	auipc	a0,0x3
    80002a08:	ebc50513          	addi	a0,a0,-324 # 800058c0 <pr>
    80002a0c:	00001097          	auipc	ra,0x1
    80002a10:	94c080e7          	jalr	-1716(ra) # 80003358 <release>
    80002a14:	e49ff06f          	j	8000285c <__printf+0x2a4>
    80002a18:	f7843783          	ld	a5,-136(s0)
    80002a1c:	03000513          	li	a0,48
    80002a20:	01000d13          	li	s10,16
    80002a24:	00878713          	addi	a4,a5,8
    80002a28:	0007bc83          	ld	s9,0(a5)
    80002a2c:	f6e43c23          	sd	a4,-136(s0)
    80002a30:	00000097          	auipc	ra,0x0
    80002a34:	9a4080e7          	jalr	-1628(ra) # 800023d4 <consputc>
    80002a38:	07800513          	li	a0,120
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	998080e7          	jalr	-1640(ra) # 800023d4 <consputc>
    80002a44:	00001d97          	auipc	s11,0x1
    80002a48:	7bcd8d93          	addi	s11,s11,1980 # 80004200 <digits>
    80002a4c:	03ccd793          	srli	a5,s9,0x3c
    80002a50:	00fd87b3          	add	a5,s11,a5
    80002a54:	0007c503          	lbu	a0,0(a5)
    80002a58:	fffd0d1b          	addiw	s10,s10,-1
    80002a5c:	004c9c93          	slli	s9,s9,0x4
    80002a60:	00000097          	auipc	ra,0x0
    80002a64:	974080e7          	jalr	-1676(ra) # 800023d4 <consputc>
    80002a68:	fe0d12e3          	bnez	s10,80002a4c <__printf+0x494>
    80002a6c:	f8dff06f          	j	800029f8 <__printf+0x440>
    80002a70:	f7843783          	ld	a5,-136(s0)
    80002a74:	0007bc83          	ld	s9,0(a5)
    80002a78:	00878793          	addi	a5,a5,8
    80002a7c:	f6f43c23          	sd	a5,-136(s0)
    80002a80:	000c9a63          	bnez	s9,80002a94 <__printf+0x4dc>
    80002a84:	1080006f          	j	80002b8c <__printf+0x5d4>
    80002a88:	001c8c93          	addi	s9,s9,1
    80002a8c:	00000097          	auipc	ra,0x0
    80002a90:	948080e7          	jalr	-1720(ra) # 800023d4 <consputc>
    80002a94:	000cc503          	lbu	a0,0(s9)
    80002a98:	fe0518e3          	bnez	a0,80002a88 <__printf+0x4d0>
    80002a9c:	f5dff06f          	j	800029f8 <__printf+0x440>
    80002aa0:	02500513          	li	a0,37
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	930080e7          	jalr	-1744(ra) # 800023d4 <consputc>
    80002aac:	000c8513          	mv	a0,s9
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	924080e7          	jalr	-1756(ra) # 800023d4 <consputc>
    80002ab8:	f41ff06f          	j	800029f8 <__printf+0x440>
    80002abc:	02500513          	li	a0,37
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	914080e7          	jalr	-1772(ra) # 800023d4 <consputc>
    80002ac8:	f31ff06f          	j	800029f8 <__printf+0x440>
    80002acc:	00030513          	mv	a0,t1
    80002ad0:	00000097          	auipc	ra,0x0
    80002ad4:	7bc080e7          	jalr	1980(ra) # 8000328c <acquire>
    80002ad8:	b4dff06f          	j	80002624 <__printf+0x6c>
    80002adc:	40c0053b          	negw	a0,a2
    80002ae0:	00a00713          	li	a4,10
    80002ae4:	02e576bb          	remuw	a3,a0,a4
    80002ae8:	00001d97          	auipc	s11,0x1
    80002aec:	718d8d93          	addi	s11,s11,1816 # 80004200 <digits>
    80002af0:	ff700593          	li	a1,-9
    80002af4:	02069693          	slli	a3,a3,0x20
    80002af8:	0206d693          	srli	a3,a3,0x20
    80002afc:	00dd86b3          	add	a3,s11,a3
    80002b00:	0006c683          	lbu	a3,0(a3)
    80002b04:	02e557bb          	divuw	a5,a0,a4
    80002b08:	f8d40023          	sb	a3,-128(s0)
    80002b0c:	10b65e63          	bge	a2,a1,80002c28 <__printf+0x670>
    80002b10:	06300593          	li	a1,99
    80002b14:	02e7f6bb          	remuw	a3,a5,a4
    80002b18:	02069693          	slli	a3,a3,0x20
    80002b1c:	0206d693          	srli	a3,a3,0x20
    80002b20:	00dd86b3          	add	a3,s11,a3
    80002b24:	0006c683          	lbu	a3,0(a3)
    80002b28:	02e7d73b          	divuw	a4,a5,a4
    80002b2c:	00200793          	li	a5,2
    80002b30:	f8d400a3          	sb	a3,-127(s0)
    80002b34:	bca5ece3          	bltu	a1,a0,8000270c <__printf+0x154>
    80002b38:	ce5ff06f          	j	8000281c <__printf+0x264>
    80002b3c:	40e007bb          	negw	a5,a4
    80002b40:	00001d97          	auipc	s11,0x1
    80002b44:	6c0d8d93          	addi	s11,s11,1728 # 80004200 <digits>
    80002b48:	00f7f693          	andi	a3,a5,15
    80002b4c:	00dd86b3          	add	a3,s11,a3
    80002b50:	0006c583          	lbu	a1,0(a3)
    80002b54:	ff100613          	li	a2,-15
    80002b58:	0047d69b          	srliw	a3,a5,0x4
    80002b5c:	f8b40023          	sb	a1,-128(s0)
    80002b60:	0047d59b          	srliw	a1,a5,0x4
    80002b64:	0ac75e63          	bge	a4,a2,80002c20 <__printf+0x668>
    80002b68:	00f6f693          	andi	a3,a3,15
    80002b6c:	00dd86b3          	add	a3,s11,a3
    80002b70:	0006c603          	lbu	a2,0(a3)
    80002b74:	00f00693          	li	a3,15
    80002b78:	0087d79b          	srliw	a5,a5,0x8
    80002b7c:	f8c400a3          	sb	a2,-127(s0)
    80002b80:	d8b6e4e3          	bltu	a3,a1,80002908 <__printf+0x350>
    80002b84:	00200793          	li	a5,2
    80002b88:	e2dff06f          	j	800029b4 <__printf+0x3fc>
    80002b8c:	00001c97          	auipc	s9,0x1
    80002b90:	654c8c93          	addi	s9,s9,1620 # 800041e0 <_ZZ12printIntegermE6digits+0x188>
    80002b94:	02800513          	li	a0,40
    80002b98:	ef1ff06f          	j	80002a88 <__printf+0x4d0>
    80002b9c:	00700793          	li	a5,7
    80002ba0:	00600c93          	li	s9,6
    80002ba4:	e0dff06f          	j	800029b0 <__printf+0x3f8>
    80002ba8:	00700793          	li	a5,7
    80002bac:	00600c93          	li	s9,6
    80002bb0:	c69ff06f          	j	80002818 <__printf+0x260>
    80002bb4:	00300793          	li	a5,3
    80002bb8:	00200c93          	li	s9,2
    80002bbc:	c5dff06f          	j	80002818 <__printf+0x260>
    80002bc0:	00300793          	li	a5,3
    80002bc4:	00200c93          	li	s9,2
    80002bc8:	de9ff06f          	j	800029b0 <__printf+0x3f8>
    80002bcc:	00400793          	li	a5,4
    80002bd0:	00300c93          	li	s9,3
    80002bd4:	dddff06f          	j	800029b0 <__printf+0x3f8>
    80002bd8:	00400793          	li	a5,4
    80002bdc:	00300c93          	li	s9,3
    80002be0:	c39ff06f          	j	80002818 <__printf+0x260>
    80002be4:	00500793          	li	a5,5
    80002be8:	00400c93          	li	s9,4
    80002bec:	c2dff06f          	j	80002818 <__printf+0x260>
    80002bf0:	00500793          	li	a5,5
    80002bf4:	00400c93          	li	s9,4
    80002bf8:	db9ff06f          	j	800029b0 <__printf+0x3f8>
    80002bfc:	00600793          	li	a5,6
    80002c00:	00500c93          	li	s9,5
    80002c04:	dadff06f          	j	800029b0 <__printf+0x3f8>
    80002c08:	00600793          	li	a5,6
    80002c0c:	00500c93          	li	s9,5
    80002c10:	c09ff06f          	j	80002818 <__printf+0x260>
    80002c14:	00800793          	li	a5,8
    80002c18:	00700c93          	li	s9,7
    80002c1c:	bfdff06f          	j	80002818 <__printf+0x260>
    80002c20:	00100793          	li	a5,1
    80002c24:	d91ff06f          	j	800029b4 <__printf+0x3fc>
    80002c28:	00100793          	li	a5,1
    80002c2c:	bf1ff06f          	j	8000281c <__printf+0x264>
    80002c30:	00900793          	li	a5,9
    80002c34:	00800c93          	li	s9,8
    80002c38:	be1ff06f          	j	80002818 <__printf+0x260>
    80002c3c:	00001517          	auipc	a0,0x1
    80002c40:	5ac50513          	addi	a0,a0,1452 # 800041e8 <_ZZ12printIntegermE6digits+0x190>
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	918080e7          	jalr	-1768(ra) # 8000255c <panic>

0000000080002c4c <printfinit>:
    80002c4c:	fe010113          	addi	sp,sp,-32
    80002c50:	00813823          	sd	s0,16(sp)
    80002c54:	00913423          	sd	s1,8(sp)
    80002c58:	00113c23          	sd	ra,24(sp)
    80002c5c:	02010413          	addi	s0,sp,32
    80002c60:	00003497          	auipc	s1,0x3
    80002c64:	c6048493          	addi	s1,s1,-928 # 800058c0 <pr>
    80002c68:	00048513          	mv	a0,s1
    80002c6c:	00001597          	auipc	a1,0x1
    80002c70:	58c58593          	addi	a1,a1,1420 # 800041f8 <_ZZ12printIntegermE6digits+0x1a0>
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	5f4080e7          	jalr	1524(ra) # 80003268 <initlock>
    80002c7c:	01813083          	ld	ra,24(sp)
    80002c80:	01013403          	ld	s0,16(sp)
    80002c84:	0004ac23          	sw	zero,24(s1)
    80002c88:	00813483          	ld	s1,8(sp)
    80002c8c:	02010113          	addi	sp,sp,32
    80002c90:	00008067          	ret

0000000080002c94 <uartinit>:
    80002c94:	ff010113          	addi	sp,sp,-16
    80002c98:	00813423          	sd	s0,8(sp)
    80002c9c:	01010413          	addi	s0,sp,16
    80002ca0:	100007b7          	lui	a5,0x10000
    80002ca4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002ca8:	f8000713          	li	a4,-128
    80002cac:	00e781a3          	sb	a4,3(a5)
    80002cb0:	00300713          	li	a4,3
    80002cb4:	00e78023          	sb	a4,0(a5)
    80002cb8:	000780a3          	sb	zero,1(a5)
    80002cbc:	00e781a3          	sb	a4,3(a5)
    80002cc0:	00700693          	li	a3,7
    80002cc4:	00d78123          	sb	a3,2(a5)
    80002cc8:	00e780a3          	sb	a4,1(a5)
    80002ccc:	00813403          	ld	s0,8(sp)
    80002cd0:	01010113          	addi	sp,sp,16
    80002cd4:	00008067          	ret

0000000080002cd8 <uartputc>:
    80002cd8:	00002797          	auipc	a5,0x2
    80002cdc:	9887a783          	lw	a5,-1656(a5) # 80004660 <panicked>
    80002ce0:	00078463          	beqz	a5,80002ce8 <uartputc+0x10>
    80002ce4:	0000006f          	j	80002ce4 <uartputc+0xc>
    80002ce8:	fd010113          	addi	sp,sp,-48
    80002cec:	02813023          	sd	s0,32(sp)
    80002cf0:	00913c23          	sd	s1,24(sp)
    80002cf4:	01213823          	sd	s2,16(sp)
    80002cf8:	01313423          	sd	s3,8(sp)
    80002cfc:	02113423          	sd	ra,40(sp)
    80002d00:	03010413          	addi	s0,sp,48
    80002d04:	00002917          	auipc	s2,0x2
    80002d08:	96490913          	addi	s2,s2,-1692 # 80004668 <uart_tx_r>
    80002d0c:	00093783          	ld	a5,0(s2)
    80002d10:	00002497          	auipc	s1,0x2
    80002d14:	96048493          	addi	s1,s1,-1696 # 80004670 <uart_tx_w>
    80002d18:	0004b703          	ld	a4,0(s1)
    80002d1c:	02078693          	addi	a3,a5,32
    80002d20:	00050993          	mv	s3,a0
    80002d24:	02e69c63          	bne	a3,a4,80002d5c <uartputc+0x84>
    80002d28:	00001097          	auipc	ra,0x1
    80002d2c:	834080e7          	jalr	-1996(ra) # 8000355c <push_on>
    80002d30:	00093783          	ld	a5,0(s2)
    80002d34:	0004b703          	ld	a4,0(s1)
    80002d38:	02078793          	addi	a5,a5,32
    80002d3c:	00e79463          	bne	a5,a4,80002d44 <uartputc+0x6c>
    80002d40:	0000006f          	j	80002d40 <uartputc+0x68>
    80002d44:	00001097          	auipc	ra,0x1
    80002d48:	88c080e7          	jalr	-1908(ra) # 800035d0 <pop_on>
    80002d4c:	00093783          	ld	a5,0(s2)
    80002d50:	0004b703          	ld	a4,0(s1)
    80002d54:	02078693          	addi	a3,a5,32
    80002d58:	fce688e3          	beq	a3,a4,80002d28 <uartputc+0x50>
    80002d5c:	01f77693          	andi	a3,a4,31
    80002d60:	00003597          	auipc	a1,0x3
    80002d64:	b8058593          	addi	a1,a1,-1152 # 800058e0 <uart_tx_buf>
    80002d68:	00d586b3          	add	a3,a1,a3
    80002d6c:	00170713          	addi	a4,a4,1
    80002d70:	01368023          	sb	s3,0(a3)
    80002d74:	00e4b023          	sd	a4,0(s1)
    80002d78:	10000637          	lui	a2,0x10000
    80002d7c:	02f71063          	bne	a4,a5,80002d9c <uartputc+0xc4>
    80002d80:	0340006f          	j	80002db4 <uartputc+0xdc>
    80002d84:	00074703          	lbu	a4,0(a4)
    80002d88:	00f93023          	sd	a5,0(s2)
    80002d8c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002d90:	00093783          	ld	a5,0(s2)
    80002d94:	0004b703          	ld	a4,0(s1)
    80002d98:	00f70e63          	beq	a4,a5,80002db4 <uartputc+0xdc>
    80002d9c:	00564683          	lbu	a3,5(a2)
    80002da0:	01f7f713          	andi	a4,a5,31
    80002da4:	00e58733          	add	a4,a1,a4
    80002da8:	0206f693          	andi	a3,a3,32
    80002dac:	00178793          	addi	a5,a5,1
    80002db0:	fc069ae3          	bnez	a3,80002d84 <uartputc+0xac>
    80002db4:	02813083          	ld	ra,40(sp)
    80002db8:	02013403          	ld	s0,32(sp)
    80002dbc:	01813483          	ld	s1,24(sp)
    80002dc0:	01013903          	ld	s2,16(sp)
    80002dc4:	00813983          	ld	s3,8(sp)
    80002dc8:	03010113          	addi	sp,sp,48
    80002dcc:	00008067          	ret

0000000080002dd0 <uartputc_sync>:
    80002dd0:	ff010113          	addi	sp,sp,-16
    80002dd4:	00813423          	sd	s0,8(sp)
    80002dd8:	01010413          	addi	s0,sp,16
    80002ddc:	00002717          	auipc	a4,0x2
    80002de0:	88472703          	lw	a4,-1916(a4) # 80004660 <panicked>
    80002de4:	02071663          	bnez	a4,80002e10 <uartputc_sync+0x40>
    80002de8:	00050793          	mv	a5,a0
    80002dec:	100006b7          	lui	a3,0x10000
    80002df0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002df4:	02077713          	andi	a4,a4,32
    80002df8:	fe070ce3          	beqz	a4,80002df0 <uartputc_sync+0x20>
    80002dfc:	0ff7f793          	andi	a5,a5,255
    80002e00:	00f68023          	sb	a5,0(a3)
    80002e04:	00813403          	ld	s0,8(sp)
    80002e08:	01010113          	addi	sp,sp,16
    80002e0c:	00008067          	ret
    80002e10:	0000006f          	j	80002e10 <uartputc_sync+0x40>

0000000080002e14 <uartstart>:
    80002e14:	ff010113          	addi	sp,sp,-16
    80002e18:	00813423          	sd	s0,8(sp)
    80002e1c:	01010413          	addi	s0,sp,16
    80002e20:	00002617          	auipc	a2,0x2
    80002e24:	84860613          	addi	a2,a2,-1976 # 80004668 <uart_tx_r>
    80002e28:	00002517          	auipc	a0,0x2
    80002e2c:	84850513          	addi	a0,a0,-1976 # 80004670 <uart_tx_w>
    80002e30:	00063783          	ld	a5,0(a2)
    80002e34:	00053703          	ld	a4,0(a0)
    80002e38:	04f70263          	beq	a4,a5,80002e7c <uartstart+0x68>
    80002e3c:	100005b7          	lui	a1,0x10000
    80002e40:	00003817          	auipc	a6,0x3
    80002e44:	aa080813          	addi	a6,a6,-1376 # 800058e0 <uart_tx_buf>
    80002e48:	01c0006f          	j	80002e64 <uartstart+0x50>
    80002e4c:	0006c703          	lbu	a4,0(a3)
    80002e50:	00f63023          	sd	a5,0(a2)
    80002e54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002e58:	00063783          	ld	a5,0(a2)
    80002e5c:	00053703          	ld	a4,0(a0)
    80002e60:	00f70e63          	beq	a4,a5,80002e7c <uartstart+0x68>
    80002e64:	01f7f713          	andi	a4,a5,31
    80002e68:	00e806b3          	add	a3,a6,a4
    80002e6c:	0055c703          	lbu	a4,5(a1)
    80002e70:	00178793          	addi	a5,a5,1
    80002e74:	02077713          	andi	a4,a4,32
    80002e78:	fc071ae3          	bnez	a4,80002e4c <uartstart+0x38>
    80002e7c:	00813403          	ld	s0,8(sp)
    80002e80:	01010113          	addi	sp,sp,16
    80002e84:	00008067          	ret

0000000080002e88 <uartgetc>:
    80002e88:	ff010113          	addi	sp,sp,-16
    80002e8c:	00813423          	sd	s0,8(sp)
    80002e90:	01010413          	addi	s0,sp,16
    80002e94:	10000737          	lui	a4,0x10000
    80002e98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002e9c:	0017f793          	andi	a5,a5,1
    80002ea0:	00078c63          	beqz	a5,80002eb8 <uartgetc+0x30>
    80002ea4:	00074503          	lbu	a0,0(a4)
    80002ea8:	0ff57513          	andi	a0,a0,255
    80002eac:	00813403          	ld	s0,8(sp)
    80002eb0:	01010113          	addi	sp,sp,16
    80002eb4:	00008067          	ret
    80002eb8:	fff00513          	li	a0,-1
    80002ebc:	ff1ff06f          	j	80002eac <uartgetc+0x24>

0000000080002ec0 <uartintr>:
    80002ec0:	100007b7          	lui	a5,0x10000
    80002ec4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002ec8:	0017f793          	andi	a5,a5,1
    80002ecc:	0a078463          	beqz	a5,80002f74 <uartintr+0xb4>
    80002ed0:	fe010113          	addi	sp,sp,-32
    80002ed4:	00813823          	sd	s0,16(sp)
    80002ed8:	00913423          	sd	s1,8(sp)
    80002edc:	00113c23          	sd	ra,24(sp)
    80002ee0:	02010413          	addi	s0,sp,32
    80002ee4:	100004b7          	lui	s1,0x10000
    80002ee8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002eec:	0ff57513          	andi	a0,a0,255
    80002ef0:	fffff097          	auipc	ra,0xfffff
    80002ef4:	534080e7          	jalr	1332(ra) # 80002424 <consoleintr>
    80002ef8:	0054c783          	lbu	a5,5(s1)
    80002efc:	0017f793          	andi	a5,a5,1
    80002f00:	fe0794e3          	bnez	a5,80002ee8 <uartintr+0x28>
    80002f04:	00001617          	auipc	a2,0x1
    80002f08:	76460613          	addi	a2,a2,1892 # 80004668 <uart_tx_r>
    80002f0c:	00001517          	auipc	a0,0x1
    80002f10:	76450513          	addi	a0,a0,1892 # 80004670 <uart_tx_w>
    80002f14:	00063783          	ld	a5,0(a2)
    80002f18:	00053703          	ld	a4,0(a0)
    80002f1c:	04f70263          	beq	a4,a5,80002f60 <uartintr+0xa0>
    80002f20:	100005b7          	lui	a1,0x10000
    80002f24:	00003817          	auipc	a6,0x3
    80002f28:	9bc80813          	addi	a6,a6,-1604 # 800058e0 <uart_tx_buf>
    80002f2c:	01c0006f          	j	80002f48 <uartintr+0x88>
    80002f30:	0006c703          	lbu	a4,0(a3)
    80002f34:	00f63023          	sd	a5,0(a2)
    80002f38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002f3c:	00063783          	ld	a5,0(a2)
    80002f40:	00053703          	ld	a4,0(a0)
    80002f44:	00f70e63          	beq	a4,a5,80002f60 <uartintr+0xa0>
    80002f48:	01f7f713          	andi	a4,a5,31
    80002f4c:	00e806b3          	add	a3,a6,a4
    80002f50:	0055c703          	lbu	a4,5(a1)
    80002f54:	00178793          	addi	a5,a5,1
    80002f58:	02077713          	andi	a4,a4,32
    80002f5c:	fc071ae3          	bnez	a4,80002f30 <uartintr+0x70>
    80002f60:	01813083          	ld	ra,24(sp)
    80002f64:	01013403          	ld	s0,16(sp)
    80002f68:	00813483          	ld	s1,8(sp)
    80002f6c:	02010113          	addi	sp,sp,32
    80002f70:	00008067          	ret
    80002f74:	00001617          	auipc	a2,0x1
    80002f78:	6f460613          	addi	a2,a2,1780 # 80004668 <uart_tx_r>
    80002f7c:	00001517          	auipc	a0,0x1
    80002f80:	6f450513          	addi	a0,a0,1780 # 80004670 <uart_tx_w>
    80002f84:	00063783          	ld	a5,0(a2)
    80002f88:	00053703          	ld	a4,0(a0)
    80002f8c:	04f70263          	beq	a4,a5,80002fd0 <uartintr+0x110>
    80002f90:	100005b7          	lui	a1,0x10000
    80002f94:	00003817          	auipc	a6,0x3
    80002f98:	94c80813          	addi	a6,a6,-1716 # 800058e0 <uart_tx_buf>
    80002f9c:	01c0006f          	j	80002fb8 <uartintr+0xf8>
    80002fa0:	0006c703          	lbu	a4,0(a3)
    80002fa4:	00f63023          	sd	a5,0(a2)
    80002fa8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002fac:	00063783          	ld	a5,0(a2)
    80002fb0:	00053703          	ld	a4,0(a0)
    80002fb4:	02f70063          	beq	a4,a5,80002fd4 <uartintr+0x114>
    80002fb8:	01f7f713          	andi	a4,a5,31
    80002fbc:	00e806b3          	add	a3,a6,a4
    80002fc0:	0055c703          	lbu	a4,5(a1)
    80002fc4:	00178793          	addi	a5,a5,1
    80002fc8:	02077713          	andi	a4,a4,32
    80002fcc:	fc071ae3          	bnez	a4,80002fa0 <uartintr+0xe0>
    80002fd0:	00008067          	ret
    80002fd4:	00008067          	ret

0000000080002fd8 <kinit>:
    80002fd8:	fc010113          	addi	sp,sp,-64
    80002fdc:	02913423          	sd	s1,40(sp)
    80002fe0:	fffff7b7          	lui	a5,0xfffff
    80002fe4:	00004497          	auipc	s1,0x4
    80002fe8:	92b48493          	addi	s1,s1,-1749 # 8000690f <end+0xfff>
    80002fec:	02813823          	sd	s0,48(sp)
    80002ff0:	01313c23          	sd	s3,24(sp)
    80002ff4:	00f4f4b3          	and	s1,s1,a5
    80002ff8:	02113c23          	sd	ra,56(sp)
    80002ffc:	03213023          	sd	s2,32(sp)
    80003000:	01413823          	sd	s4,16(sp)
    80003004:	01513423          	sd	s5,8(sp)
    80003008:	04010413          	addi	s0,sp,64
    8000300c:	000017b7          	lui	a5,0x1
    80003010:	01100993          	li	s3,17
    80003014:	00f487b3          	add	a5,s1,a5
    80003018:	01b99993          	slli	s3,s3,0x1b
    8000301c:	06f9e063          	bltu	s3,a5,8000307c <kinit+0xa4>
    80003020:	00003a97          	auipc	s5,0x3
    80003024:	8f0a8a93          	addi	s5,s5,-1808 # 80005910 <end>
    80003028:	0754ec63          	bltu	s1,s5,800030a0 <kinit+0xc8>
    8000302c:	0734fa63          	bgeu	s1,s3,800030a0 <kinit+0xc8>
    80003030:	00088a37          	lui	s4,0x88
    80003034:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003038:	00001917          	auipc	s2,0x1
    8000303c:	64090913          	addi	s2,s2,1600 # 80004678 <kmem>
    80003040:	00ca1a13          	slli	s4,s4,0xc
    80003044:	0140006f          	j	80003058 <kinit+0x80>
    80003048:	000017b7          	lui	a5,0x1
    8000304c:	00f484b3          	add	s1,s1,a5
    80003050:	0554e863          	bltu	s1,s5,800030a0 <kinit+0xc8>
    80003054:	0534f663          	bgeu	s1,s3,800030a0 <kinit+0xc8>
    80003058:	00001637          	lui	a2,0x1
    8000305c:	00100593          	li	a1,1
    80003060:	00048513          	mv	a0,s1
    80003064:	00000097          	auipc	ra,0x0
    80003068:	5e4080e7          	jalr	1508(ra) # 80003648 <__memset>
    8000306c:	00093783          	ld	a5,0(s2)
    80003070:	00f4b023          	sd	a5,0(s1)
    80003074:	00993023          	sd	s1,0(s2)
    80003078:	fd4498e3          	bne	s1,s4,80003048 <kinit+0x70>
    8000307c:	03813083          	ld	ra,56(sp)
    80003080:	03013403          	ld	s0,48(sp)
    80003084:	02813483          	ld	s1,40(sp)
    80003088:	02013903          	ld	s2,32(sp)
    8000308c:	01813983          	ld	s3,24(sp)
    80003090:	01013a03          	ld	s4,16(sp)
    80003094:	00813a83          	ld	s5,8(sp)
    80003098:	04010113          	addi	sp,sp,64
    8000309c:	00008067          	ret
    800030a0:	00001517          	auipc	a0,0x1
    800030a4:	17850513          	addi	a0,a0,376 # 80004218 <digits+0x18>
    800030a8:	fffff097          	auipc	ra,0xfffff
    800030ac:	4b4080e7          	jalr	1204(ra) # 8000255c <panic>

00000000800030b0 <freerange>:
    800030b0:	fc010113          	addi	sp,sp,-64
    800030b4:	000017b7          	lui	a5,0x1
    800030b8:	02913423          	sd	s1,40(sp)
    800030bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800030c0:	009504b3          	add	s1,a0,s1
    800030c4:	fffff537          	lui	a0,0xfffff
    800030c8:	02813823          	sd	s0,48(sp)
    800030cc:	02113c23          	sd	ra,56(sp)
    800030d0:	03213023          	sd	s2,32(sp)
    800030d4:	01313c23          	sd	s3,24(sp)
    800030d8:	01413823          	sd	s4,16(sp)
    800030dc:	01513423          	sd	s5,8(sp)
    800030e0:	01613023          	sd	s6,0(sp)
    800030e4:	04010413          	addi	s0,sp,64
    800030e8:	00a4f4b3          	and	s1,s1,a0
    800030ec:	00f487b3          	add	a5,s1,a5
    800030f0:	06f5e463          	bltu	a1,a5,80003158 <freerange+0xa8>
    800030f4:	00003a97          	auipc	s5,0x3
    800030f8:	81ca8a93          	addi	s5,s5,-2020 # 80005910 <end>
    800030fc:	0954e263          	bltu	s1,s5,80003180 <freerange+0xd0>
    80003100:	01100993          	li	s3,17
    80003104:	01b99993          	slli	s3,s3,0x1b
    80003108:	0734fc63          	bgeu	s1,s3,80003180 <freerange+0xd0>
    8000310c:	00058a13          	mv	s4,a1
    80003110:	00001917          	auipc	s2,0x1
    80003114:	56890913          	addi	s2,s2,1384 # 80004678 <kmem>
    80003118:	00002b37          	lui	s6,0x2
    8000311c:	0140006f          	j	80003130 <freerange+0x80>
    80003120:	000017b7          	lui	a5,0x1
    80003124:	00f484b3          	add	s1,s1,a5
    80003128:	0554ec63          	bltu	s1,s5,80003180 <freerange+0xd0>
    8000312c:	0534fa63          	bgeu	s1,s3,80003180 <freerange+0xd0>
    80003130:	00001637          	lui	a2,0x1
    80003134:	00100593          	li	a1,1
    80003138:	00048513          	mv	a0,s1
    8000313c:	00000097          	auipc	ra,0x0
    80003140:	50c080e7          	jalr	1292(ra) # 80003648 <__memset>
    80003144:	00093703          	ld	a4,0(s2)
    80003148:	016487b3          	add	a5,s1,s6
    8000314c:	00e4b023          	sd	a4,0(s1)
    80003150:	00993023          	sd	s1,0(s2)
    80003154:	fcfa76e3          	bgeu	s4,a5,80003120 <freerange+0x70>
    80003158:	03813083          	ld	ra,56(sp)
    8000315c:	03013403          	ld	s0,48(sp)
    80003160:	02813483          	ld	s1,40(sp)
    80003164:	02013903          	ld	s2,32(sp)
    80003168:	01813983          	ld	s3,24(sp)
    8000316c:	01013a03          	ld	s4,16(sp)
    80003170:	00813a83          	ld	s5,8(sp)
    80003174:	00013b03          	ld	s6,0(sp)
    80003178:	04010113          	addi	sp,sp,64
    8000317c:	00008067          	ret
    80003180:	00001517          	auipc	a0,0x1
    80003184:	09850513          	addi	a0,a0,152 # 80004218 <digits+0x18>
    80003188:	fffff097          	auipc	ra,0xfffff
    8000318c:	3d4080e7          	jalr	980(ra) # 8000255c <panic>

0000000080003190 <kfree>:
    80003190:	fe010113          	addi	sp,sp,-32
    80003194:	00813823          	sd	s0,16(sp)
    80003198:	00113c23          	sd	ra,24(sp)
    8000319c:	00913423          	sd	s1,8(sp)
    800031a0:	02010413          	addi	s0,sp,32
    800031a4:	03451793          	slli	a5,a0,0x34
    800031a8:	04079c63          	bnez	a5,80003200 <kfree+0x70>
    800031ac:	00002797          	auipc	a5,0x2
    800031b0:	76478793          	addi	a5,a5,1892 # 80005910 <end>
    800031b4:	00050493          	mv	s1,a0
    800031b8:	04f56463          	bltu	a0,a5,80003200 <kfree+0x70>
    800031bc:	01100793          	li	a5,17
    800031c0:	01b79793          	slli	a5,a5,0x1b
    800031c4:	02f57e63          	bgeu	a0,a5,80003200 <kfree+0x70>
    800031c8:	00001637          	lui	a2,0x1
    800031cc:	00100593          	li	a1,1
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	478080e7          	jalr	1144(ra) # 80003648 <__memset>
    800031d8:	00001797          	auipc	a5,0x1
    800031dc:	4a078793          	addi	a5,a5,1184 # 80004678 <kmem>
    800031e0:	0007b703          	ld	a4,0(a5)
    800031e4:	01813083          	ld	ra,24(sp)
    800031e8:	01013403          	ld	s0,16(sp)
    800031ec:	00e4b023          	sd	a4,0(s1)
    800031f0:	0097b023          	sd	s1,0(a5)
    800031f4:	00813483          	ld	s1,8(sp)
    800031f8:	02010113          	addi	sp,sp,32
    800031fc:	00008067          	ret
    80003200:	00001517          	auipc	a0,0x1
    80003204:	01850513          	addi	a0,a0,24 # 80004218 <digits+0x18>
    80003208:	fffff097          	auipc	ra,0xfffff
    8000320c:	354080e7          	jalr	852(ra) # 8000255c <panic>

0000000080003210 <kalloc>:
    80003210:	fe010113          	addi	sp,sp,-32
    80003214:	00813823          	sd	s0,16(sp)
    80003218:	00913423          	sd	s1,8(sp)
    8000321c:	00113c23          	sd	ra,24(sp)
    80003220:	02010413          	addi	s0,sp,32
    80003224:	00001797          	auipc	a5,0x1
    80003228:	45478793          	addi	a5,a5,1108 # 80004678 <kmem>
    8000322c:	0007b483          	ld	s1,0(a5)
    80003230:	02048063          	beqz	s1,80003250 <kalloc+0x40>
    80003234:	0004b703          	ld	a4,0(s1)
    80003238:	00001637          	lui	a2,0x1
    8000323c:	00500593          	li	a1,5
    80003240:	00048513          	mv	a0,s1
    80003244:	00e7b023          	sd	a4,0(a5)
    80003248:	00000097          	auipc	ra,0x0
    8000324c:	400080e7          	jalr	1024(ra) # 80003648 <__memset>
    80003250:	01813083          	ld	ra,24(sp)
    80003254:	01013403          	ld	s0,16(sp)
    80003258:	00048513          	mv	a0,s1
    8000325c:	00813483          	ld	s1,8(sp)
    80003260:	02010113          	addi	sp,sp,32
    80003264:	00008067          	ret

0000000080003268 <initlock>:
    80003268:	ff010113          	addi	sp,sp,-16
    8000326c:	00813423          	sd	s0,8(sp)
    80003270:	01010413          	addi	s0,sp,16
    80003274:	00813403          	ld	s0,8(sp)
    80003278:	00b53423          	sd	a1,8(a0)
    8000327c:	00052023          	sw	zero,0(a0)
    80003280:	00053823          	sd	zero,16(a0)
    80003284:	01010113          	addi	sp,sp,16
    80003288:	00008067          	ret

000000008000328c <acquire>:
    8000328c:	fe010113          	addi	sp,sp,-32
    80003290:	00813823          	sd	s0,16(sp)
    80003294:	00913423          	sd	s1,8(sp)
    80003298:	00113c23          	sd	ra,24(sp)
    8000329c:	01213023          	sd	s2,0(sp)
    800032a0:	02010413          	addi	s0,sp,32
    800032a4:	00050493          	mv	s1,a0
    800032a8:	10002973          	csrr	s2,sstatus
    800032ac:	100027f3          	csrr	a5,sstatus
    800032b0:	ffd7f793          	andi	a5,a5,-3
    800032b4:	10079073          	csrw	sstatus,a5
    800032b8:	fffff097          	auipc	ra,0xfffff
    800032bc:	8e8080e7          	jalr	-1816(ra) # 80001ba0 <mycpu>
    800032c0:	07852783          	lw	a5,120(a0)
    800032c4:	06078e63          	beqz	a5,80003340 <acquire+0xb4>
    800032c8:	fffff097          	auipc	ra,0xfffff
    800032cc:	8d8080e7          	jalr	-1832(ra) # 80001ba0 <mycpu>
    800032d0:	07852783          	lw	a5,120(a0)
    800032d4:	0004a703          	lw	a4,0(s1)
    800032d8:	0017879b          	addiw	a5,a5,1
    800032dc:	06f52c23          	sw	a5,120(a0)
    800032e0:	04071063          	bnez	a4,80003320 <acquire+0x94>
    800032e4:	00100713          	li	a4,1
    800032e8:	00070793          	mv	a5,a4
    800032ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800032f0:	0007879b          	sext.w	a5,a5
    800032f4:	fe079ae3          	bnez	a5,800032e8 <acquire+0x5c>
    800032f8:	0ff0000f          	fence
    800032fc:	fffff097          	auipc	ra,0xfffff
    80003300:	8a4080e7          	jalr	-1884(ra) # 80001ba0 <mycpu>
    80003304:	01813083          	ld	ra,24(sp)
    80003308:	01013403          	ld	s0,16(sp)
    8000330c:	00a4b823          	sd	a0,16(s1)
    80003310:	00013903          	ld	s2,0(sp)
    80003314:	00813483          	ld	s1,8(sp)
    80003318:	02010113          	addi	sp,sp,32
    8000331c:	00008067          	ret
    80003320:	0104b903          	ld	s2,16(s1)
    80003324:	fffff097          	auipc	ra,0xfffff
    80003328:	87c080e7          	jalr	-1924(ra) # 80001ba0 <mycpu>
    8000332c:	faa91ce3          	bne	s2,a0,800032e4 <acquire+0x58>
    80003330:	00001517          	auipc	a0,0x1
    80003334:	ef050513          	addi	a0,a0,-272 # 80004220 <digits+0x20>
    80003338:	fffff097          	auipc	ra,0xfffff
    8000333c:	224080e7          	jalr	548(ra) # 8000255c <panic>
    80003340:	00195913          	srli	s2,s2,0x1
    80003344:	fffff097          	auipc	ra,0xfffff
    80003348:	85c080e7          	jalr	-1956(ra) # 80001ba0 <mycpu>
    8000334c:	00197913          	andi	s2,s2,1
    80003350:	07252e23          	sw	s2,124(a0)
    80003354:	f75ff06f          	j	800032c8 <acquire+0x3c>

0000000080003358 <release>:
    80003358:	fe010113          	addi	sp,sp,-32
    8000335c:	00813823          	sd	s0,16(sp)
    80003360:	00113c23          	sd	ra,24(sp)
    80003364:	00913423          	sd	s1,8(sp)
    80003368:	01213023          	sd	s2,0(sp)
    8000336c:	02010413          	addi	s0,sp,32
    80003370:	00052783          	lw	a5,0(a0)
    80003374:	00079a63          	bnez	a5,80003388 <release+0x30>
    80003378:	00001517          	auipc	a0,0x1
    8000337c:	eb050513          	addi	a0,a0,-336 # 80004228 <digits+0x28>
    80003380:	fffff097          	auipc	ra,0xfffff
    80003384:	1dc080e7          	jalr	476(ra) # 8000255c <panic>
    80003388:	01053903          	ld	s2,16(a0)
    8000338c:	00050493          	mv	s1,a0
    80003390:	fffff097          	auipc	ra,0xfffff
    80003394:	810080e7          	jalr	-2032(ra) # 80001ba0 <mycpu>
    80003398:	fea910e3          	bne	s2,a0,80003378 <release+0x20>
    8000339c:	0004b823          	sd	zero,16(s1)
    800033a0:	0ff0000f          	fence
    800033a4:	0f50000f          	fence	iorw,ow
    800033a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800033ac:	ffffe097          	auipc	ra,0xffffe
    800033b0:	7f4080e7          	jalr	2036(ra) # 80001ba0 <mycpu>
    800033b4:	100027f3          	csrr	a5,sstatus
    800033b8:	0027f793          	andi	a5,a5,2
    800033bc:	04079a63          	bnez	a5,80003410 <release+0xb8>
    800033c0:	07852783          	lw	a5,120(a0)
    800033c4:	02f05e63          	blez	a5,80003400 <release+0xa8>
    800033c8:	fff7871b          	addiw	a4,a5,-1
    800033cc:	06e52c23          	sw	a4,120(a0)
    800033d0:	00071c63          	bnez	a4,800033e8 <release+0x90>
    800033d4:	07c52783          	lw	a5,124(a0)
    800033d8:	00078863          	beqz	a5,800033e8 <release+0x90>
    800033dc:	100027f3          	csrr	a5,sstatus
    800033e0:	0027e793          	ori	a5,a5,2
    800033e4:	10079073          	csrw	sstatus,a5
    800033e8:	01813083          	ld	ra,24(sp)
    800033ec:	01013403          	ld	s0,16(sp)
    800033f0:	00813483          	ld	s1,8(sp)
    800033f4:	00013903          	ld	s2,0(sp)
    800033f8:	02010113          	addi	sp,sp,32
    800033fc:	00008067          	ret
    80003400:	00001517          	auipc	a0,0x1
    80003404:	e4850513          	addi	a0,a0,-440 # 80004248 <digits+0x48>
    80003408:	fffff097          	auipc	ra,0xfffff
    8000340c:	154080e7          	jalr	340(ra) # 8000255c <panic>
    80003410:	00001517          	auipc	a0,0x1
    80003414:	e2050513          	addi	a0,a0,-480 # 80004230 <digits+0x30>
    80003418:	fffff097          	auipc	ra,0xfffff
    8000341c:	144080e7          	jalr	324(ra) # 8000255c <panic>

0000000080003420 <holding>:
    80003420:	00052783          	lw	a5,0(a0)
    80003424:	00079663          	bnez	a5,80003430 <holding+0x10>
    80003428:	00000513          	li	a0,0
    8000342c:	00008067          	ret
    80003430:	fe010113          	addi	sp,sp,-32
    80003434:	00813823          	sd	s0,16(sp)
    80003438:	00913423          	sd	s1,8(sp)
    8000343c:	00113c23          	sd	ra,24(sp)
    80003440:	02010413          	addi	s0,sp,32
    80003444:	01053483          	ld	s1,16(a0)
    80003448:	ffffe097          	auipc	ra,0xffffe
    8000344c:	758080e7          	jalr	1880(ra) # 80001ba0 <mycpu>
    80003450:	01813083          	ld	ra,24(sp)
    80003454:	01013403          	ld	s0,16(sp)
    80003458:	40a48533          	sub	a0,s1,a0
    8000345c:	00153513          	seqz	a0,a0
    80003460:	00813483          	ld	s1,8(sp)
    80003464:	02010113          	addi	sp,sp,32
    80003468:	00008067          	ret

000000008000346c <push_off>:
    8000346c:	fe010113          	addi	sp,sp,-32
    80003470:	00813823          	sd	s0,16(sp)
    80003474:	00113c23          	sd	ra,24(sp)
    80003478:	00913423          	sd	s1,8(sp)
    8000347c:	02010413          	addi	s0,sp,32
    80003480:	100024f3          	csrr	s1,sstatus
    80003484:	100027f3          	csrr	a5,sstatus
    80003488:	ffd7f793          	andi	a5,a5,-3
    8000348c:	10079073          	csrw	sstatus,a5
    80003490:	ffffe097          	auipc	ra,0xffffe
    80003494:	710080e7          	jalr	1808(ra) # 80001ba0 <mycpu>
    80003498:	07852783          	lw	a5,120(a0)
    8000349c:	02078663          	beqz	a5,800034c8 <push_off+0x5c>
    800034a0:	ffffe097          	auipc	ra,0xffffe
    800034a4:	700080e7          	jalr	1792(ra) # 80001ba0 <mycpu>
    800034a8:	07852783          	lw	a5,120(a0)
    800034ac:	01813083          	ld	ra,24(sp)
    800034b0:	01013403          	ld	s0,16(sp)
    800034b4:	0017879b          	addiw	a5,a5,1
    800034b8:	06f52c23          	sw	a5,120(a0)
    800034bc:	00813483          	ld	s1,8(sp)
    800034c0:	02010113          	addi	sp,sp,32
    800034c4:	00008067          	ret
    800034c8:	0014d493          	srli	s1,s1,0x1
    800034cc:	ffffe097          	auipc	ra,0xffffe
    800034d0:	6d4080e7          	jalr	1748(ra) # 80001ba0 <mycpu>
    800034d4:	0014f493          	andi	s1,s1,1
    800034d8:	06952e23          	sw	s1,124(a0)
    800034dc:	fc5ff06f          	j	800034a0 <push_off+0x34>

00000000800034e0 <pop_off>:
    800034e0:	ff010113          	addi	sp,sp,-16
    800034e4:	00813023          	sd	s0,0(sp)
    800034e8:	00113423          	sd	ra,8(sp)
    800034ec:	01010413          	addi	s0,sp,16
    800034f0:	ffffe097          	auipc	ra,0xffffe
    800034f4:	6b0080e7          	jalr	1712(ra) # 80001ba0 <mycpu>
    800034f8:	100027f3          	csrr	a5,sstatus
    800034fc:	0027f793          	andi	a5,a5,2
    80003500:	04079663          	bnez	a5,8000354c <pop_off+0x6c>
    80003504:	07852783          	lw	a5,120(a0)
    80003508:	02f05a63          	blez	a5,8000353c <pop_off+0x5c>
    8000350c:	fff7871b          	addiw	a4,a5,-1
    80003510:	06e52c23          	sw	a4,120(a0)
    80003514:	00071c63          	bnez	a4,8000352c <pop_off+0x4c>
    80003518:	07c52783          	lw	a5,124(a0)
    8000351c:	00078863          	beqz	a5,8000352c <pop_off+0x4c>
    80003520:	100027f3          	csrr	a5,sstatus
    80003524:	0027e793          	ori	a5,a5,2
    80003528:	10079073          	csrw	sstatus,a5
    8000352c:	00813083          	ld	ra,8(sp)
    80003530:	00013403          	ld	s0,0(sp)
    80003534:	01010113          	addi	sp,sp,16
    80003538:	00008067          	ret
    8000353c:	00001517          	auipc	a0,0x1
    80003540:	d0c50513          	addi	a0,a0,-756 # 80004248 <digits+0x48>
    80003544:	fffff097          	auipc	ra,0xfffff
    80003548:	018080e7          	jalr	24(ra) # 8000255c <panic>
    8000354c:	00001517          	auipc	a0,0x1
    80003550:	ce450513          	addi	a0,a0,-796 # 80004230 <digits+0x30>
    80003554:	fffff097          	auipc	ra,0xfffff
    80003558:	008080e7          	jalr	8(ra) # 8000255c <panic>

000000008000355c <push_on>:
    8000355c:	fe010113          	addi	sp,sp,-32
    80003560:	00813823          	sd	s0,16(sp)
    80003564:	00113c23          	sd	ra,24(sp)
    80003568:	00913423          	sd	s1,8(sp)
    8000356c:	02010413          	addi	s0,sp,32
    80003570:	100024f3          	csrr	s1,sstatus
    80003574:	100027f3          	csrr	a5,sstatus
    80003578:	0027e793          	ori	a5,a5,2
    8000357c:	10079073          	csrw	sstatus,a5
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	620080e7          	jalr	1568(ra) # 80001ba0 <mycpu>
    80003588:	07852783          	lw	a5,120(a0)
    8000358c:	02078663          	beqz	a5,800035b8 <push_on+0x5c>
    80003590:	ffffe097          	auipc	ra,0xffffe
    80003594:	610080e7          	jalr	1552(ra) # 80001ba0 <mycpu>
    80003598:	07852783          	lw	a5,120(a0)
    8000359c:	01813083          	ld	ra,24(sp)
    800035a0:	01013403          	ld	s0,16(sp)
    800035a4:	0017879b          	addiw	a5,a5,1
    800035a8:	06f52c23          	sw	a5,120(a0)
    800035ac:	00813483          	ld	s1,8(sp)
    800035b0:	02010113          	addi	sp,sp,32
    800035b4:	00008067          	ret
    800035b8:	0014d493          	srli	s1,s1,0x1
    800035bc:	ffffe097          	auipc	ra,0xffffe
    800035c0:	5e4080e7          	jalr	1508(ra) # 80001ba0 <mycpu>
    800035c4:	0014f493          	andi	s1,s1,1
    800035c8:	06952e23          	sw	s1,124(a0)
    800035cc:	fc5ff06f          	j	80003590 <push_on+0x34>

00000000800035d0 <pop_on>:
    800035d0:	ff010113          	addi	sp,sp,-16
    800035d4:	00813023          	sd	s0,0(sp)
    800035d8:	00113423          	sd	ra,8(sp)
    800035dc:	01010413          	addi	s0,sp,16
    800035e0:	ffffe097          	auipc	ra,0xffffe
    800035e4:	5c0080e7          	jalr	1472(ra) # 80001ba0 <mycpu>
    800035e8:	100027f3          	csrr	a5,sstatus
    800035ec:	0027f793          	andi	a5,a5,2
    800035f0:	04078463          	beqz	a5,80003638 <pop_on+0x68>
    800035f4:	07852783          	lw	a5,120(a0)
    800035f8:	02f05863          	blez	a5,80003628 <pop_on+0x58>
    800035fc:	fff7879b          	addiw	a5,a5,-1
    80003600:	06f52c23          	sw	a5,120(a0)
    80003604:	07853783          	ld	a5,120(a0)
    80003608:	00079863          	bnez	a5,80003618 <pop_on+0x48>
    8000360c:	100027f3          	csrr	a5,sstatus
    80003610:	ffd7f793          	andi	a5,a5,-3
    80003614:	10079073          	csrw	sstatus,a5
    80003618:	00813083          	ld	ra,8(sp)
    8000361c:	00013403          	ld	s0,0(sp)
    80003620:	01010113          	addi	sp,sp,16
    80003624:	00008067          	ret
    80003628:	00001517          	auipc	a0,0x1
    8000362c:	c4850513          	addi	a0,a0,-952 # 80004270 <digits+0x70>
    80003630:	fffff097          	auipc	ra,0xfffff
    80003634:	f2c080e7          	jalr	-212(ra) # 8000255c <panic>
    80003638:	00001517          	auipc	a0,0x1
    8000363c:	c1850513          	addi	a0,a0,-1000 # 80004250 <digits+0x50>
    80003640:	fffff097          	auipc	ra,0xfffff
    80003644:	f1c080e7          	jalr	-228(ra) # 8000255c <panic>

0000000080003648 <__memset>:
    80003648:	ff010113          	addi	sp,sp,-16
    8000364c:	00813423          	sd	s0,8(sp)
    80003650:	01010413          	addi	s0,sp,16
    80003654:	1a060e63          	beqz	a2,80003810 <__memset+0x1c8>
    80003658:	40a007b3          	neg	a5,a0
    8000365c:	0077f793          	andi	a5,a5,7
    80003660:	00778693          	addi	a3,a5,7
    80003664:	00b00813          	li	a6,11
    80003668:	0ff5f593          	andi	a1,a1,255
    8000366c:	fff6071b          	addiw	a4,a2,-1
    80003670:	1b06e663          	bltu	a3,a6,8000381c <__memset+0x1d4>
    80003674:	1cd76463          	bltu	a4,a3,8000383c <__memset+0x1f4>
    80003678:	1a078e63          	beqz	a5,80003834 <__memset+0x1ec>
    8000367c:	00b50023          	sb	a1,0(a0)
    80003680:	00100713          	li	a4,1
    80003684:	1ae78463          	beq	a5,a4,8000382c <__memset+0x1e4>
    80003688:	00b500a3          	sb	a1,1(a0)
    8000368c:	00200713          	li	a4,2
    80003690:	1ae78a63          	beq	a5,a4,80003844 <__memset+0x1fc>
    80003694:	00b50123          	sb	a1,2(a0)
    80003698:	00300713          	li	a4,3
    8000369c:	18e78463          	beq	a5,a4,80003824 <__memset+0x1dc>
    800036a0:	00b501a3          	sb	a1,3(a0)
    800036a4:	00400713          	li	a4,4
    800036a8:	1ae78263          	beq	a5,a4,8000384c <__memset+0x204>
    800036ac:	00b50223          	sb	a1,4(a0)
    800036b0:	00500713          	li	a4,5
    800036b4:	1ae78063          	beq	a5,a4,80003854 <__memset+0x20c>
    800036b8:	00b502a3          	sb	a1,5(a0)
    800036bc:	00700713          	li	a4,7
    800036c0:	18e79e63          	bne	a5,a4,8000385c <__memset+0x214>
    800036c4:	00b50323          	sb	a1,6(a0)
    800036c8:	00700e93          	li	t4,7
    800036cc:	00859713          	slli	a4,a1,0x8
    800036d0:	00e5e733          	or	a4,a1,a4
    800036d4:	01059e13          	slli	t3,a1,0x10
    800036d8:	01c76e33          	or	t3,a4,t3
    800036dc:	01859313          	slli	t1,a1,0x18
    800036e0:	006e6333          	or	t1,t3,t1
    800036e4:	02059893          	slli	a7,a1,0x20
    800036e8:	40f60e3b          	subw	t3,a2,a5
    800036ec:	011368b3          	or	a7,t1,a7
    800036f0:	02859813          	slli	a6,a1,0x28
    800036f4:	0108e833          	or	a6,a7,a6
    800036f8:	03059693          	slli	a3,a1,0x30
    800036fc:	003e589b          	srliw	a7,t3,0x3
    80003700:	00d866b3          	or	a3,a6,a3
    80003704:	03859713          	slli	a4,a1,0x38
    80003708:	00389813          	slli	a6,a7,0x3
    8000370c:	00f507b3          	add	a5,a0,a5
    80003710:	00e6e733          	or	a4,a3,a4
    80003714:	000e089b          	sext.w	a7,t3
    80003718:	00f806b3          	add	a3,a6,a5
    8000371c:	00e7b023          	sd	a4,0(a5)
    80003720:	00878793          	addi	a5,a5,8
    80003724:	fed79ce3          	bne	a5,a3,8000371c <__memset+0xd4>
    80003728:	ff8e7793          	andi	a5,t3,-8
    8000372c:	0007871b          	sext.w	a4,a5
    80003730:	01d787bb          	addw	a5,a5,t4
    80003734:	0ce88e63          	beq	a7,a4,80003810 <__memset+0x1c8>
    80003738:	00f50733          	add	a4,a0,a5
    8000373c:	00b70023          	sb	a1,0(a4)
    80003740:	0017871b          	addiw	a4,a5,1
    80003744:	0cc77663          	bgeu	a4,a2,80003810 <__memset+0x1c8>
    80003748:	00e50733          	add	a4,a0,a4
    8000374c:	00b70023          	sb	a1,0(a4)
    80003750:	0027871b          	addiw	a4,a5,2
    80003754:	0ac77e63          	bgeu	a4,a2,80003810 <__memset+0x1c8>
    80003758:	00e50733          	add	a4,a0,a4
    8000375c:	00b70023          	sb	a1,0(a4)
    80003760:	0037871b          	addiw	a4,a5,3
    80003764:	0ac77663          	bgeu	a4,a2,80003810 <__memset+0x1c8>
    80003768:	00e50733          	add	a4,a0,a4
    8000376c:	00b70023          	sb	a1,0(a4)
    80003770:	0047871b          	addiw	a4,a5,4
    80003774:	08c77e63          	bgeu	a4,a2,80003810 <__memset+0x1c8>
    80003778:	00e50733          	add	a4,a0,a4
    8000377c:	00b70023          	sb	a1,0(a4)
    80003780:	0057871b          	addiw	a4,a5,5
    80003784:	08c77663          	bgeu	a4,a2,80003810 <__memset+0x1c8>
    80003788:	00e50733          	add	a4,a0,a4
    8000378c:	00b70023          	sb	a1,0(a4)
    80003790:	0067871b          	addiw	a4,a5,6
    80003794:	06c77e63          	bgeu	a4,a2,80003810 <__memset+0x1c8>
    80003798:	00e50733          	add	a4,a0,a4
    8000379c:	00b70023          	sb	a1,0(a4)
    800037a0:	0077871b          	addiw	a4,a5,7
    800037a4:	06c77663          	bgeu	a4,a2,80003810 <__memset+0x1c8>
    800037a8:	00e50733          	add	a4,a0,a4
    800037ac:	00b70023          	sb	a1,0(a4)
    800037b0:	0087871b          	addiw	a4,a5,8
    800037b4:	04c77e63          	bgeu	a4,a2,80003810 <__memset+0x1c8>
    800037b8:	00e50733          	add	a4,a0,a4
    800037bc:	00b70023          	sb	a1,0(a4)
    800037c0:	0097871b          	addiw	a4,a5,9
    800037c4:	04c77663          	bgeu	a4,a2,80003810 <__memset+0x1c8>
    800037c8:	00e50733          	add	a4,a0,a4
    800037cc:	00b70023          	sb	a1,0(a4)
    800037d0:	00a7871b          	addiw	a4,a5,10
    800037d4:	02c77e63          	bgeu	a4,a2,80003810 <__memset+0x1c8>
    800037d8:	00e50733          	add	a4,a0,a4
    800037dc:	00b70023          	sb	a1,0(a4)
    800037e0:	00b7871b          	addiw	a4,a5,11
    800037e4:	02c77663          	bgeu	a4,a2,80003810 <__memset+0x1c8>
    800037e8:	00e50733          	add	a4,a0,a4
    800037ec:	00b70023          	sb	a1,0(a4)
    800037f0:	00c7871b          	addiw	a4,a5,12
    800037f4:	00c77e63          	bgeu	a4,a2,80003810 <__memset+0x1c8>
    800037f8:	00e50733          	add	a4,a0,a4
    800037fc:	00b70023          	sb	a1,0(a4)
    80003800:	00d7879b          	addiw	a5,a5,13
    80003804:	00c7f663          	bgeu	a5,a2,80003810 <__memset+0x1c8>
    80003808:	00f507b3          	add	a5,a0,a5
    8000380c:	00b78023          	sb	a1,0(a5)
    80003810:	00813403          	ld	s0,8(sp)
    80003814:	01010113          	addi	sp,sp,16
    80003818:	00008067          	ret
    8000381c:	00b00693          	li	a3,11
    80003820:	e55ff06f          	j	80003674 <__memset+0x2c>
    80003824:	00300e93          	li	t4,3
    80003828:	ea5ff06f          	j	800036cc <__memset+0x84>
    8000382c:	00100e93          	li	t4,1
    80003830:	e9dff06f          	j	800036cc <__memset+0x84>
    80003834:	00000e93          	li	t4,0
    80003838:	e95ff06f          	j	800036cc <__memset+0x84>
    8000383c:	00000793          	li	a5,0
    80003840:	ef9ff06f          	j	80003738 <__memset+0xf0>
    80003844:	00200e93          	li	t4,2
    80003848:	e85ff06f          	j	800036cc <__memset+0x84>
    8000384c:	00400e93          	li	t4,4
    80003850:	e7dff06f          	j	800036cc <__memset+0x84>
    80003854:	00500e93          	li	t4,5
    80003858:	e75ff06f          	j	800036cc <__memset+0x84>
    8000385c:	00600e93          	li	t4,6
    80003860:	e6dff06f          	j	800036cc <__memset+0x84>

0000000080003864 <__memmove>:
    80003864:	ff010113          	addi	sp,sp,-16
    80003868:	00813423          	sd	s0,8(sp)
    8000386c:	01010413          	addi	s0,sp,16
    80003870:	0e060863          	beqz	a2,80003960 <__memmove+0xfc>
    80003874:	fff6069b          	addiw	a3,a2,-1
    80003878:	0006881b          	sext.w	a6,a3
    8000387c:	0ea5e863          	bltu	a1,a0,8000396c <__memmove+0x108>
    80003880:	00758713          	addi	a4,a1,7
    80003884:	00a5e7b3          	or	a5,a1,a0
    80003888:	40a70733          	sub	a4,a4,a0
    8000388c:	0077f793          	andi	a5,a5,7
    80003890:	00f73713          	sltiu	a4,a4,15
    80003894:	00174713          	xori	a4,a4,1
    80003898:	0017b793          	seqz	a5,a5
    8000389c:	00e7f7b3          	and	a5,a5,a4
    800038a0:	10078863          	beqz	a5,800039b0 <__memmove+0x14c>
    800038a4:	00900793          	li	a5,9
    800038a8:	1107f463          	bgeu	a5,a6,800039b0 <__memmove+0x14c>
    800038ac:	0036581b          	srliw	a6,a2,0x3
    800038b0:	fff8081b          	addiw	a6,a6,-1
    800038b4:	02081813          	slli	a6,a6,0x20
    800038b8:	01d85893          	srli	a7,a6,0x1d
    800038bc:	00858813          	addi	a6,a1,8
    800038c0:	00058793          	mv	a5,a1
    800038c4:	00050713          	mv	a4,a0
    800038c8:	01088833          	add	a6,a7,a6
    800038cc:	0007b883          	ld	a7,0(a5)
    800038d0:	00878793          	addi	a5,a5,8
    800038d4:	00870713          	addi	a4,a4,8
    800038d8:	ff173c23          	sd	a7,-8(a4)
    800038dc:	ff0798e3          	bne	a5,a6,800038cc <__memmove+0x68>
    800038e0:	ff867713          	andi	a4,a2,-8
    800038e4:	02071793          	slli	a5,a4,0x20
    800038e8:	0207d793          	srli	a5,a5,0x20
    800038ec:	00f585b3          	add	a1,a1,a5
    800038f0:	40e686bb          	subw	a3,a3,a4
    800038f4:	00f507b3          	add	a5,a0,a5
    800038f8:	06e60463          	beq	a2,a4,80003960 <__memmove+0xfc>
    800038fc:	0005c703          	lbu	a4,0(a1)
    80003900:	00e78023          	sb	a4,0(a5)
    80003904:	04068e63          	beqz	a3,80003960 <__memmove+0xfc>
    80003908:	0015c603          	lbu	a2,1(a1)
    8000390c:	00100713          	li	a4,1
    80003910:	00c780a3          	sb	a2,1(a5)
    80003914:	04e68663          	beq	a3,a4,80003960 <__memmove+0xfc>
    80003918:	0025c603          	lbu	a2,2(a1)
    8000391c:	00200713          	li	a4,2
    80003920:	00c78123          	sb	a2,2(a5)
    80003924:	02e68e63          	beq	a3,a4,80003960 <__memmove+0xfc>
    80003928:	0035c603          	lbu	a2,3(a1)
    8000392c:	00300713          	li	a4,3
    80003930:	00c781a3          	sb	a2,3(a5)
    80003934:	02e68663          	beq	a3,a4,80003960 <__memmove+0xfc>
    80003938:	0045c603          	lbu	a2,4(a1)
    8000393c:	00400713          	li	a4,4
    80003940:	00c78223          	sb	a2,4(a5)
    80003944:	00e68e63          	beq	a3,a4,80003960 <__memmove+0xfc>
    80003948:	0055c603          	lbu	a2,5(a1)
    8000394c:	00500713          	li	a4,5
    80003950:	00c782a3          	sb	a2,5(a5)
    80003954:	00e68663          	beq	a3,a4,80003960 <__memmove+0xfc>
    80003958:	0065c703          	lbu	a4,6(a1)
    8000395c:	00e78323          	sb	a4,6(a5)
    80003960:	00813403          	ld	s0,8(sp)
    80003964:	01010113          	addi	sp,sp,16
    80003968:	00008067          	ret
    8000396c:	02061713          	slli	a4,a2,0x20
    80003970:	02075713          	srli	a4,a4,0x20
    80003974:	00e587b3          	add	a5,a1,a4
    80003978:	f0f574e3          	bgeu	a0,a5,80003880 <__memmove+0x1c>
    8000397c:	02069613          	slli	a2,a3,0x20
    80003980:	02065613          	srli	a2,a2,0x20
    80003984:	fff64613          	not	a2,a2
    80003988:	00e50733          	add	a4,a0,a4
    8000398c:	00c78633          	add	a2,a5,a2
    80003990:	fff7c683          	lbu	a3,-1(a5)
    80003994:	fff78793          	addi	a5,a5,-1
    80003998:	fff70713          	addi	a4,a4,-1
    8000399c:	00d70023          	sb	a3,0(a4)
    800039a0:	fec798e3          	bne	a5,a2,80003990 <__memmove+0x12c>
    800039a4:	00813403          	ld	s0,8(sp)
    800039a8:	01010113          	addi	sp,sp,16
    800039ac:	00008067          	ret
    800039b0:	02069713          	slli	a4,a3,0x20
    800039b4:	02075713          	srli	a4,a4,0x20
    800039b8:	00170713          	addi	a4,a4,1
    800039bc:	00e50733          	add	a4,a0,a4
    800039c0:	00050793          	mv	a5,a0
    800039c4:	0005c683          	lbu	a3,0(a1)
    800039c8:	00178793          	addi	a5,a5,1
    800039cc:	00158593          	addi	a1,a1,1
    800039d0:	fed78fa3          	sb	a3,-1(a5)
    800039d4:	fee798e3          	bne	a5,a4,800039c4 <__memmove+0x160>
    800039d8:	f89ff06f          	j	80003960 <__memmove+0xfc>

00000000800039dc <__mem_free>:
    800039dc:	ff010113          	addi	sp,sp,-16
    800039e0:	00813423          	sd	s0,8(sp)
    800039e4:	01010413          	addi	s0,sp,16
    800039e8:	00001597          	auipc	a1,0x1
    800039ec:	c9858593          	addi	a1,a1,-872 # 80004680 <freep>
    800039f0:	0005b783          	ld	a5,0(a1)
    800039f4:	ff050693          	addi	a3,a0,-16
    800039f8:	0007b703          	ld	a4,0(a5)
    800039fc:	00d7fc63          	bgeu	a5,a3,80003a14 <__mem_free+0x38>
    80003a00:	00e6ee63          	bltu	a3,a4,80003a1c <__mem_free+0x40>
    80003a04:	00e7fc63          	bgeu	a5,a4,80003a1c <__mem_free+0x40>
    80003a08:	00070793          	mv	a5,a4
    80003a0c:	0007b703          	ld	a4,0(a5)
    80003a10:	fed7e8e3          	bltu	a5,a3,80003a00 <__mem_free+0x24>
    80003a14:	fee7eae3          	bltu	a5,a4,80003a08 <__mem_free+0x2c>
    80003a18:	fee6f8e3          	bgeu	a3,a4,80003a08 <__mem_free+0x2c>
    80003a1c:	ff852803          	lw	a6,-8(a0)
    80003a20:	02081613          	slli	a2,a6,0x20
    80003a24:	01c65613          	srli	a2,a2,0x1c
    80003a28:	00c68633          	add	a2,a3,a2
    80003a2c:	02c70a63          	beq	a4,a2,80003a60 <__mem_free+0x84>
    80003a30:	fee53823          	sd	a4,-16(a0)
    80003a34:	0087a503          	lw	a0,8(a5)
    80003a38:	02051613          	slli	a2,a0,0x20
    80003a3c:	01c65613          	srli	a2,a2,0x1c
    80003a40:	00c78633          	add	a2,a5,a2
    80003a44:	04c68263          	beq	a3,a2,80003a88 <__mem_free+0xac>
    80003a48:	00813403          	ld	s0,8(sp)
    80003a4c:	00d7b023          	sd	a3,0(a5)
    80003a50:	00f5b023          	sd	a5,0(a1)
    80003a54:	00000513          	li	a0,0
    80003a58:	01010113          	addi	sp,sp,16
    80003a5c:	00008067          	ret
    80003a60:	00872603          	lw	a2,8(a4)
    80003a64:	00073703          	ld	a4,0(a4)
    80003a68:	0106083b          	addw	a6,a2,a6
    80003a6c:	ff052c23          	sw	a6,-8(a0)
    80003a70:	fee53823          	sd	a4,-16(a0)
    80003a74:	0087a503          	lw	a0,8(a5)
    80003a78:	02051613          	slli	a2,a0,0x20
    80003a7c:	01c65613          	srli	a2,a2,0x1c
    80003a80:	00c78633          	add	a2,a5,a2
    80003a84:	fcc692e3          	bne	a3,a2,80003a48 <__mem_free+0x6c>
    80003a88:	00813403          	ld	s0,8(sp)
    80003a8c:	0105053b          	addw	a0,a0,a6
    80003a90:	00a7a423          	sw	a0,8(a5)
    80003a94:	00e7b023          	sd	a4,0(a5)
    80003a98:	00f5b023          	sd	a5,0(a1)
    80003a9c:	00000513          	li	a0,0
    80003aa0:	01010113          	addi	sp,sp,16
    80003aa4:	00008067          	ret

0000000080003aa8 <__mem_alloc>:
    80003aa8:	fc010113          	addi	sp,sp,-64
    80003aac:	02813823          	sd	s0,48(sp)
    80003ab0:	02913423          	sd	s1,40(sp)
    80003ab4:	03213023          	sd	s2,32(sp)
    80003ab8:	01513423          	sd	s5,8(sp)
    80003abc:	02113c23          	sd	ra,56(sp)
    80003ac0:	01313c23          	sd	s3,24(sp)
    80003ac4:	01413823          	sd	s4,16(sp)
    80003ac8:	01613023          	sd	s6,0(sp)
    80003acc:	04010413          	addi	s0,sp,64
    80003ad0:	00001a97          	auipc	s5,0x1
    80003ad4:	bb0a8a93          	addi	s5,s5,-1104 # 80004680 <freep>
    80003ad8:	00f50913          	addi	s2,a0,15
    80003adc:	000ab683          	ld	a3,0(s5)
    80003ae0:	00495913          	srli	s2,s2,0x4
    80003ae4:	0019049b          	addiw	s1,s2,1
    80003ae8:	00048913          	mv	s2,s1
    80003aec:	0c068c63          	beqz	a3,80003bc4 <__mem_alloc+0x11c>
    80003af0:	0006b503          	ld	a0,0(a3)
    80003af4:	00852703          	lw	a4,8(a0)
    80003af8:	10977063          	bgeu	a4,s1,80003bf8 <__mem_alloc+0x150>
    80003afc:	000017b7          	lui	a5,0x1
    80003b00:	0009099b          	sext.w	s3,s2
    80003b04:	0af4e863          	bltu	s1,a5,80003bb4 <__mem_alloc+0x10c>
    80003b08:	02099a13          	slli	s4,s3,0x20
    80003b0c:	01ca5a13          	srli	s4,s4,0x1c
    80003b10:	fff00b13          	li	s6,-1
    80003b14:	0100006f          	j	80003b24 <__mem_alloc+0x7c>
    80003b18:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003b1c:	00852703          	lw	a4,8(a0)
    80003b20:	04977463          	bgeu	a4,s1,80003b68 <__mem_alloc+0xc0>
    80003b24:	00050793          	mv	a5,a0
    80003b28:	fea698e3          	bne	a3,a0,80003b18 <__mem_alloc+0x70>
    80003b2c:	000a0513          	mv	a0,s4
    80003b30:	00000097          	auipc	ra,0x0
    80003b34:	1f0080e7          	jalr	496(ra) # 80003d20 <kvmincrease>
    80003b38:	00050793          	mv	a5,a0
    80003b3c:	01050513          	addi	a0,a0,16
    80003b40:	07678e63          	beq	a5,s6,80003bbc <__mem_alloc+0x114>
    80003b44:	0137a423          	sw	s3,8(a5)
    80003b48:	00000097          	auipc	ra,0x0
    80003b4c:	e94080e7          	jalr	-364(ra) # 800039dc <__mem_free>
    80003b50:	000ab783          	ld	a5,0(s5)
    80003b54:	06078463          	beqz	a5,80003bbc <__mem_alloc+0x114>
    80003b58:	0007b503          	ld	a0,0(a5)
    80003b5c:	00078693          	mv	a3,a5
    80003b60:	00852703          	lw	a4,8(a0)
    80003b64:	fc9760e3          	bltu	a4,s1,80003b24 <__mem_alloc+0x7c>
    80003b68:	08e48263          	beq	s1,a4,80003bec <__mem_alloc+0x144>
    80003b6c:	4127073b          	subw	a4,a4,s2
    80003b70:	02071693          	slli	a3,a4,0x20
    80003b74:	01c6d693          	srli	a3,a3,0x1c
    80003b78:	00e52423          	sw	a4,8(a0)
    80003b7c:	00d50533          	add	a0,a0,a3
    80003b80:	01252423          	sw	s2,8(a0)
    80003b84:	00fab023          	sd	a5,0(s5)
    80003b88:	01050513          	addi	a0,a0,16
    80003b8c:	03813083          	ld	ra,56(sp)
    80003b90:	03013403          	ld	s0,48(sp)
    80003b94:	02813483          	ld	s1,40(sp)
    80003b98:	02013903          	ld	s2,32(sp)
    80003b9c:	01813983          	ld	s3,24(sp)
    80003ba0:	01013a03          	ld	s4,16(sp)
    80003ba4:	00813a83          	ld	s5,8(sp)
    80003ba8:	00013b03          	ld	s6,0(sp)
    80003bac:	04010113          	addi	sp,sp,64
    80003bb0:	00008067          	ret
    80003bb4:	000019b7          	lui	s3,0x1
    80003bb8:	f51ff06f          	j	80003b08 <__mem_alloc+0x60>
    80003bbc:	00000513          	li	a0,0
    80003bc0:	fcdff06f          	j	80003b8c <__mem_alloc+0xe4>
    80003bc4:	00002797          	auipc	a5,0x2
    80003bc8:	d3c78793          	addi	a5,a5,-708 # 80005900 <base>
    80003bcc:	00078513          	mv	a0,a5
    80003bd0:	00fab023          	sd	a5,0(s5)
    80003bd4:	00f7b023          	sd	a5,0(a5)
    80003bd8:	00000713          	li	a4,0
    80003bdc:	00002797          	auipc	a5,0x2
    80003be0:	d207a623          	sw	zero,-724(a5) # 80005908 <base+0x8>
    80003be4:	00050693          	mv	a3,a0
    80003be8:	f11ff06f          	j	80003af8 <__mem_alloc+0x50>
    80003bec:	00053703          	ld	a4,0(a0)
    80003bf0:	00e7b023          	sd	a4,0(a5)
    80003bf4:	f91ff06f          	j	80003b84 <__mem_alloc+0xdc>
    80003bf8:	00068793          	mv	a5,a3
    80003bfc:	f6dff06f          	j	80003b68 <__mem_alloc+0xc0>

0000000080003c00 <__putc>:
    80003c00:	fe010113          	addi	sp,sp,-32
    80003c04:	00813823          	sd	s0,16(sp)
    80003c08:	00113c23          	sd	ra,24(sp)
    80003c0c:	02010413          	addi	s0,sp,32
    80003c10:	00050793          	mv	a5,a0
    80003c14:	fef40593          	addi	a1,s0,-17
    80003c18:	00100613          	li	a2,1
    80003c1c:	00000513          	li	a0,0
    80003c20:	fef407a3          	sb	a5,-17(s0)
    80003c24:	fffff097          	auipc	ra,0xfffff
    80003c28:	918080e7          	jalr	-1768(ra) # 8000253c <console_write>
    80003c2c:	01813083          	ld	ra,24(sp)
    80003c30:	01013403          	ld	s0,16(sp)
    80003c34:	02010113          	addi	sp,sp,32
    80003c38:	00008067          	ret

0000000080003c3c <__getc>:
    80003c3c:	fe010113          	addi	sp,sp,-32
    80003c40:	00813823          	sd	s0,16(sp)
    80003c44:	00113c23          	sd	ra,24(sp)
    80003c48:	02010413          	addi	s0,sp,32
    80003c4c:	fe840593          	addi	a1,s0,-24
    80003c50:	00100613          	li	a2,1
    80003c54:	00000513          	li	a0,0
    80003c58:	fffff097          	auipc	ra,0xfffff
    80003c5c:	8c4080e7          	jalr	-1852(ra) # 8000251c <console_read>
    80003c60:	fe844503          	lbu	a0,-24(s0)
    80003c64:	01813083          	ld	ra,24(sp)
    80003c68:	01013403          	ld	s0,16(sp)
    80003c6c:	02010113          	addi	sp,sp,32
    80003c70:	00008067          	ret

0000000080003c74 <console_handler>:
    80003c74:	fe010113          	addi	sp,sp,-32
    80003c78:	00813823          	sd	s0,16(sp)
    80003c7c:	00113c23          	sd	ra,24(sp)
    80003c80:	00913423          	sd	s1,8(sp)
    80003c84:	02010413          	addi	s0,sp,32
    80003c88:	14202773          	csrr	a4,scause
    80003c8c:	100027f3          	csrr	a5,sstatus
    80003c90:	0027f793          	andi	a5,a5,2
    80003c94:	06079e63          	bnez	a5,80003d10 <console_handler+0x9c>
    80003c98:	00074c63          	bltz	a4,80003cb0 <console_handler+0x3c>
    80003c9c:	01813083          	ld	ra,24(sp)
    80003ca0:	01013403          	ld	s0,16(sp)
    80003ca4:	00813483          	ld	s1,8(sp)
    80003ca8:	02010113          	addi	sp,sp,32
    80003cac:	00008067          	ret
    80003cb0:	0ff77713          	andi	a4,a4,255
    80003cb4:	00900793          	li	a5,9
    80003cb8:	fef712e3          	bne	a4,a5,80003c9c <console_handler+0x28>
    80003cbc:	ffffe097          	auipc	ra,0xffffe
    80003cc0:	4b8080e7          	jalr	1208(ra) # 80002174 <plic_claim>
    80003cc4:	00a00793          	li	a5,10
    80003cc8:	00050493          	mv	s1,a0
    80003ccc:	02f50c63          	beq	a0,a5,80003d04 <console_handler+0x90>
    80003cd0:	fc0506e3          	beqz	a0,80003c9c <console_handler+0x28>
    80003cd4:	00050593          	mv	a1,a0
    80003cd8:	00000517          	auipc	a0,0x0
    80003cdc:	4a050513          	addi	a0,a0,1184 # 80004178 <_ZZ12printIntegermE6digits+0x120>
    80003ce0:	fffff097          	auipc	ra,0xfffff
    80003ce4:	8d8080e7          	jalr	-1832(ra) # 800025b8 <__printf>
    80003ce8:	01013403          	ld	s0,16(sp)
    80003cec:	01813083          	ld	ra,24(sp)
    80003cf0:	00048513          	mv	a0,s1
    80003cf4:	00813483          	ld	s1,8(sp)
    80003cf8:	02010113          	addi	sp,sp,32
    80003cfc:	ffffe317          	auipc	t1,0xffffe
    80003d00:	4b030067          	jr	1200(t1) # 800021ac <plic_complete>
    80003d04:	fffff097          	auipc	ra,0xfffff
    80003d08:	1bc080e7          	jalr	444(ra) # 80002ec0 <uartintr>
    80003d0c:	fddff06f          	j	80003ce8 <console_handler+0x74>
    80003d10:	00000517          	auipc	a0,0x0
    80003d14:	56850513          	addi	a0,a0,1384 # 80004278 <digits+0x78>
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	844080e7          	jalr	-1980(ra) # 8000255c <panic>

0000000080003d20 <kvmincrease>:
    80003d20:	fe010113          	addi	sp,sp,-32
    80003d24:	01213023          	sd	s2,0(sp)
    80003d28:	00001937          	lui	s2,0x1
    80003d2c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003d30:	00813823          	sd	s0,16(sp)
    80003d34:	00113c23          	sd	ra,24(sp)
    80003d38:	00913423          	sd	s1,8(sp)
    80003d3c:	02010413          	addi	s0,sp,32
    80003d40:	01250933          	add	s2,a0,s2
    80003d44:	00c95913          	srli	s2,s2,0xc
    80003d48:	02090863          	beqz	s2,80003d78 <kvmincrease+0x58>
    80003d4c:	00000493          	li	s1,0
    80003d50:	00148493          	addi	s1,s1,1
    80003d54:	fffff097          	auipc	ra,0xfffff
    80003d58:	4bc080e7          	jalr	1212(ra) # 80003210 <kalloc>
    80003d5c:	fe991ae3          	bne	s2,s1,80003d50 <kvmincrease+0x30>
    80003d60:	01813083          	ld	ra,24(sp)
    80003d64:	01013403          	ld	s0,16(sp)
    80003d68:	00813483          	ld	s1,8(sp)
    80003d6c:	00013903          	ld	s2,0(sp)
    80003d70:	02010113          	addi	sp,sp,32
    80003d74:	00008067          	ret
    80003d78:	01813083          	ld	ra,24(sp)
    80003d7c:	01013403          	ld	s0,16(sp)
    80003d80:	00813483          	ld	s1,8(sp)
    80003d84:	00013903          	ld	s2,0(sp)
    80003d88:	00000513          	li	a0,0
    80003d8c:	02010113          	addi	sp,sp,32
    80003d90:	00008067          	ret
	...
