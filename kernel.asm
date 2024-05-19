
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	ba813103          	ld	sp,-1112(sp) # 80005ba8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	005020ef          	jal	ra,80002820 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001184:	0b4010ef          	jal	ra,80002238 <_ZN5Riscv20handleSupervisorTrapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    80001204:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001208:	10010113          	addi	sp,sp,256


    8000120c:	10200073          	sret

0000000080001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001214:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)
    80001220:	00008067          	ret

0000000080001224 <_Z4testv>:
            }
        }
    }
}

void test() {
    80001224:	ff010113          	addi	sp,sp,-16
    80001228:	00113423          	sd	ra,8(sp)
    8000122c:	00813023          	sd	s0,0(sp)
    80001230:	01010413          	addi	s0,sp,16
    printString("C: TEST INSIDE\n");
    80001234:	00004517          	auipc	a0,0x4
    80001238:	dcc50513          	addi	a0,a0,-564 # 80005000 <kvmincrease+0x3e0>
    8000123c:	00001097          	auipc	ra,0x1
    80001240:	468080e7          	jalr	1128(ra) # 800026a4 <_Z11printStringPKc>
}
    80001244:	00813083          	ld	ra,8(sp)
    80001248:	00013403          	ld	s0,0(sp)
    8000124c:	01010113          	addi	sp,sp,16
    80001250:	00008067          	ret

0000000080001254 <_ZL9fibonaccim>:
static uint64 fibonacci(uint64 n) {
    80001254:	fe010113          	addi	sp,sp,-32
    80001258:	00113c23          	sd	ra,24(sp)
    8000125c:	00813823          	sd	s0,16(sp)
    80001260:	00913423          	sd	s1,8(sp)
    80001264:	01213023          	sd	s2,0(sp)
    80001268:	02010413          	addi	s0,sp,32
    8000126c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {
    80001270:	00100793          	li	a5,1
    80001274:	02a7f863          	bgeu	a5,a0,800012a4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0)
    80001278:	00a00793          	li	a5,10
    8000127c:	02f577b3          	remu	a5,a0,a5
    80001280:	02078e63          	beqz	a5,800012bc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001284:	fff48513          	addi	a0,s1,-1
    80001288:	00000097          	auipc	ra,0x0
    8000128c:	fcc080e7          	jalr	-52(ra) # 80001254 <_ZL9fibonaccim>
    80001290:	00050913          	mv	s2,a0
    80001294:	ffe48513          	addi	a0,s1,-2
    80001298:	00000097          	auipc	ra,0x0
    8000129c:	fbc080e7          	jalr	-68(ra) # 80001254 <_ZL9fibonaccim>
    800012a0:	00a90533          	add	a0,s2,a0
}
    800012a4:	01813083          	ld	ra,24(sp)
    800012a8:	01013403          	ld	s0,16(sp)
    800012ac:	00813483          	ld	s1,8(sp)
    800012b0:	00013903          	ld	s2,0(sp)
    800012b4:	02010113          	addi	sp,sp,32
    800012b8:	00008067          	ret
        TCB::yield();
    800012bc:	00001097          	auipc	ra,0x1
    800012c0:	dac080e7          	jalr	-596(ra) # 80002068 <_ZN3TCB5yieldEv>
    800012c4:	fc1ff06f          	j	80001284 <_ZL9fibonaccim+0x30>

00000000800012c8 <_Z11workerBodyAv>:
void workerBodyA() {
    800012c8:	fe010113          	addi	sp,sp,-32
    800012cc:	00113c23          	sd	ra,24(sp)
    800012d0:	00813823          	sd	s0,16(sp)
    800012d4:	00913423          	sd	s1,8(sp)
    800012d8:	02010413          	addi	s0,sp,32
    TCB::time_sleep(50);
    800012dc:	03200513          	li	a0,50
    800012e0:	00001097          	auipc	ra,0x1
    800012e4:	f00080e7          	jalr	-256(ra) # 800021e0 <_ZN3TCB10time_sleepEm>
    for (uint64 i = 0; i < 10; i++) {
    800012e8:	00000493          	li	s1,0
    800012ec:	0300006f          	j	8000131c <_Z11workerBodyAv+0x54>
        for (uint64 j = 0; j < 10000; ++j) {
    800012f0:	00168693          	addi	a3,a3,1
    800012f4:	000027b7          	lui	a5,0x2
    800012f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800012fc:	00d7ee63          	bltu	a5,a3,80001318 <_Z11workerBodyAv+0x50>
            for (uint64 k = 0; k < 30000; ++k) {
    80001300:	00000713          	li	a4,0
    80001304:	000077b7          	lui	a5,0x7
    80001308:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000130c:	fee7e2e3          	bltu	a5,a4,800012f0 <_Z11workerBodyAv+0x28>
    80001310:	00170713          	addi	a4,a4,1
    80001314:	ff1ff06f          	j	80001304 <_Z11workerBodyAv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001318:	00148493          	addi	s1,s1,1
    8000131c:	00900793          	li	a5,9
    80001320:	0297ec63          	bltu	a5,s1,80001358 <_Z11workerBodyAv+0x90>
        printString("A: i=");
    80001324:	00004517          	auipc	a0,0x4
    80001328:	cec50513          	addi	a0,a0,-788 # 80005010 <kvmincrease+0x3f0>
    8000132c:	00001097          	auipc	ra,0x1
    80001330:	378080e7          	jalr	888(ra) # 800026a4 <_Z11printStringPKc>
        printInteger(i);
    80001334:	00048513          	mv	a0,s1
    80001338:	00001097          	auipc	ra,0x1
    8000133c:	3dc080e7          	jalr	988(ra) # 80002714 <_Z12printIntegerm>
        printString("\n");
    80001340:	00004517          	auipc	a0,0x4
    80001344:	e1850513          	addi	a0,a0,-488 # 80005158 <kvmincrease+0x538>
    80001348:	00001097          	auipc	ra,0x1
    8000134c:	35c080e7          	jalr	860(ra) # 800026a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; ++j) {
    80001350:	00000693          	li	a3,0
    80001354:	fa1ff06f          	j	800012f4 <_Z11workerBodyAv+0x2c>
}
    80001358:	01813083          	ld	ra,24(sp)
    8000135c:	01013403          	ld	s0,16(sp)
    80001360:	00813483          	ld	s1,8(sp)
    80001364:	02010113          	addi	sp,sp,32
    80001368:	00008067          	ret

000000008000136c <_Z11workerBodyBv>:
void workerBodyB() {
    8000136c:	fe010113          	addi	sp,sp,-32
    80001370:	00113c23          	sd	ra,24(sp)
    80001374:	00813823          	sd	s0,16(sp)
    80001378:	00913423          	sd	s1,8(sp)
    8000137c:	02010413          	addi	s0,sp,32
    TCB::time_sleep(100);
    80001380:	06400513          	li	a0,100
    80001384:	00001097          	auipc	ra,0x1
    80001388:	e5c080e7          	jalr	-420(ra) # 800021e0 <_ZN3TCB10time_sleepEm>
    for (uint64 i = 0; i < 16; i++) {
    8000138c:	00000493          	li	s1,0
    80001390:	0300006f          	j	800013c0 <_Z11workerBodyBv+0x54>
        for (uint64 j = 0; j < 10000; ++j) {
    80001394:	00168693          	addi	a3,a3,1
    80001398:	000027b7          	lui	a5,0x2
    8000139c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800013a0:	00d7ee63          	bltu	a5,a3,800013bc <_Z11workerBodyBv+0x50>
            for (uint64 k = 0; k < 30000; ++k) {
    800013a4:	00000713          	li	a4,0
    800013a8:	000077b7          	lui	a5,0x7
    800013ac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800013b0:	fee7e2e3          	bltu	a5,a4,80001394 <_Z11workerBodyBv+0x28>
    800013b4:	00170713          	addi	a4,a4,1
    800013b8:	ff1ff06f          	j	800013a8 <_Z11workerBodyBv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800013bc:	00148493          	addi	s1,s1,1
    800013c0:	00f00793          	li	a5,15
    800013c4:	0297ec63          	bltu	a5,s1,800013fc <_Z11workerBodyBv+0x90>
        printString("B: i=");
    800013c8:	00004517          	auipc	a0,0x4
    800013cc:	c5050513          	addi	a0,a0,-944 # 80005018 <kvmincrease+0x3f8>
    800013d0:	00001097          	auipc	ra,0x1
    800013d4:	2d4080e7          	jalr	724(ra) # 800026a4 <_Z11printStringPKc>
        printInteger(i);
    800013d8:	00048513          	mv	a0,s1
    800013dc:	00001097          	auipc	ra,0x1
    800013e0:	338080e7          	jalr	824(ra) # 80002714 <_Z12printIntegerm>
        printString("\n");
    800013e4:	00004517          	auipc	a0,0x4
    800013e8:	d7450513          	addi	a0,a0,-652 # 80005158 <kvmincrease+0x538>
    800013ec:	00001097          	auipc	ra,0x1
    800013f0:	2b8080e7          	jalr	696(ra) # 800026a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; ++j) {
    800013f4:	00000693          	li	a3,0
    800013f8:	fa1ff06f          	j	80001398 <_Z11workerBodyBv+0x2c>
}
    800013fc:	01813083          	ld	ra,24(sp)
    80001400:	01013403          	ld	s0,16(sp)
    80001404:	00813483          	ld	s1,8(sp)
    80001408:	02010113          	addi	sp,sp,32
    8000140c:	00008067          	ret

0000000080001410 <_Z11workerBodyCv>:

void workerBodyC() {
    80001410:	fe010113          	addi	sp,sp,-32
    80001414:	00113c23          	sd	ra,24(sp)
    80001418:	00813823          	sd	s0,16(sp)
    8000141c:	00913423          	sd	s1,8(sp)
    80001420:	01213023          	sd	s2,0(sp)
    80001424:	02010413          	addi	s0,sp,32
    TCB::time_sleep(150);
    80001428:	09600513          	li	a0,150
    8000142c:	00001097          	auipc	ra,0x1
    80001430:	db4080e7          	jalr	-588(ra) # 800021e0 <_ZN3TCB10time_sleepEm>
    uint8 i = 0;
    80001434:	00000493          	li	s1,0
    for (; i < 3; i++) {
    80001438:	00200793          	li	a5,2
    8000143c:	0297ee63          	bltu	a5,s1,80001478 <_Z11workerBodyCv+0x68>
        printString("C: i=");
    80001440:	00004517          	auipc	a0,0x4
    80001444:	be050513          	addi	a0,a0,-1056 # 80005020 <kvmincrease+0x400>
    80001448:	00001097          	auipc	ra,0x1
    8000144c:	25c080e7          	jalr	604(ra) # 800026a4 <_Z11printStringPKc>
        printInteger(i);
    80001450:	00048513          	mv	a0,s1
    80001454:	00001097          	auipc	ra,0x1
    80001458:	2c0080e7          	jalr	704(ra) # 80002714 <_Z12printIntegerm>
        printString("\n");
    8000145c:	00004517          	auipc	a0,0x4
    80001460:	cfc50513          	addi	a0,a0,-772 # 80005158 <kvmincrease+0x538>
    80001464:	00001097          	auipc	ra,0x1
    80001468:	240080e7          	jalr	576(ra) # 800026a4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000146c:	0014849b          	addiw	s1,s1,1
    80001470:	0ff4f493          	andi	s1,s1,255
    80001474:	fc5ff06f          	j	80001438 <_Z11workerBodyCv+0x28>
    }
    printString("C: yield\n");
    80001478:	00004517          	auipc	a0,0x4
    8000147c:	bb050513          	addi	a0,a0,-1104 # 80005028 <kvmincrease+0x408>
    80001480:	00001097          	auipc	ra,0x1
    80001484:	224080e7          	jalr	548(ra) # 800026a4 <_Z11printStringPKc>
    __asm__("li t1, 7");
    80001488:	00700313          	li	t1,7
    TCB::yield();
    8000148c:	00001097          	auipc	ra,0x1
    80001490:	bdc080e7          	jalr	-1060(ra) # 80002068 <_ZN3TCB5yieldEv>
    uint64 t1 = 0;
    __asm__("mv %[t1], t1" : [t1] "=r"(t1));
    80001494:	00030913          	mv	s2,t1
    printString("C: t1=");
    80001498:	00004517          	auipc	a0,0x4
    8000149c:	ba050513          	addi	a0,a0,-1120 # 80005038 <kvmincrease+0x418>
    800014a0:	00001097          	auipc	ra,0x1
    800014a4:	204080e7          	jalr	516(ra) # 800026a4 <_Z11printStringPKc>
    printInteger(t1);
    800014a8:	00090513          	mv	a0,s2
    800014ac:	00001097          	auipc	ra,0x1
    800014b0:	268080e7          	jalr	616(ra) # 80002714 <_Z12printIntegerm>
    printString("\n");
    800014b4:	00004517          	auipc	a0,0x4
    800014b8:	ca450513          	addi	a0,a0,-860 # 80005158 <kvmincrease+0x538>
    800014bc:	00001097          	auipc	ra,0x1
    800014c0:	1e8080e7          	jalr	488(ra) # 800026a4 <_Z11printStringPKc>
    //printString("C: EXITING\n");
    //TCB::thread_exit();
    printString("C: TEST BEFORE\n");
    800014c4:	00004517          	auipc	a0,0x4
    800014c8:	b7c50513          	addi	a0,a0,-1156 # 80005040 <kvmincrease+0x420>
    800014cc:	00001097          	auipc	ra,0x1
    800014d0:	1d8080e7          	jalr	472(ra) # 800026a4 <_Z11printStringPKc>
    //TCB::time_sleep(50);
    TCB *testtcb = TCB::createThread(test);
    800014d4:	00000517          	auipc	a0,0x0
    800014d8:	d5050513          	addi	a0,a0,-688 # 80001224 <_Z4testv>
    800014dc:	00001097          	auipc	ra,0x1
    800014e0:	a08080e7          	jalr	-1528(ra) # 80001ee4 <_ZN3TCB12createThreadEPFvvE>
    800014e4:	00050913          	mv	s2,a0
    //TCB::time_sleep(100);
    printString("C: TEST RIGHT AFTER\n");
    800014e8:	00004517          	auipc	a0,0x4
    800014ec:	b6850513          	addi	a0,a0,-1176 # 80005050 <kvmincrease+0x430>
    800014f0:	00001097          	auipc	ra,0x1
    800014f4:	1b4080e7          	jalr	436(ra) # 800026a4 <_Z11printStringPKc>
    //using Body = void (*)();

    static TCB *createThread(Body body);
    static TCB *createIdleThread(Body body);

    bool isFinished() const { return finished; }
    800014f8:	02894783          	lbu	a5,40(s2)
    while (!testtcb->isFinished()) {
    800014fc:	00079863          	bnez	a5,8000150c <_Z11workerBodyCv+0xfc>
        TCB::yield();
    80001500:	00001097          	auipc	ra,0x1
    80001504:	b68080e7          	jalr	-1176(ra) # 80002068 <_ZN3TCB5yieldEv>
    while (!testtcb->isFinished()) {
    80001508:	ff1ff06f          	j	800014f8 <_Z11workerBodyCv+0xe8>
    }
    //TCB::time_sleep(100);
    printString("C: TEST AFTER AFTER\n");
    8000150c:	00004517          	auipc	a0,0x4
    80001510:	b5c50513          	addi	a0,a0,-1188 # 80005068 <kvmincrease+0x448>
    80001514:	00001097          	auipc	ra,0x1
    80001518:	190080e7          	jalr	400(ra) # 800026a4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000151c:	00c00513          	li	a0,12
    80001520:	00000097          	auipc	ra,0x0
    80001524:	d34080e7          	jalr	-716(ra) # 80001254 <_ZL9fibonaccim>
    80001528:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    8000152c:	00004517          	auipc	a0,0x4
    80001530:	b5450513          	addi	a0,a0,-1196 # 80005080 <kvmincrease+0x460>
    80001534:	00001097          	auipc	ra,0x1
    80001538:	170080e7          	jalr	368(ra) # 800026a4 <_Z11printStringPKc>
    printInteger(result);
    8000153c:	00090513          	mv	a0,s2
    80001540:	00001097          	auipc	ra,0x1
    80001544:	1d4080e7          	jalr	468(ra) # 80002714 <_Z12printIntegerm>
    printString("\n");
    80001548:	00004517          	auipc	a0,0x4
    8000154c:	c1050513          	addi	a0,a0,-1008 # 80005158 <kvmincrease+0x538>
    80001550:	00001097          	auipc	ra,0x1
    80001554:	154080e7          	jalr	340(ra) # 800026a4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001558:	00500793          	li	a5,5
    8000155c:	0297ee63          	bltu	a5,s1,80001598 <_Z11workerBodyCv+0x188>
        printString("C: i=");
    80001560:	00004517          	auipc	a0,0x4
    80001564:	ac050513          	addi	a0,a0,-1344 # 80005020 <kvmincrease+0x400>
    80001568:	00001097          	auipc	ra,0x1
    8000156c:	13c080e7          	jalr	316(ra) # 800026a4 <_Z11printStringPKc>
        printInteger(i);
    80001570:	00048513          	mv	a0,s1
    80001574:	00001097          	auipc	ra,0x1
    80001578:	1a0080e7          	jalr	416(ra) # 80002714 <_Z12printIntegerm>
        printString("\n");
    8000157c:	00004517          	auipc	a0,0x4
    80001580:	bdc50513          	addi	a0,a0,-1060 # 80005158 <kvmincrease+0x538>
    80001584:	00001097          	auipc	ra,0x1
    80001588:	120080e7          	jalr	288(ra) # 800026a4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000158c:	0014849b          	addiw	s1,s1,1
    80001590:	0ff4f493          	andi	s1,s1,255
    80001594:	fc5ff06f          	j	80001558 <_Z11workerBodyCv+0x148>
    }

}
    80001598:	01813083          	ld	ra,24(sp)
    8000159c:	01013403          	ld	s0,16(sp)
    800015a0:	00813483          	ld	s1,8(sp)
    800015a4:	00013903          	ld	s2,0(sp)
    800015a8:	02010113          	addi	sp,sp,32
    800015ac:	00008067          	ret

00000000800015b0 <_Z11workerBodyDv>:

void workerBodyD() {
    800015b0:	fe010113          	addi	sp,sp,-32
    800015b4:	00113c23          	sd	ra,24(sp)
    800015b8:	00813823          	sd	s0,16(sp)
    800015bc:	00913423          	sd	s1,8(sp)
    800015c0:	01213023          	sd	s2,0(sp)
    800015c4:	02010413          	addi	s0,sp,32
    TCB::time_sleep(200);
    800015c8:	0c800513          	li	a0,200
    800015cc:	00001097          	auipc	ra,0x1
    800015d0:	c14080e7          	jalr	-1004(ra) # 800021e0 <_ZN3TCB10time_sleepEm>
    uint8 i = 10;
    800015d4:	00a00493          	li	s1,10
    800015d8:	0380006f          	j	80001610 <_Z11workerBodyDv+0x60>
    for (; i < 13; i++) {
        printString("D: i=");
    800015dc:	00004517          	auipc	a0,0x4
    800015e0:	ab450513          	addi	a0,a0,-1356 # 80005090 <kvmincrease+0x470>
    800015e4:	00001097          	auipc	ra,0x1
    800015e8:	0c0080e7          	jalr	192(ra) # 800026a4 <_Z11printStringPKc>
        printInteger(i);
    800015ec:	00048513          	mv	a0,s1
    800015f0:	00001097          	auipc	ra,0x1
    800015f4:	124080e7          	jalr	292(ra) # 80002714 <_Z12printIntegerm>
        printString("\n");
    800015f8:	00004517          	auipc	a0,0x4
    800015fc:	b6050513          	addi	a0,a0,-1184 # 80005158 <kvmincrease+0x538>
    80001600:	00001097          	auipc	ra,0x1
    80001604:	0a4080e7          	jalr	164(ra) # 800026a4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001608:	0014849b          	addiw	s1,s1,1
    8000160c:	0ff4f493          	andi	s1,s1,255
    80001610:	00c00793          	li	a5,12
    80001614:	fc97f4e3          	bgeu	a5,s1,800015dc <_Z11workerBodyDv+0x2c>
    }
    printString("D: yield\n");
    80001618:	00004517          	auipc	a0,0x4
    8000161c:	a8050513          	addi	a0,a0,-1408 # 80005098 <kvmincrease+0x478>
    80001620:	00001097          	auipc	ra,0x1
    80001624:	084080e7          	jalr	132(ra) # 800026a4 <_Z11printStringPKc>
    __asm__("li t1, 5");
    80001628:	00500313          	li	t1,5
    TCB::yield();
    8000162c:	00001097          	auipc	ra,0x1
    80001630:	a3c080e7          	jalr	-1476(ra) # 80002068 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    80001634:	01000513          	li	a0,16
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	c1c080e7          	jalr	-996(ra) # 80001254 <_ZL9fibonaccim>
    80001640:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001644:	00004517          	auipc	a0,0x4
    80001648:	a6450513          	addi	a0,a0,-1436 # 800050a8 <kvmincrease+0x488>
    8000164c:	00001097          	auipc	ra,0x1
    80001650:	058080e7          	jalr	88(ra) # 800026a4 <_Z11printStringPKc>
    printInteger(result);
    80001654:	00090513          	mv	a0,s2
    80001658:	00001097          	auipc	ra,0x1
    8000165c:	0bc080e7          	jalr	188(ra) # 80002714 <_Z12printIntegerm>
    printString("\n");
    80001660:	00004517          	auipc	a0,0x4
    80001664:	af850513          	addi	a0,a0,-1288 # 80005158 <kvmincrease+0x538>
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	03c080e7          	jalr	60(ra) # 800026a4 <_Z11printStringPKc>
    80001670:	0380006f          	j	800016a8 <_Z11workerBodyDv+0xf8>
    for (; i < 16; i++) {
        printString("D: i=");
    80001674:	00004517          	auipc	a0,0x4
    80001678:	a1c50513          	addi	a0,a0,-1508 # 80005090 <kvmincrease+0x470>
    8000167c:	00001097          	auipc	ra,0x1
    80001680:	028080e7          	jalr	40(ra) # 800026a4 <_Z11printStringPKc>
        printInteger(i);
    80001684:	00048513          	mv	a0,s1
    80001688:	00001097          	auipc	ra,0x1
    8000168c:	08c080e7          	jalr	140(ra) # 80002714 <_Z12printIntegerm>
        printString("\n");
    80001690:	00004517          	auipc	a0,0x4
    80001694:	ac850513          	addi	a0,a0,-1336 # 80005158 <kvmincrease+0x538>
    80001698:	00001097          	auipc	ra,0x1
    8000169c:	00c080e7          	jalr	12(ra) # 800026a4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800016a0:	0014849b          	addiw	s1,s1,1
    800016a4:	0ff4f493          	andi	s1,s1,255
    800016a8:	00f00793          	li	a5,15
    800016ac:	fc97f4e3          	bgeu	a5,s1,80001674 <_Z11workerBodyDv+0xc4>
    }
    800016b0:	01813083          	ld	ra,24(sp)
    800016b4:	01013403          	ld	s0,16(sp)
    800016b8:	00813483          	ld	s1,8(sp)
    800016bc:	00013903          	ld	s2,0(sp)
    800016c0:	02010113          	addi	sp,sp,32
    800016c4:	00008067          	ret

00000000800016c8 <_ZN9Semaphore8putBlockEP3TCB>:
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"
//int Semaphore::sem_open(int init){}
//int Semaphore::sem_close(){}

void Semaphore::putBlock(TCB *tcb){blockedQueue.addLast(tcb);}
    800016c8:	fd010113          	addi	sp,sp,-48
    800016cc:	02113423          	sd	ra,40(sp)
    800016d0:	02813023          	sd	s0,32(sp)
    800016d4:	00913c23          	sd	s1,24(sp)
    800016d8:	01213823          	sd	s2,16(sp)
    800016dc:	01313423          	sd	s3,8(sp)
    800016e0:	03010413          	addi	s0,sp,48
    800016e4:	00050913          	mv	s2,a0
    800016e8:	00058993          	mv	s3,a1
    800016ec:	00850493          	addi	s1,a0,8
    if (!tail) {
      tail = head;
    }
  }
  void addLast(T *data) {
    Elem *elem = new Elem(data, 0);
    800016f0:	01000513          	li	a0,16
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	1d8080e7          	jalr	472(ra) # 800018cc <_Znwm>
    Elem(T *data, Elem *next) : data(data), next(next) {}
    800016fc:	01353023          	sd	s3,0(a0)
    80001700:	00053423          	sd	zero,8(a0)
    if (tail) {
    80001704:	0084b783          	ld	a5,8(s1)
    80001708:	02078a63          	beqz	a5,8000173c <_ZN9Semaphore8putBlockEP3TCB+0x74>
      tail->next = elem;
    8000170c:	00a7b423          	sd	a0,8(a5)
      tail = elem;
    80001710:	00a4b423          	sd	a0,8(s1)
    } else {
      head = tail = elem;
    }
    n++;
    80001714:	0104b783          	ld	a5,16(s1)
    80001718:	00178793          	addi	a5,a5,1
    8000171c:	00f4b823          	sd	a5,16(s1)
    80001720:	02813083          	ld	ra,40(sp)
    80001724:	02013403          	ld	s0,32(sp)
    80001728:	01813483          	ld	s1,24(sp)
    8000172c:	01013903          	ld	s2,16(sp)
    80001730:	00813983          	ld	s3,8(sp)
    80001734:	03010113          	addi	sp,sp,48
    80001738:	00008067          	ret
      head = tail = elem;
    8000173c:	00a4b423          	sd	a0,8(s1)
    80001740:	00a93423          	sd	a0,8(s2)
    80001744:	fd1ff06f          	j	80001714 <_ZN9Semaphore8putBlockEP3TCB+0x4c>

0000000080001748 <_ZN9Semaphore8getBlockEv>:
TCB *Semaphore::getBlock(){return blockedQueue.removeFirst();}
    80001748:	fe010113          	addi	sp,sp,-32
    8000174c:	00113c23          	sd	ra,24(sp)
    80001750:	00813823          	sd	s0,16(sp)
    80001754:	00913423          	sd	s1,8(sp)
    80001758:	02010413          	addi	s0,sp,32
    8000175c:	00050793          	mv	a5,a0
    80001760:	00850713          	addi	a4,a0,8
  }
  T *removeFirst() {
    if (!head) {
    80001764:	00853503          	ld	a0,8(a0)
    80001768:	04050463          	beqz	a0,800017b0 <_ZN9Semaphore8getBlockEv+0x68>
      return 0;
    }
    Elem *elem = head;
    head = head->next;
    8000176c:	00853683          	ld	a3,8(a0)
    80001770:	00d7b423          	sd	a3,8(a5)
    if (!head) {
    80001774:	02068a63          	beqz	a3,800017a8 <_ZN9Semaphore8getBlockEv+0x60>
      tail = 0;
    }
    n--;
    80001778:	01073783          	ld	a5,16(a4)
    8000177c:	fff78793          	addi	a5,a5,-1
    80001780:	00f73823          	sd	a5,16(a4)
    T *ret = elem->data;
    80001784:	00053483          	ld	s1,0(a0)
    delete elem;
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	194080e7          	jalr	404(ra) # 8000191c <_ZdlPv>
    80001790:	00048513          	mv	a0,s1
    80001794:	01813083          	ld	ra,24(sp)
    80001798:	01013403          	ld	s0,16(sp)
    8000179c:	00813483          	ld	s1,8(sp)
    800017a0:	02010113          	addi	sp,sp,32
    800017a4:	00008067          	ret
      tail = 0;
    800017a8:	00073423          	sd	zero,8(a4)
    800017ac:	fcdff06f          	j	80001778 <_ZN9Semaphore8getBlockEv+0x30>
      return 0;
    800017b0:	00050493          	mv	s1,a0
    800017b4:	fddff06f          	j	80001790 <_ZN9Semaphore8getBlockEv+0x48>

00000000800017b8 <_ZN9Semaphore9sem_blockEv>:

void Semaphore::sem_block(){
    800017b8:	fe010113          	addi	sp,sp,-32
    800017bc:	00113c23          	sd	ra,24(sp)
    800017c0:	00813823          	sd	s0,16(sp)
    800017c4:	00913423          	sd	s1,8(sp)
    800017c8:	01213023          	sd	s2,0(sp)
    800017cc:	02010413          	addi	s0,sp,32
    TCB *old = TCB::running;
    800017d0:	00004917          	auipc	s2,0x4
    800017d4:	3e893903          	ld	s2,1000(s2) # 80005bb8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800017d8:	00093483          	ld	s1,0(s2)

    putBlock(old);
    800017dc:	00048593          	mv	a1,s1
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	ee8080e7          	jalr	-280(ra) # 800016c8 <_ZN9Semaphore8putBlockEP3TCB>
    //Scheduler::putSleep(old);

    TCB::running = Scheduler::get();
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	c20080e7          	jalr	-992(ra) # 80002408 <_ZN9Scheduler3getEv>
    800017f0:	00a93023          	sd	a0,0(s2)

    TCB::contextSwitch(&old->context, &TCB::running->context);
    800017f4:	01050593          	addi	a1,a0,16
    800017f8:	01048513          	addi	a0,s1,16
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	a14080e7          	jalr	-1516(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001804:	01813083          	ld	ra,24(sp)
    80001808:	01013403          	ld	s0,16(sp)
    8000180c:	00813483          	ld	s1,8(sp)
    80001810:	00013903          	ld	s2,0(sp)
    80001814:	02010113          	addi	sp,sp,32
    80001818:	00008067          	ret

000000008000181c <_ZN9Semaphore11sem_unblockEv>:
void Semaphore::sem_unblock(){
    8000181c:	ff010113          	addi	sp,sp,-16
    80001820:	00113423          	sd	ra,8(sp)
    80001824:	00813023          	sd	s0,0(sp)
    80001828:	01010413          	addi	s0,sp,16
    TCB* blocked = getBlock();
    8000182c:	00000097          	auipc	ra,0x0
    80001830:	f1c080e7          	jalr	-228(ra) # 80001748 <_ZN9Semaphore8getBlockEv>
    Scheduler::put(blocked);
    80001834:	00001097          	auipc	ra,0x1
    80001838:	c68080e7          	jalr	-920(ra) # 8000249c <_ZN9Scheduler3putEP3TCB>
}
    8000183c:	00813083          	ld	ra,8(sp)
    80001840:	00013403          	ld	s0,0(sp)
    80001844:	01010113          	addi	sp,sp,16
    80001848:	00008067          	ret

000000008000184c <_ZN9Semaphore8sem_waitEv>:

void Semaphore::sem_wait(){
    //lock
    if(--val < 0) sem_block();
    8000184c:	00052783          	lw	a5,0(a0)
    80001850:	fff7879b          	addiw	a5,a5,-1
    80001854:	00f52023          	sw	a5,0(a0)
    80001858:	02079713          	slli	a4,a5,0x20
    8000185c:	00074463          	bltz	a4,80001864 <_ZN9Semaphore8sem_waitEv+0x18>
    80001860:	00008067          	ret
void Semaphore::sem_wait(){
    80001864:	ff010113          	addi	sp,sp,-16
    80001868:	00113423          	sd	ra,8(sp)
    8000186c:	00813023          	sd	s0,0(sp)
    80001870:	01010413          	addi	s0,sp,16
    if(--val < 0) sem_block();
    80001874:	00000097          	auipc	ra,0x0
    80001878:	f44080e7          	jalr	-188(ra) # 800017b8 <_ZN9Semaphore9sem_blockEv>
    //unlock
}
    8000187c:	00813083          	ld	ra,8(sp)
    80001880:	00013403          	ld	s0,0(sp)
    80001884:	01010113          	addi	sp,sp,16
    80001888:	00008067          	ret

000000008000188c <_ZN9Semaphore10sem_signalEv>:
void Semaphore::sem_signal(){
    //lock
    if(++val <= 0) sem_unblock();
    8000188c:	00052783          	lw	a5,0(a0)
    80001890:	0017879b          	addiw	a5,a5,1
    80001894:	0007871b          	sext.w	a4,a5
    80001898:	00f52023          	sw	a5,0(a0)
    8000189c:	00e05463          	blez	a4,800018a4 <_ZN9Semaphore10sem_signalEv+0x18>
    800018a0:	00008067          	ret
void Semaphore::sem_signal(){
    800018a4:	ff010113          	addi	sp,sp,-16
    800018a8:	00113423          	sd	ra,8(sp)
    800018ac:	00813023          	sd	s0,0(sp)
    800018b0:	01010413          	addi	s0,sp,16
    if(++val <= 0) sem_unblock();
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	f68080e7          	jalr	-152(ra) # 8000181c <_ZN9Semaphore11sem_unblockEv>
    //unlock
    800018bc:	00813083          	ld	ra,8(sp)
    800018c0:	00013403          	ld	s0,0(sp)
    800018c4:	01010113          	addi	sp,sp,16
    800018c8:	00008067          	ret

00000000800018cc <_Znwm>:
#include "../lib/mem.h"

void *operator new(uint64 n) { return __mem_alloc(n); }
    800018cc:	ff010113          	addi	sp,sp,-16
    800018d0:	00113423          	sd	ra,8(sp)
    800018d4:	00813023          	sd	s0,0(sp)
    800018d8:	01010413          	addi	s0,sp,16
    800018dc:	00003097          	auipc	ra,0x3
    800018e0:	0cc080e7          	jalr	204(ra) # 800049a8 <__mem_alloc>
    800018e4:	00813083          	ld	ra,8(sp)
    800018e8:	00013403          	ld	s0,0(sp)
    800018ec:	01010113          	addi	sp,sp,16
    800018f0:	00008067          	ret

00000000800018f4 <_Znam>:
void *operator new[](uint64 n) { return __mem_alloc(n); }
    800018f4:	ff010113          	addi	sp,sp,-16
    800018f8:	00113423          	sd	ra,8(sp)
    800018fc:	00813023          	sd	s0,0(sp)
    80001900:	01010413          	addi	s0,sp,16
    80001904:	00003097          	auipc	ra,0x3
    80001908:	0a4080e7          	jalr	164(ra) # 800049a8 <__mem_alloc>
    8000190c:	00813083          	ld	ra,8(sp)
    80001910:	00013403          	ld	s0,0(sp)
    80001914:	01010113          	addi	sp,sp,16
    80001918:	00008067          	ret

000000008000191c <_ZdlPv>:
void operator delete(void *n) noexcept { __mem_free(n); }
    8000191c:	ff010113          	addi	sp,sp,-16
    80001920:	00113423          	sd	ra,8(sp)
    80001924:	00813023          	sd	s0,0(sp)
    80001928:	01010413          	addi	s0,sp,16
    8000192c:	00003097          	auipc	ra,0x3
    80001930:	fb0080e7          	jalr	-80(ra) # 800048dc <__mem_free>
    80001934:	00813083          	ld	ra,8(sp)
    80001938:	00013403          	ld	s0,0(sp)
    8000193c:	01010113          	addi	sp,sp,16
    80001940:	00008067          	ret

0000000080001944 <_ZdaPv>:
    80001944:	ff010113          	addi	sp,sp,-16
    80001948:	00113423          	sd	ra,8(sp)
    8000194c:	00813023          	sd	s0,0(sp)
    80001950:	01010413          	addi	s0,sp,16
    80001954:	00003097          	auipc	ra,0x3
    80001958:	f88080e7          	jalr	-120(ra) # 800048dc <__mem_free>
    8000195c:	00813083          	ld	ra,8(sp)
    80001960:	00013403          	ld	s0,0(sp)
    80001964:	01010113          	addi	sp,sp,16
    80001968:	00008067          	ret

000000008000196c <_Z5emptyv>:
#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/workers.hpp"
#include "../h/riscv.hpp"
void empty(){ while(1){printString("Idle\n");} }
    8000196c:	ff010113          	addi	sp,sp,-16
    80001970:	00113423          	sd	ra,8(sp)
    80001974:	00813023          	sd	s0,0(sp)
    80001978:	01010413          	addi	s0,sp,16
    8000197c:	00003517          	auipc	a0,0x3
    80001980:	73c50513          	addi	a0,a0,1852 # 800050b8 <kvmincrease+0x498>
    80001984:	00001097          	auipc	ra,0x1
    80001988:	d20080e7          	jalr	-736(ra) # 800026a4 <_Z11printStringPKc>
    8000198c:	ff1ff06f          	j	8000197c <_Z5emptyv+0x10>

0000000080001990 <_Z6semincv>:
#include "../h/semaphore.hpp"

Semaphore *sem1;
Semaphore *sem2;
#include "../lib/console.h"
void seminc(){
    80001990:	fe010113          	addi	sp,sp,-32
    80001994:	00113c23          	sd	ra,24(sp)
    80001998:	00813823          	sd	s0,16(sp)
    8000199c:	00913423          	sd	s1,8(sp)
    800019a0:	01213023          	sd	s2,0(sp)
    800019a4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800019a8:	00000493          	li	s1,0
    800019ac:	00900793          	li	a5,9
    800019b0:	0497e863          	bltu	a5,s1,80001a00 <_Z6semincv+0x70>
        TCB::time_sleep(10);
    800019b4:	00a00513          	li	a0,10
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	828080e7          	jalr	-2008(ra) # 800021e0 <_ZN3TCB10time_sleepEm>
        sem1->sem_wait();
    800019c0:	00004917          	auipc	s2,0x4
    800019c4:	26090913          	addi	s2,s2,608 # 80005c20 <sem1>
    800019c8:	00093503          	ld	a0,0(s2)
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	e80080e7          	jalr	-384(ra) # 8000184c <_ZN9Semaphore8sem_waitEv>
        __putc('A');
    800019d4:	04100513          	li	a0,65
    800019d8:	00003097          	auipc	ra,0x3
    800019dc:	128080e7          	jalr	296(ra) # 80004b00 <__putc>
        __putc('\n');
    800019e0:	00a00513          	li	a0,10
    800019e4:	00003097          	auipc	ra,0x3
    800019e8:	11c080e7          	jalr	284(ra) # 80004b00 <__putc>
        sem2->sem_signal();
    800019ec:	00893503          	ld	a0,8(s2)
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	e9c080e7          	jalr	-356(ra) # 8000188c <_ZN9Semaphore10sem_signalEv>
    for (uint64 i = 0; i < 10; i++) {
    800019f8:	00148493          	addi	s1,s1,1
    800019fc:	fb1ff06f          	j	800019ac <_Z6semincv+0x1c>
    }
}
    80001a00:	01813083          	ld	ra,24(sp)
    80001a04:	01013403          	ld	s0,16(sp)
    80001a08:	00813483          	ld	s1,8(sp)
    80001a0c:	00013903          	ld	s2,0(sp)
    80001a10:	02010113          	addi	sp,sp,32
    80001a14:	00008067          	ret

0000000080001a18 <_Z6semdecv>:

void semdec(){
    80001a18:	fe010113          	addi	sp,sp,-32
    80001a1c:	00113c23          	sd	ra,24(sp)
    80001a20:	00813823          	sd	s0,16(sp)
    80001a24:	00913423          	sd	s1,8(sp)
    80001a28:	01213023          	sd	s2,0(sp)
    80001a2c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001a30:	00000493          	li	s1,0
    80001a34:	00900793          	li	a5,9
    80001a38:	0497e863          	bltu	a5,s1,80001a88 <_Z6semdecv+0x70>
        TCB::time_sleep(100);
    80001a3c:	06400513          	li	a0,100
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	7a0080e7          	jalr	1952(ra) # 800021e0 <_ZN3TCB10time_sleepEm>
        sem2->sem_wait();
    80001a48:	00004917          	auipc	s2,0x4
    80001a4c:	1d890913          	addi	s2,s2,472 # 80005c20 <sem1>
    80001a50:	00893503          	ld	a0,8(s2)
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	df8080e7          	jalr	-520(ra) # 8000184c <_ZN9Semaphore8sem_waitEv>
        __putc('B');
    80001a5c:	04200513          	li	a0,66
    80001a60:	00003097          	auipc	ra,0x3
    80001a64:	0a0080e7          	jalr	160(ra) # 80004b00 <__putc>
        __putc('\n');
    80001a68:	00a00513          	li	a0,10
    80001a6c:	00003097          	auipc	ra,0x3
    80001a70:	094080e7          	jalr	148(ra) # 80004b00 <__putc>
        sem1->sem_signal();
    80001a74:	00093503          	ld	a0,0(s2)
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	e14080e7          	jalr	-492(ra) # 8000188c <_ZN9Semaphore10sem_signalEv>
    for (uint64 i = 0; i < 10; i++) {
    80001a80:	00148493          	addi	s1,s1,1
    80001a84:	fb1ff06f          	j	80001a34 <_Z6semdecv+0x1c>
    }  
}
    80001a88:	01813083          	ld	ra,24(sp)
    80001a8c:	01013403          	ld	s0,16(sp)
    80001a90:	00813483          	ld	s1,8(sp)
    80001a94:	00013903          	ld	s2,0(sp)
    80001a98:	02010113          	addi	sp,sp,32
    80001a9c:	00008067          	ret

0000000080001aa0 <_Z5main1v>:
int main1() {
    80001aa0:	fb010113          	addi	sp,sp,-80
    80001aa4:	04113423          	sd	ra,72(sp)
    80001aa8:	04813023          	sd	s0,64(sp)
    80001aac:	02913c23          	sd	s1,56(sp)
    80001ab0:	03213823          	sd	s2,48(sp)
    80001ab4:	05010413          	addi	s0,sp,80
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001ab8:	00004797          	auipc	a5,0x4
    80001abc:	0d87b783          	ld	a5,216(a5) # 80005b90 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001ac0:	10579073          	csrw	stvec,a5
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ac4:	00200793          	li	a5,2
    80001ac8:	1007a073          	csrs	sstatus,a5
    coroutines[0] = TCB::createThread(nullptr);
    80001acc:	00000513          	li	a0,0
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	414080e7          	jalr	1044(ra) # 80001ee4 <_ZN3TCB12createThreadEPFvvE>
    80001ad8:	00050593          	mv	a1,a0
    80001adc:	faa43c23          	sd	a0,-72(s0)
    printLine("MainThread created: ", (uint64)coroutines[0]);
    80001ae0:	00003517          	auipc	a0,0x3
    80001ae4:	5e050513          	addi	a0,a0,1504 # 800050c0 <kvmincrease+0x4a0>
    80001ae8:	00001097          	auipc	ra,0x1
    80001aec:	ce8080e7          	jalr	-792(ra) # 800027d0 <_Z9printLinePKcm>
    TCB::running = coroutines[0];
    80001af0:	fb843703          	ld	a4,-72(s0)
    80001af4:	00004797          	auipc	a5,0x4
    80001af8:	0c47b783          	ld	a5,196(a5) # 80005bb8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001afc:	00e7b023          	sd	a4,0(a5)
    Scheduler::idle = TCB::createIdleThread(empty);
    80001b00:	00000517          	auipc	a0,0x0
    80001b04:	e6c50513          	addi	a0,a0,-404 # 8000196c <_Z5emptyv>
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	4a8080e7          	jalr	1192(ra) # 80001fb0 <_ZN3TCB16createIdleThreadEPFvvE>
    80001b10:	00050593          	mv	a1,a0
    80001b14:	00004797          	auipc	a5,0x4
    80001b18:	09c7b783          	ld	a5,156(a5) # 80005bb0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b1c:	00a7b023          	sd	a0,0(a5)
    printLine("IdleThread created: ", (uint64)Scheduler::idle);
    80001b20:	00003517          	auipc	a0,0x3
    80001b24:	5b850513          	addi	a0,a0,1464 # 800050d8 <kvmincrease+0x4b8>
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	ca8080e7          	jalr	-856(ra) # 800027d0 <_Z9printLinePKcm>
    coroutines[1] = TCB::createThread(workerBodyA);
    80001b30:	00004517          	auipc	a0,0x4
    80001b34:	07053503          	ld	a0,112(a0) # 80005ba0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	3ac080e7          	jalr	940(ra) # 80001ee4 <_ZN3TCB12createThreadEPFvvE>
    80001b40:	00050593          	mv	a1,a0
    80001b44:	fca43023          	sd	a0,-64(s0)
    printLine("ThreadA created: ", (uint64)coroutines[1]);
    80001b48:	00003517          	auipc	a0,0x3
    80001b4c:	5a850513          	addi	a0,a0,1448 # 800050f0 <kvmincrease+0x4d0>
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	c80080e7          	jalr	-896(ra) # 800027d0 <_Z9printLinePKcm>
    coroutines[2] = TCB::createThread(workerBodyB);
    80001b58:	00004517          	auipc	a0,0x4
    80001b5c:	04053503          	ld	a0,64(a0) # 80005b98 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	384080e7          	jalr	900(ra) # 80001ee4 <_ZN3TCB12createThreadEPFvvE>
    80001b68:	00050593          	mv	a1,a0
    80001b6c:	fca43423          	sd	a0,-56(s0)
    printLine("ThreadB created: ", (uint64)coroutines[2]);
    80001b70:	00003517          	auipc	a0,0x3
    80001b74:	59850513          	addi	a0,a0,1432 # 80005108 <kvmincrease+0x4e8>
    80001b78:	00001097          	auipc	ra,0x1
    80001b7c:	c58080e7          	jalr	-936(ra) # 800027d0 <_Z9printLinePKcm>
    coroutines[3] = TCB::createThread(workerBodyC);
    80001b80:	00004517          	auipc	a0,0x4
    80001b84:	04853503          	ld	a0,72(a0) # 80005bc8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001b88:	00000097          	auipc	ra,0x0
    80001b8c:	35c080e7          	jalr	860(ra) # 80001ee4 <_ZN3TCB12createThreadEPFvvE>
    80001b90:	00050593          	mv	a1,a0
    80001b94:	fca43823          	sd	a0,-48(s0)
    printLine("ThreadC created: ", (uint64)coroutines[3]);
    80001b98:	00003517          	auipc	a0,0x3
    80001b9c:	58850513          	addi	a0,a0,1416 # 80005120 <kvmincrease+0x500>
    80001ba0:	00001097          	auipc	ra,0x1
    80001ba4:	c30080e7          	jalr	-976(ra) # 800027d0 <_Z9printLinePKcm>
    coroutines[4] = TCB::createThread(workerBodyD);
    80001ba8:	00004517          	auipc	a0,0x4
    80001bac:	02853503          	ld	a0,40(a0) # 80005bd0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	334080e7          	jalr	820(ra) # 80001ee4 <_ZN3TCB12createThreadEPFvvE>
    80001bb8:	00050593          	mv	a1,a0
    80001bbc:	fca43c23          	sd	a0,-40(s0)
    printLine("ThreadD created: ", (uint64)coroutines[4]);
    80001bc0:	00003517          	auipc	a0,0x3
    80001bc4:	57850513          	addi	a0,a0,1400 # 80005138 <kvmincrease+0x518>
    80001bc8:	00001097          	auipc	ra,0x1
    80001bcc:	c08080e7          	jalr	-1016(ra) # 800027d0 <_Z9printLinePKcm>
    80001bd0:	0100006f          	j	80001be0 <_Z5main1v+0x140>
        TCB::time_sleep(300);
    80001bd4:	12c00513          	li	a0,300
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	608080e7          	jalr	1544(ra) # 800021e0 <_ZN3TCB10time_sleepEm>
    while (!(coroutines[1]->isFinished() &&
    80001be0:	fc043783          	ld	a5,-64(s0)
    80001be4:	0287c783          	lbu	a5,40(a5)
    80001be8:	fe0786e3          	beqz	a5,80001bd4 <_Z5main1v+0x134>
    coroutines[2]->isFinished()&&
    80001bec:	fc843783          	ld	a5,-56(s0)
    80001bf0:	0287c783          	lbu	a5,40(a5)
    while (!(coroutines[1]->isFinished() &&
    80001bf4:	fe0780e3          	beqz	a5,80001bd4 <_Z5main1v+0x134>
    coroutines[3]->isFinished()&&
    80001bf8:	fd043783          	ld	a5,-48(s0)
    80001bfc:	0287c783          	lbu	a5,40(a5)
    coroutines[2]->isFinished()&&
    80001c00:	fc078ae3          	beqz	a5,80001bd4 <_Z5main1v+0x134>
    coroutines[4]->isFinished())) {
    80001c04:	fd843783          	ld	a5,-40(s0)
    80001c08:	0287c783          	lbu	a5,40(a5)
    while (!(coroutines[1]->isFinished() &&
    80001c0c:	fc0784e3          	beqz	a5,80001bd4 <_Z5main1v+0x134>
    80001c10:	fb840493          	addi	s1,s0,-72
    80001c14:	0140006f          	j	80001c28 <_Z5main1v+0x188>
        delete coroutine;
    80001c18:	00090513          	mv	a0,s2
    80001c1c:	00000097          	auipc	ra,0x0
    80001c20:	d00080e7          	jalr	-768(ra) # 8000191c <_ZdlPv>
    for (auto &coroutine: coroutines) {
    80001c24:	00848493          	addi	s1,s1,8
    80001c28:	fe040793          	addi	a5,s0,-32
    80001c2c:	02f48063          	beq	s1,a5,80001c4c <_Z5main1v+0x1ac>
        delete coroutine;
    80001c30:	0004b903          	ld	s2,0(s1)
    80001c34:	fe0908e3          	beqz	s2,80001c24 <_Z5main1v+0x184>
    static int time_sleep (time_t);
    static void dispatch();
    static void dispatchSleep();
    static void yield();

    ~TCB() { delete[] stack; }
    80001c38:	00893503          	ld	a0,8(s2)
    80001c3c:	fc050ee3          	beqz	a0,80001c18 <_Z5main1v+0x178>
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	d04080e7          	jalr	-764(ra) # 80001944 <_ZdaPv>
    80001c48:	fd1ff06f          	j	80001c18 <_Z5main1v+0x178>
    printString("Finished\n");
    80001c4c:	00003517          	auipc	a0,0x3
    80001c50:	50450513          	addi	a0,a0,1284 # 80005150 <kvmincrease+0x530>
    80001c54:	00001097          	auipc	ra,0x1
    80001c58:	a50080e7          	jalr	-1456(ra) # 800026a4 <_Z11printStringPKc>
}
    80001c5c:	00000513          	li	a0,0
    80001c60:	04813083          	ld	ra,72(sp)
    80001c64:	04013403          	ld	s0,64(sp)
    80001c68:	03813483          	ld	s1,56(sp)
    80001c6c:	03013903          	ld	s2,48(sp)
    80001c70:	05010113          	addi	sp,sp,80
    80001c74:	00008067          	ret

0000000080001c78 <main>:
int main(){
    80001c78:	fb010113          	addi	sp,sp,-80
    80001c7c:	04113423          	sd	ra,72(sp)
    80001c80:	04813023          	sd	s0,64(sp)
    80001c84:	02913c23          	sd	s1,56(sp)
    80001c88:	03213823          	sd	s2,48(sp)
    80001c8c:	05010413          	addi	s0,sp,80
    __putc('S');
    80001c90:	05300513          	li	a0,83
    80001c94:	00003097          	auipc	ra,0x3
    80001c98:	e6c080e7          	jalr	-404(ra) # 80004b00 <__putc>
    __putc('\n');
    80001c9c:	00a00513          	li	a0,10
    80001ca0:	00003097          	auipc	ra,0x3
    80001ca4:	e60080e7          	jalr	-416(ra) # 80004b00 <__putc>
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001ca8:	00004797          	auipc	a5,0x4
    80001cac:	ee87b783          	ld	a5,-280(a5) # 80005b90 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001cb0:	10579073          	csrw	stvec,a5
    __putc('S');
    80001cb4:	05300513          	li	a0,83
    80001cb8:	00003097          	auipc	ra,0x3
    80001cbc:	e48080e7          	jalr	-440(ra) # 80004b00 <__putc>
    __putc('\n');
    80001cc0:	00a00513          	li	a0,10
    80001cc4:	00003097          	auipc	ra,0x3
    80001cc8:	e3c080e7          	jalr	-452(ra) # 80004b00 <__putc>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ccc:	00200793          	li	a5,2
    80001cd0:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __putc('S');
    80001cd4:	05300513          	li	a0,83
    80001cd8:	00003097          	auipc	ra,0x3
    80001cdc:	e28080e7          	jalr	-472(ra) # 80004b00 <__putc>
    __putc('\n');
    80001ce0:	00a00513          	li	a0,10
    80001ce4:	00003097          	auipc	ra,0x3
    80001ce8:	e1c080e7          	jalr	-484(ra) # 80004b00 <__putc>
    TCB *coroutines[5];
    coroutines[0] = TCB::createThread(nullptr);
    80001cec:	00000513          	li	a0,0
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	1f4080e7          	jalr	500(ra) # 80001ee4 <_ZN3TCB12createThreadEPFvvE>
    80001cf8:	00050593          	mv	a1,a0
    80001cfc:	faa43c23          	sd	a0,-72(s0)
    printLine("MainThread created: ", (uint64)coroutines[0]);
    80001d00:	00003517          	auipc	a0,0x3
    80001d04:	3c050513          	addi	a0,a0,960 # 800050c0 <kvmincrease+0x4a0>
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	ac8080e7          	jalr	-1336(ra) # 800027d0 <_Z9printLinePKcm>
    TCB::running = coroutines[0];
    80001d10:	fb843703          	ld	a4,-72(s0)
    80001d14:	00004797          	auipc	a5,0x4
    80001d18:	ea47b783          	ld	a5,-348(a5) # 80005bb8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d1c:	00e7b023          	sd	a4,0(a5)
    Scheduler::idle = TCB::createIdleThread(empty);
    80001d20:	00000517          	auipc	a0,0x0
    80001d24:	c4c50513          	addi	a0,a0,-948 # 8000196c <_Z5emptyv>
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	288080e7          	jalr	648(ra) # 80001fb0 <_ZN3TCB16createIdleThreadEPFvvE>
    80001d30:	00050593          	mv	a1,a0
    80001d34:	00004797          	auipc	a5,0x4
    80001d38:	e7c7b783          	ld	a5,-388(a5) # 80005bb0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d3c:	00a7b023          	sd	a0,0(a5)
    printLine("IdleThread created: ", (uint64)Scheduler::idle);
    80001d40:	00003517          	auipc	a0,0x3
    80001d44:	39850513          	addi	a0,a0,920 # 800050d8 <kvmincrease+0x4b8>
    80001d48:	00001097          	auipc	ra,0x1
    80001d4c:	a88080e7          	jalr	-1400(ra) # 800027d0 <_Z9printLinePKcm>

    sem1 =  new Semaphore(1);
    80001d50:	02000513          	li	a0,32
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	b78080e7          	jalr	-1160(ra) # 800018cc <_Znwm>
    void sem_block();
    void sem_unblock();
    void putBlock(TCB *tcb);
    TCB *getBlock();
public:
    Semaphore(int init = 1) : val(init) {}
    80001d5c:	00100793          	li	a5,1
    80001d60:	00f52023          	sw	a5,0(a0)
    Elem(T *data, Elem *next) : data(data), next(next) {}
  };
  Elem *head, *tail;
  uint64 n;
public:
  List() : head(0), tail(0) {}
    80001d64:	00053423          	sd	zero,8(a0)
    80001d68:	00053823          	sd	zero,16(a0)
    80001d6c:	00004497          	auipc	s1,0x4
    80001d70:	eb448493          	addi	s1,s1,-332 # 80005c20 <sem1>
    80001d74:	00a4b023          	sd	a0,0(s1)
    sem2 =  new Semaphore(0);
    80001d78:	02000513          	li	a0,32
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	b50080e7          	jalr	-1200(ra) # 800018cc <_Znwm>
    80001d84:	00052023          	sw	zero,0(a0)
    80001d88:	00053423          	sd	zero,8(a0)
    80001d8c:	00053823          	sd	zero,16(a0)
    80001d90:	00a4b423          	sd	a0,8(s1)

    coroutines[1] = TCB::createThread(seminc);
    80001d94:	00000517          	auipc	a0,0x0
    80001d98:	bfc50513          	addi	a0,a0,-1028 # 80001990 <_Z6semincv>
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	148080e7          	jalr	328(ra) # 80001ee4 <_ZN3TCB12createThreadEPFvvE>
    80001da4:	00050593          	mv	a1,a0
    80001da8:	fca43023          	sd	a0,-64(s0)
    printLine("ThreadA created: ", (uint64)coroutines[1]);
    80001dac:	00003517          	auipc	a0,0x3
    80001db0:	34450513          	addi	a0,a0,836 # 800050f0 <kvmincrease+0x4d0>
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	a1c080e7          	jalr	-1508(ra) # 800027d0 <_Z9printLinePKcm>
    //coroutines[4] = TCB::createThread(semdec);
    //printLine("ThreadB created: ", (uint64)coroutines[4]);
    coroutines[3] = TCB::createThread(semdec);
    80001dbc:	00000517          	auipc	a0,0x0
    80001dc0:	c5c50513          	addi	a0,a0,-932 # 80001a18 <_Z6semdecv>
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	120080e7          	jalr	288(ra) # 80001ee4 <_ZN3TCB12createThreadEPFvvE>
    80001dcc:	00050593          	mv	a1,a0
    80001dd0:	fca43823          	sd	a0,-48(s0)
    printLine("ThreadA created: ", (uint64)coroutines[3]);
    80001dd4:	00003517          	auipc	a0,0x3
    80001dd8:	31c50513          	addi	a0,a0,796 # 800050f0 <kvmincrease+0x4d0>
    80001ddc:	00001097          	auipc	ra,0x1
    80001de0:	9f4080e7          	jalr	-1548(ra) # 800027d0 <_Z9printLinePKcm>
    //coroutines[2] = TCB::createThread(semdec);
    //printLine("ThreadB created: ", (uint64)coroutines[2]);


    while (!(coroutines[1]->isFinished() &&
    80001de4:	fc043783          	ld	a5,-64(s0)
    bool isFinished() const { return finished; }
    80001de8:	0287c783          	lbu	a5,40(a5)
    80001dec:	fe078ce3          	beqz	a5,80001de4 <main+0x16c>
    coroutines[3]->isFinished())) {
    80001df0:	fd043783          	ld	a5,-48(s0)
    80001df4:	0287c783          	lbu	a5,40(a5)
    while (!(coroutines[1]->isFinished() &&
    80001df8:	fe0786e3          	beqz	a5,80001de4 <main+0x16c>
    80001dfc:	fb840493          	addi	s1,s0,-72
    80001e00:	0140006f          	j	80001e14 <main+0x19c>
        //TCB::time_sleep(300);
        //TCB::yield();
    }
    for (auto &coroutine: coroutines) {
        delete coroutine;
    80001e04:	00090513          	mv	a0,s2
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	b14080e7          	jalr	-1260(ra) # 8000191c <_ZdlPv>
    for (auto &coroutine: coroutines) {
    80001e10:	00848493          	addi	s1,s1,8
    80001e14:	fe040793          	addi	a5,s0,-32
    80001e18:	02f48063          	beq	s1,a5,80001e38 <main+0x1c0>
        delete coroutine;
    80001e1c:	0004b903          	ld	s2,0(s1)
    80001e20:	fe0908e3          	beqz	s2,80001e10 <main+0x198>
    ~TCB() { delete[] stack; }
    80001e24:	00893503          	ld	a0,8(s2)
    80001e28:	fc050ee3          	beqz	a0,80001e04 <main+0x18c>
    80001e2c:	00000097          	auipc	ra,0x0
    80001e30:	b18080e7          	jalr	-1256(ra) # 80001944 <_ZdaPv>
    80001e34:	fd1ff06f          	j	80001e04 <main+0x18c>
    }
    printString("Finished\n");
    80001e38:	00003517          	auipc	a0,0x3
    80001e3c:	31850513          	addi	a0,a0,792 # 80005150 <kvmincrease+0x530>
    80001e40:	00001097          	auipc	ra,0x1
    80001e44:	864080e7          	jalr	-1948(ra) # 800026a4 <_Z11printStringPKc>
    return 0;
}
    80001e48:	00000513          	li	a0,0
    80001e4c:	04813083          	ld	ra,72(sp)
    80001e50:	04013403          	ld	s0,64(sp)
    80001e54:	03813483          	ld	s1,56(sp)
    80001e58:	03013903          	ld	s2,48(sp)
    80001e5c:	05010113          	addi	sp,sp,80
    80001e60:	00008067          	ret

0000000080001e64 <_Z5main3v>:
int main3(){
    80001e64:	ff010113          	addi	sp,sp,-16
    80001e68:	00113423          	sd	ra,8(sp)
    80001e6c:	00813023          	sd	s0,0(sp)
    80001e70:	01010413          	addi	s0,sp,16
    __putc('S');
    80001e74:	05300513          	li	a0,83
    80001e78:	00003097          	auipc	ra,0x3
    80001e7c:	c88080e7          	jalr	-888(ra) # 80004b00 <__putc>
    __putc('\n');
    80001e80:	00a00513          	li	a0,10
    80001e84:	00003097          	auipc	ra,0x3
    80001e88:	c7c080e7          	jalr	-900(ra) # 80004b00 <__putc>
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001e8c:	00004797          	auipc	a5,0x4
    80001e90:	d047b783          	ld	a5,-764(a5) # 80005b90 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001e94:	10579073          	csrw	stvec,a5
    __putc('S');
    80001e98:	05300513          	li	a0,83
    80001e9c:	00003097          	auipc	ra,0x3
    80001ea0:	c64080e7          	jalr	-924(ra) # 80004b00 <__putc>
    __putc('\n');
    80001ea4:	00a00513          	li	a0,10
    80001ea8:	00003097          	auipc	ra,0x3
    80001eac:	c58080e7          	jalr	-936(ra) # 80004b00 <__putc>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001eb0:	00200793          	li	a5,2
    80001eb4:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __putc('S');
    80001eb8:	05300513          	li	a0,83
    80001ebc:	00003097          	auipc	ra,0x3
    80001ec0:	c44080e7          	jalr	-956(ra) # 80004b00 <__putc>
    __putc('\n');
    80001ec4:	00a00513          	li	a0,10
    80001ec8:	00003097          	auipc	ra,0x3
    80001ecc:	c38080e7          	jalr	-968(ra) # 80004b00 <__putc>
    return 0;
    80001ed0:	00000513          	li	a0,0
    80001ed4:	00813083          	ld	ra,8(sp)
    80001ed8:	00013403          	ld	s0,0(sp)
    80001edc:	01010113          	addi	sp,sp,16
    80001ee0:	00008067          	ret

0000000080001ee4 <_ZN3TCB12createThreadEPFvvE>:
#include "../h/scheduler.hpp"

TCB *TCB::running = nullptr;
uint64 TCB::timeSLiceCounter = 0;

TCB *TCB::createThread(Body body) { return new TCB(body, TIME_SLICE); }
    80001ee4:	fe010113          	addi	sp,sp,-32
    80001ee8:	00113c23          	sd	ra,24(sp)
    80001eec:	00813823          	sd	s0,16(sp)
    80001ef0:	00913423          	sd	s1,8(sp)
    80001ef4:	01213023          	sd	s2,0(sp)
    80001ef8:	02010413          	addi	s0,sp,32
    80001efc:	00050913          	mv	s2,a0
    80001f00:	03800513          	li	a0,56
    80001f04:	00000097          	auipc	ra,0x0
    80001f08:	9c8080e7          	jalr	-1592(ra) # 800018cc <_Znwm>
    80001f0c:	00050493          	mv	s1,a0
    TCB(Body body, uint64 timeSlice)
            : body(body), stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
              context({(uint64) &threadWrapper,
                       stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
              timeSlice(timeSlice),
              finished(false) {
    80001f10:	01253023          	sd	s2,0(a0)
            : body(body), stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001f14:	00090a63          	beqz	s2,80001f28 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001f18:	00002537          	lui	a0,0x2
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	9d8080e7          	jalr	-1576(ra) # 800018f4 <_Znam>
    80001f24:	0080006f          	j	80001f2c <_ZN3TCB12createThreadEPFvvE+0x48>
    80001f28:	00000513          	li	a0,0
              finished(false) {
    80001f2c:	00a4b423          	sd	a0,8(s1)
    80001f30:	00000797          	auipc	a5,0x0
    80001f34:	15478793          	addi	a5,a5,340 # 80002084 <_ZN3TCB13threadWrapperEv>
    80001f38:	00f4b823          	sd	a5,16(s1)
                       stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
    80001f3c:	02050a63          	beqz	a0,80001f70 <_ZN3TCB12createThreadEPFvvE+0x8c>
    80001f40:	000027b7          	lui	a5,0x2
    80001f44:	00f507b3          	add	a5,a0,a5
              finished(false) {
    80001f48:	00f4bc23          	sd	a5,24(s1)
    80001f4c:	00200793          	li	a5,2
    80001f50:	02f4b023          	sd	a5,32(s1)
    80001f54:	02048423          	sb	zero,40(s1)
    80001f58:	0204b823          	sd	zero,48(s1)
        if (body != nullptr) {
    80001f5c:	02090c63          	beqz	s2,80001f94 <_ZN3TCB12createThreadEPFvvE+0xb0>
            Scheduler::put(this);
    80001f60:	00048513          	mv	a0,s1
    80001f64:	00000097          	auipc	ra,0x0
    80001f68:	538080e7          	jalr	1336(ra) # 8000249c <_ZN9Scheduler3putEP3TCB>
    80001f6c:	0280006f          	j	80001f94 <_ZN3TCB12createThreadEPFvvE+0xb0>
                       stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
    80001f70:	00000793          	li	a5,0
    80001f74:	fd5ff06f          	j	80001f48 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001f78:	00050913          	mv	s2,a0
    80001f7c:	00048513          	mv	a0,s1
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	99c080e7          	jalr	-1636(ra) # 8000191c <_ZdlPv>
    80001f88:	00090513          	mv	a0,s2
    80001f8c:	00005097          	auipc	ra,0x5
    80001f90:	dbc080e7          	jalr	-580(ra) # 80006d48 <_Unwind_Resume>
    80001f94:	00048513          	mv	a0,s1
    80001f98:	01813083          	ld	ra,24(sp)
    80001f9c:	01013403          	ld	s0,16(sp)
    80001fa0:	00813483          	ld	s1,8(sp)
    80001fa4:	00013903          	ld	s2,0(sp)
    80001fa8:	02010113          	addi	sp,sp,32
    80001fac:	00008067          	ret

0000000080001fb0 <_ZN3TCB16createIdleThreadEPFvvE>:
TCB *TCB::createIdleThread(Body body) { return new TCB(body, TIME_SLICE, true); }
    80001fb0:	fe010113          	addi	sp,sp,-32
    80001fb4:	00113c23          	sd	ra,24(sp)
    80001fb8:	00813823          	sd	s0,16(sp)
    80001fbc:	00913423          	sd	s1,8(sp)
    80001fc0:	01213023          	sd	s2,0(sp)
    80001fc4:	02010413          	addi	s0,sp,32
    80001fc8:	00050913          	mv	s2,a0
    80001fcc:	03800513          	li	a0,56
    80001fd0:	00000097          	auipc	ra,0x0
    80001fd4:	8fc080e7          	jalr	-1796(ra) # 800018cc <_Znwm>
    80001fd8:	00050493          	mv	s1,a0
    TCB(Body body, uint64 timeSlice, bool put)
            : body(body), stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
              context({(uint64) &threadWrapper,
                       stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
              timeSlice(timeSlice),
              finished(false) {}
    80001fdc:	01253023          	sd	s2,0(a0) # 2000 <_entry-0x7fffe000>
            : body(body), stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001fe0:	00090a63          	beqz	s2,80001ff4 <_ZN3TCB16createIdleThreadEPFvvE+0x44>
    80001fe4:	00002537          	lui	a0,0x2
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	90c080e7          	jalr	-1780(ra) # 800018f4 <_Znam>
    80001ff0:	0080006f          	j	80001ff8 <_ZN3TCB16createIdleThreadEPFvvE+0x48>
    80001ff4:	00000513          	li	a0,0
              finished(false) {}
    80001ff8:	00a4b423          	sd	a0,8(s1)
    80001ffc:	00000797          	auipc	a5,0x0
    80002000:	08878793          	addi	a5,a5,136 # 80002084 <_ZN3TCB13threadWrapperEv>
    80002004:	00f4b823          	sd	a5,16(s1)
                       stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
    80002008:	02050e63          	beqz	a0,80002044 <_ZN3TCB16createIdleThreadEPFvvE+0x94>
    8000200c:	000027b7          	lui	a5,0x2
    80002010:	00f50533          	add	a0,a0,a5
              finished(false) {}
    80002014:	00a4bc23          	sd	a0,24(s1)
    80002018:	00200793          	li	a5,2
    8000201c:	02f4b023          	sd	a5,32(s1)
    80002020:	02048423          	sb	zero,40(s1)
    80002024:	0204b823          	sd	zero,48(s1)
    80002028:	00048513          	mv	a0,s1
    8000202c:	01813083          	ld	ra,24(sp)
    80002030:	01013403          	ld	s0,16(sp)
    80002034:	00813483          	ld	s1,8(sp)
    80002038:	00013903          	ld	s2,0(sp)
    8000203c:	02010113          	addi	sp,sp,32
    80002040:	00008067          	ret
                       stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
    80002044:	00000513          	li	a0,0
    80002048:	fcdff06f          	j	80002014 <_ZN3TCB16createIdleThreadEPFvvE+0x64>
    8000204c:	00050913          	mv	s2,a0
    80002050:	00048513          	mv	a0,s1
    80002054:	00000097          	auipc	ra,0x0
    80002058:	8c8080e7          	jalr	-1848(ra) # 8000191c <_ZdlPv>
    8000205c:	00090513          	mv	a0,s2
    80002060:	00005097          	auipc	ra,0x5
    80002064:	ce8080e7          	jalr	-792(ra) # 80006d48 <_Unwind_Resume>

0000000080002068 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00813423          	sd	s0,8(sp)
    80002070:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80002074:	00000073          	ecall
};
    80002078:	00813403          	ld	s0,8(sp)
    8000207c:	01010113          	addi	sp,sp,16
    80002080:	00008067          	ret

0000000080002084 <_ZN3TCB13threadWrapperEv>:

    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}
void TCB::threadWrapper() {
    80002084:	fe010113          	addi	sp,sp,-32
    80002088:	00113c23          	sd	ra,24(sp)
    8000208c:	00813823          	sd	s0,16(sp)
    80002090:	00913423          	sd	s1,8(sp)
    80002094:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	180080e7          	jalr	384(ra) # 80002218 <_ZN5Riscv10popSppSpieEv>
    running->body();
    800020a0:	00004497          	auipc	s1,0x4
    800020a4:	b9048493          	addi	s1,s1,-1136 # 80005c30 <_ZN3TCB7runningE>
    800020a8:	0004b783          	ld	a5,0(s1)
    800020ac:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    800020b0:	000780e7          	jalr	a5
    running->setFinished(true);
    800020b4:	0004b783          	ld	a5,0(s1)
    void setFinished(bool f) { TCB::finished = f; }
    800020b8:	00100713          	li	a4,1
    800020bc:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	fa8080e7          	jalr	-88(ra) # 80002068 <_ZN3TCB5yieldEv>
}
    800020c8:	01813083          	ld	ra,24(sp)
    800020cc:	01013403          	ld	s0,16(sp)
    800020d0:	00813483          	ld	s1,8(sp)
    800020d4:	02010113          	addi	sp,sp,32
    800020d8:	00008067          	ret

00000000800020dc <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800020dc:	fe010113          	addi	sp,sp,-32
    800020e0:	00113c23          	sd	ra,24(sp)
    800020e4:	00813823          	sd	s0,16(sp)
    800020e8:	00913423          	sd	s1,8(sp)
    800020ec:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800020f0:	00004497          	auipc	s1,0x4
    800020f4:	b404b483          	ld	s1,-1216(s1) # 80005c30 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800020f8:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) {
    800020fc:	02078c63          	beqz	a5,80002134 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80002100:	00000097          	auipc	ra,0x0
    80002104:	308080e7          	jalr	776(ra) # 80002408 <_ZN9Scheduler3getEv>
    80002108:	00004797          	auipc	a5,0x4
    8000210c:	b2a7b423          	sd	a0,-1240(a5) # 80005c30 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002110:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80002114:	01048513          	addi	a0,s1,16
    80002118:	fffff097          	auipc	ra,0xfffff
    8000211c:	0f8080e7          	jalr	248(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002120:	01813083          	ld	ra,24(sp)
    80002124:	01013403          	ld	s0,16(sp)
    80002128:	00813483          	ld	s1,8(sp)
    8000212c:	02010113          	addi	sp,sp,32
    80002130:	00008067          	ret
        Scheduler::put(old);
    80002134:	00048513          	mv	a0,s1
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	364080e7          	jalr	868(ra) # 8000249c <_ZN9Scheduler3putEP3TCB>
    80002140:	fc1ff06f          	j	80002100 <_ZN3TCB8dispatchEv+0x24>

0000000080002144 <_ZN3TCB13dispatchSleepEv>:
void TCB::dispatchSleep() {
    80002144:	fe010113          	addi	sp,sp,-32
    80002148:	00113c23          	sd	ra,24(sp)
    8000214c:	00813823          	sd	s0,16(sp)
    80002150:	00913423          	sd	s1,8(sp)
    80002154:	01213023          	sd	s2,0(sp)
    80002158:	02010413          	addi	s0,sp,32
    TCB *old = running;
    8000215c:	00004917          	auipc	s2,0x4
    80002160:	ad490913          	addi	s2,s2,-1324 # 80005c30 <_ZN3TCB7runningE>
    80002164:	00093483          	ld	s1,0(s2)
    Scheduler::putSleep(old);
    80002168:	00048513          	mv	a0,s1
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	44c080e7          	jalr	1100(ra) # 800025b8 <_ZN9Scheduler8putSleepEP3TCB>
    running = Scheduler::get();
    80002174:	00000097          	auipc	ra,0x0
    80002178:	294080e7          	jalr	660(ra) # 80002408 <_ZN9Scheduler3getEv>
    8000217c:	00a93023          	sd	a0,0(s2)
    TCB::contextSwitch(&old->context, &running->context);
    80002180:	01050593          	addi	a1,a0,16
    80002184:	01048513          	addi	a0,s1,16
    80002188:	fffff097          	auipc	ra,0xfffff
    8000218c:	088080e7          	jalr	136(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002190:	01813083          	ld	ra,24(sp)
    80002194:	01013403          	ld	s0,16(sp)
    80002198:	00813483          	ld	s1,8(sp)
    8000219c:	00013903          	ld	s2,0(sp)
    800021a0:	02010113          	addi	sp,sp,32
    800021a4:	00008067          	ret

00000000800021a8 <_ZN3TCB11thread_exitEv>:

void TCB::thread_exit(){
    800021a8:	ff010113          	addi	sp,sp,-16
    800021ac:	00113423          	sd	ra,8(sp)
    800021b0:	00813023          	sd	s0,0(sp)
    800021b4:	01010413          	addi	s0,sp,16
    void setFinished(bool f) { TCB::finished = f; }
    800021b8:	00004797          	auipc	a5,0x4
    800021bc:	a787b783          	ld	a5,-1416(a5) # 80005c30 <_ZN3TCB7runningE>
    800021c0:	00100713          	li	a4,1
    800021c4:	02e78423          	sb	a4,40(a5)
    running->setFinished(true); // Also can running = Scheduler::get(); TCB::contextSwitch...;
    TCB::yield();
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	ea0080e7          	jalr	-352(ra) # 80002068 <_ZN3TCB5yieldEv>
}
    800021d0:	00813083          	ld	ra,8(sp)
    800021d4:	00013403          	ld	s0,0(sp)
    800021d8:	01010113          	addi	sp,sp,16
    800021dc:	00008067          	ret

00000000800021e0 <_ZN3TCB10time_sleepEm>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
int TCB::time_sleep (time_t t){
    800021e0:	ff010113          	addi	sp,sp,-16
    800021e4:	00113423          	sd	ra,8(sp)
    800021e8:	00813023          	sd	s0,0(sp)
    800021ec:	01010413          	addi	s0,sp,16
    running->sleeping = t;
    800021f0:	00004797          	auipc	a5,0x4
    800021f4:	a407b783          	ld	a5,-1472(a5) # 80005c30 <_ZN3TCB7runningE>
    800021f8:	02a7b823          	sd	a0,48(a5)
    TCB::yield();
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	e6c080e7          	jalr	-404(ra) # 80002068 <_ZN3TCB5yieldEv>
    return 0;
    80002204:	00000513          	li	a0,0
    80002208:	00813083          	ld	ra,8(sp)
    8000220c:	00013403          	ld	s0,0(sp)
    80002210:	01010113          	addi	sp,sp,16
    80002214:	00008067          	ret

0000000080002218 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/print.hpp"


void Riscv::popSppSpie() {
    80002218:	ff010113          	addi	sp,sp,-16
    8000221c:	00813423          	sd	s0,8(sp)
    80002220:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002224:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002228:	10200073          	sret
}
    8000222c:	00813403          	ld	s0,8(sp)
    80002230:	01010113          	addi	sp,sp,16
    80002234:	00008067          	ret

0000000080002238 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80002238:	fb010113          	addi	sp,sp,-80
    8000223c:	04113423          	sd	ra,72(sp)
    80002240:	04813023          	sd	s0,64(sp)
    80002244:	02913c23          	sd	s1,56(sp)
    80002248:	03213823          	sd	s2,48(sp)
    8000224c:	05010413          	addi	s0,sp,80
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    80002250:	142027f3          	csrr	a5,scause
    80002254:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80002258:	fb843703          	ld	a4,-72(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000009UL) { //ecall
    8000225c:	00900793          	li	a5,9
    80002260:	02f70e63          	beq	a4,a5,8000229c <_ZN5Riscv20handleSupervisorTrapEv+0x64>
        TCB::timeSLiceCounter = 0;
        if(TCB::running->sleeping > 0) TCB::dispatchSleep();
        else TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if (scause == 0x8000000000000001UL) { //interrupt, supervisor software interrupt (timer)
    80002264:	fff00793          	li	a5,-1
    80002268:	03f79793          	slli	a5,a5,0x3f
    8000226c:	00178793          	addi	a5,a5,1
    80002270:	08f70463          	beq	a4,a5,800022f8 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);

    } else if (scause == 0x8000000000000009UL) {//interrupt, supervisor external interrupt (console)
    80002274:	fff00793          	li	a5,-1
    80002278:	03f79793          	slli	a5,a5,0x3f
    8000227c:	00978793          	addi	a5,a5,9
    80002280:	12f70a63          	beq	a4,a5,800023b4 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
        //print stval
        printString("Stval: ");
        printInteger(r_stval());
        printString("\n");*/
    }
    80002284:	04813083          	ld	ra,72(sp)
    80002288:	04013403          	ld	s0,64(sp)
    8000228c:	03813483          	ld	s1,56(sp)
    80002290:	03013903          	ld	s2,48(sp)
    80002294:	05010113          	addi	sp,sp,80
    80002298:	00008067          	ret
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000229c:	141027f3          	csrr	a5,sepc
    800022a0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800022a4:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = r_sepc() + 4; //ecall return to its address
    800022a8:	00448493          	addi	s1,s1,4
inline void Riscv::mc_sstatus(uint64 mask){
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
}
inline uint64 Riscv::r_sstatus(){
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022ac:	100027f3          	csrr	a5,sstatus
    800022b0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800022b4:	fc043903          	ld	s2,-64(s0)
        TCB::timeSLiceCounter = 0;
    800022b8:	00004797          	auipc	a5,0x4
    800022bc:	9087b783          	ld	a5,-1784(a5) # 80005bc0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800022c0:	0007b023          	sd	zero,0(a5)
        if(TCB::running->sleeping > 0) TCB::dispatchSleep();
    800022c4:	00004797          	auipc	a5,0x4
    800022c8:	8f47b783          	ld	a5,-1804(a5) # 80005bb8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800022cc:	0007b783          	ld	a5,0(a5)
    800022d0:	0307b783          	ld	a5,48(a5)
    800022d4:	00078c63          	beqz	a5,800022ec <_ZN5Riscv20handleSupervisorTrapEv+0xb4>
    800022d8:	00000097          	auipc	ra,0x0
    800022dc:	e6c080e7          	jalr	-404(ra) # 80002144 <_ZN3TCB13dispatchSleepEv>
}
inline void Riscv::w_sstatus(uint64 sstatus){
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800022e0:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800022e4:	14149073          	csrw	sepc,s1
}
    800022e8:	f9dff06f          	j	80002284 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>
        else TCB::dispatch();
    800022ec:	00000097          	auipc	ra,0x0
    800022f0:	df0080e7          	jalr	-528(ra) # 800020dc <_ZN3TCB8dispatchEv>
    800022f4:	fedff06f          	j	800022e0 <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
        TCB::timeSLiceCounter++;
    800022f8:	00004717          	auipc	a4,0x4
    800022fc:	8c873703          	ld	a4,-1848(a4) # 80005bc0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002300:	00073783          	ld	a5,0(a4)
    80002304:	00178793          	addi	a5,a5,1
    80002308:	00f73023          	sd	a5,0(a4)
        for (uint64 i = 0; i < Scheduler::getNumOfSleep(); i++)//This won't work if Scheduler is not queue
    8000230c:	00000493          	li	s1,0
    80002310:	0100006f          	j	80002320 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
            else Scheduler::put(elem);
    80002314:	00000097          	auipc	ra,0x0
    80002318:	188080e7          	jalr	392(ra) # 8000249c <_ZN9Scheduler3putEP3TCB>
        for (uint64 i = 0; i < Scheduler::getNumOfSleep(); i++)//This won't work if Scheduler is not queue
    8000231c:	00148493          	addi	s1,s1,1
    80002320:	00000097          	auipc	ra,0x0
    80002324:	330080e7          	jalr	816(ra) # 80002650 <_ZN9Scheduler13getNumOfSleepEv>
    80002328:	02a4f463          	bgeu	s1,a0,80002350 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
            TCB *elem = Scheduler::getSleep();
    8000232c:	00000097          	auipc	ra,0x0
    80002330:	200080e7          	jalr	512(ra) # 8000252c <_ZN9Scheduler8getSleepEv>
            elem->sleeping--;
    80002334:	03053783          	ld	a5,48(a0)
    80002338:	fff78793          	addi	a5,a5,-1
    8000233c:	02f53823          	sd	a5,48(a0)
            if (elem->sleeping > 0)Scheduler::putSleep(elem);
    80002340:	fc078ae3          	beqz	a5,80002314 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    80002344:	00000097          	auipc	ra,0x0
    80002348:	274080e7          	jalr	628(ra) # 800025b8 <_ZN9Scheduler8putSleepEP3TCB>
    8000234c:	fd1ff06f          	j	8000231c <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
        if (TCB::timeSLiceCounter >= TCB::running->getTimeSlice()) {
    80002350:	00004797          	auipc	a5,0x4
    80002354:	8687b783          	ld	a5,-1944(a5) # 80005bb8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002358:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() const { return timeSlice; }
    8000235c:	0207b783          	ld	a5,32(a5)
    80002360:	00004717          	auipc	a4,0x4
    80002364:	86073703          	ld	a4,-1952(a4) # 80005bc0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002368:	00073703          	ld	a4,0(a4)
    8000236c:	00f77863          	bgeu	a4,a5,8000237c <_ZN5Riscv20handleSupervisorTrapEv+0x144>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002370:	00200793          	li	a5,2
    80002374:	1447b073          	csrc	sip,a5
}
    80002378:	f0dff06f          	j	80002284 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000237c:	141027f3          	csrr	a5,sepc
    80002380:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002384:	fd843483          	ld	s1,-40(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002388:	100027f3          	csrr	a5,sstatus
    8000238c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002390:	fd043903          	ld	s2,-48(s0)
            TCB::timeSLiceCounter = 0;
    80002394:	00004797          	auipc	a5,0x4
    80002398:	82c7b783          	ld	a5,-2004(a5) # 80005bc0 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000239c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	d3c080e7          	jalr	-708(ra) # 800020dc <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023a8:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023ac:	14149073          	csrw	sepc,s1
}
    800023b0:	fc1ff06f          	j	80002370 <_ZN5Riscv20handleSupervisorTrapEv+0x138>
        console_handler();
    800023b4:	00002097          	auipc	ra,0x2
    800023b8:	7c0080e7          	jalr	1984(ra) # 80004b74 <console_handler>
    800023bc:	ec9ff06f          	j	80002284 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>

00000000800023c0 <_Z41__static_initialization_and_destruction_0ii>:
    }
}

TCB *Scheduler::getSleep() { nsleep--; return sleepThreadQueue.removeFirst(); }
void Scheduler::putSleep(TCB *ccb) { nsleep++; sleepThreadQueue.addLast(ccb); }
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00813423          	sd	s0,8(sp)
    800023c8:	01010413          	addi	s0,sp,16
    800023cc:	00100793          	li	a5,1
    800023d0:	00f50863          	beq	a0,a5,800023e0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800023d4:	00813403          	ld	s0,8(sp)
    800023d8:	01010113          	addi	sp,sp,16
    800023dc:	00008067          	ret
    800023e0:	000107b7          	lui	a5,0x10
    800023e4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800023e8:	fef596e3          	bne	a1,a5,800023d4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    800023ec:	00004797          	auipc	a5,0x4
    800023f0:	85478793          	addi	a5,a5,-1964 # 80005c40 <_ZN9Scheduler16readyThreadQueueE>
    800023f4:	0007b023          	sd	zero,0(a5)
    800023f8:	0007b423          	sd	zero,8(a5)
    800023fc:	0007bc23          	sd	zero,24(a5)
    80002400:	0207b023          	sd	zero,32(a5)
    80002404:	fd1ff06f          	j	800023d4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002408 <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() { 
    80002408:	fe010113          	addi	sp,sp,-32
    8000240c:	00113c23          	sd	ra,24(sp)
    80002410:	00813823          	sd	s0,16(sp)
    80002414:	00913423          	sd	s1,8(sp)
    80002418:	02010413          	addi	s0,sp,32
  List(const List<T> &) = delete;
  List<T> &operator=(const List<T> &) = delete;
  uint64 getNumOfElem(){ return n; }
    8000241c:	00004797          	auipc	a5,0x4
    80002420:	8347b783          	ld	a5,-1996(a5) # 80005c50 <_ZN9Scheduler16readyThreadQueueE+0x10>
    if(readyThreadQueue.getNumOfElem() == 0) 
    80002424:	02079263          	bnez	a5,80002448 <_ZN9Scheduler3getEv+0x40>
        return idle;
    80002428:	00004497          	auipc	s1,0x4
    8000242c:	8484b483          	ld	s1,-1976(s1) # 80005c70 <_ZN9Scheduler4idleE>
}
    80002430:	00048513          	mv	a0,s1
    80002434:	01813083          	ld	ra,24(sp)
    80002438:	01013403          	ld	s0,16(sp)
    8000243c:	00813483          	ld	s1,8(sp)
    80002440:	02010113          	addi	sp,sp,32
    80002444:	00008067          	ret
      head = tail = elem;
    }
    n++;
  }
  T *removeFirst() {
    if (!head) {
    80002448:	00003517          	auipc	a0,0x3
    8000244c:	7f853503          	ld	a0,2040(a0) # 80005c40 <_ZN9Scheduler16readyThreadQueueE>
    80002450:	04050263          	beqz	a0,80002494 <_ZN9Scheduler3getEv+0x8c>
      return 0;
    }
    Elem *elem = head;
    head = head->next;
    80002454:	00853783          	ld	a5,8(a0)
    80002458:	00003717          	auipc	a4,0x3
    8000245c:	7ef73423          	sd	a5,2024(a4) # 80005c40 <_ZN9Scheduler16readyThreadQueueE>
    if (!head) {
    80002460:	02078463          	beqz	a5,80002488 <_ZN9Scheduler3getEv+0x80>
      tail = 0;
    }
    n--;
    80002464:	00003717          	auipc	a4,0x3
    80002468:	7dc70713          	addi	a4,a4,2012 # 80005c40 <_ZN9Scheduler16readyThreadQueueE>
    8000246c:	01073783          	ld	a5,16(a4)
    80002470:	fff78793          	addi	a5,a5,-1
    80002474:	00f73823          	sd	a5,16(a4)
    T *ret = elem->data;
    80002478:	00053483          	ld	s1,0(a0)
    delete elem;
    8000247c:	fffff097          	auipc	ra,0xfffff
    80002480:	4a0080e7          	jalr	1184(ra) # 8000191c <_ZdlPv>
    return ret;
    80002484:	fadff06f          	j	80002430 <_ZN9Scheduler3getEv+0x28>
      tail = 0;
    80002488:	00003797          	auipc	a5,0x3
    8000248c:	7c07b023          	sd	zero,1984(a5) # 80005c48 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002490:	fd5ff06f          	j	80002464 <_ZN9Scheduler3getEv+0x5c>
      return 0;
    80002494:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst(); 
    80002498:	f99ff06f          	j	80002430 <_ZN9Scheduler3getEv+0x28>

000000008000249c <_ZN9Scheduler3putEP3TCB>:
    if(ccb != idle) {
    8000249c:	00003797          	auipc	a5,0x3
    800024a0:	7d47b783          	ld	a5,2004(a5) # 80005c70 <_ZN9Scheduler4idleE>
    800024a4:	08a78263          	beq	a5,a0,80002528 <_ZN9Scheduler3putEP3TCB+0x8c>
void Scheduler::put(TCB *ccb) {
    800024a8:	fe010113          	addi	sp,sp,-32
    800024ac:	00113c23          	sd	ra,24(sp)
    800024b0:	00813823          	sd	s0,16(sp)
    800024b4:	00913423          	sd	s1,8(sp)
    800024b8:	02010413          	addi	s0,sp,32
    800024bc:	00050493          	mv	s1,a0
    Elem *elem = new Elem(data, 0);
    800024c0:	01000513          	li	a0,16
    800024c4:	fffff097          	auipc	ra,0xfffff
    800024c8:	408080e7          	jalr	1032(ra) # 800018cc <_Znwm>
    Elem(T *data, Elem *next) : data(data), next(next) {}
    800024cc:	00953023          	sd	s1,0(a0)
    800024d0:	00053423          	sd	zero,8(a0)
    if (tail) {
    800024d4:	00003797          	auipc	a5,0x3
    800024d8:	7747b783          	ld	a5,1908(a5) # 80005c48 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800024dc:	02078c63          	beqz	a5,80002514 <_ZN9Scheduler3putEP3TCB+0x78>
      tail->next = elem;
    800024e0:	00a7b423          	sd	a0,8(a5)
      tail = elem;
    800024e4:	00003797          	auipc	a5,0x3
    800024e8:	76a7b223          	sd	a0,1892(a5) # 80005c48 <_ZN9Scheduler16readyThreadQueueE+0x8>
    n++;
    800024ec:	00003717          	auipc	a4,0x3
    800024f0:	75470713          	addi	a4,a4,1876 # 80005c40 <_ZN9Scheduler16readyThreadQueueE>
    800024f4:	01073783          	ld	a5,16(a4)
    800024f8:	00178793          	addi	a5,a5,1
    800024fc:	00f73823          	sd	a5,16(a4)
}
    80002500:	01813083          	ld	ra,24(sp)
    80002504:	01013403          	ld	s0,16(sp)
    80002508:	00813483          	ld	s1,8(sp)
    8000250c:	02010113          	addi	sp,sp,32
    80002510:	00008067          	ret
      head = tail = elem;
    80002514:	00003797          	auipc	a5,0x3
    80002518:	72c78793          	addi	a5,a5,1836 # 80005c40 <_ZN9Scheduler16readyThreadQueueE>
    8000251c:	00a7b423          	sd	a0,8(a5)
    80002520:	00a7b023          	sd	a0,0(a5)
    80002524:	fc9ff06f          	j	800024ec <_ZN9Scheduler3putEP3TCB+0x50>
    80002528:	00008067          	ret

000000008000252c <_ZN9Scheduler8getSleepEv>:
TCB *Scheduler::getSleep() { nsleep--; return sleepThreadQueue.removeFirst(); }
    8000252c:	fe010113          	addi	sp,sp,-32
    80002530:	00113c23          	sd	ra,24(sp)
    80002534:	00813823          	sd	s0,16(sp)
    80002538:	00913423          	sd	s1,8(sp)
    8000253c:	02010413          	addi	s0,sp,32
    80002540:	00003797          	auipc	a5,0x3
    80002544:	70078793          	addi	a5,a5,1792 # 80005c40 <_ZN9Scheduler16readyThreadQueueE>
    80002548:	0387b703          	ld	a4,56(a5)
    8000254c:	fff70713          	addi	a4,a4,-1
    80002550:	02e7bc23          	sd	a4,56(a5)
    if (!head) {
    80002554:	0187b503          	ld	a0,24(a5)
    80002558:	04050c63          	beqz	a0,800025b0 <_ZN9Scheduler8getSleepEv+0x84>
    head = head->next;
    8000255c:	00853783          	ld	a5,8(a0)
    80002560:	00003717          	auipc	a4,0x3
    80002564:	6ef73c23          	sd	a5,1784(a4) # 80005c58 <_ZN9Scheduler16sleepThreadQueueE>
    if (!head) {
    80002568:	02078e63          	beqz	a5,800025a4 <_ZN9Scheduler8getSleepEv+0x78>
    n--;
    8000256c:	00003717          	auipc	a4,0x3
    80002570:	6d470713          	addi	a4,a4,1748 # 80005c40 <_ZN9Scheduler16readyThreadQueueE>
    80002574:	02873783          	ld	a5,40(a4)
    80002578:	fff78793          	addi	a5,a5,-1
    8000257c:	02f73423          	sd	a5,40(a4)
    T *ret = elem->data;
    80002580:	00053483          	ld	s1,0(a0)
    delete elem;
    80002584:	fffff097          	auipc	ra,0xfffff
    80002588:	398080e7          	jalr	920(ra) # 8000191c <_ZdlPv>
    8000258c:	00048513          	mv	a0,s1
    80002590:	01813083          	ld	ra,24(sp)
    80002594:	01013403          	ld	s0,16(sp)
    80002598:	00813483          	ld	s1,8(sp)
    8000259c:	02010113          	addi	sp,sp,32
    800025a0:	00008067          	ret
      tail = 0;
    800025a4:	00003797          	auipc	a5,0x3
    800025a8:	6a07be23          	sd	zero,1724(a5) # 80005c60 <_ZN9Scheduler16sleepThreadQueueE+0x8>
    800025ac:	fc1ff06f          	j	8000256c <_ZN9Scheduler8getSleepEv+0x40>
      return 0;
    800025b0:	00050493          	mv	s1,a0
    800025b4:	fd9ff06f          	j	8000258c <_ZN9Scheduler8getSleepEv+0x60>

00000000800025b8 <_ZN9Scheduler8putSleepEP3TCB>:
void Scheduler::putSleep(TCB *ccb) { nsleep++; sleepThreadQueue.addLast(ccb); }
    800025b8:	fe010113          	addi	sp,sp,-32
    800025bc:	00113c23          	sd	ra,24(sp)
    800025c0:	00813823          	sd	s0,16(sp)
    800025c4:	00913423          	sd	s1,8(sp)
    800025c8:	01213023          	sd	s2,0(sp)
    800025cc:	02010413          	addi	s0,sp,32
    800025d0:	00050913          	mv	s2,a0
    800025d4:	00003497          	auipc	s1,0x3
    800025d8:	66c48493          	addi	s1,s1,1644 # 80005c40 <_ZN9Scheduler16readyThreadQueueE>
    800025dc:	0384b783          	ld	a5,56(s1)
    800025e0:	00178793          	addi	a5,a5,1
    800025e4:	02f4bc23          	sd	a5,56(s1)
    Elem *elem = new Elem(data, 0);
    800025e8:	01000513          	li	a0,16
    800025ec:	fffff097          	auipc	ra,0xfffff
    800025f0:	2e0080e7          	jalr	736(ra) # 800018cc <_Znwm>
    Elem(T *data, Elem *next) : data(data), next(next) {}
    800025f4:	01253023          	sd	s2,0(a0)
    800025f8:	00053423          	sd	zero,8(a0)
    if (tail) {
    800025fc:	0204b783          	ld	a5,32(s1)
    80002600:	02078e63          	beqz	a5,8000263c <_ZN9Scheduler8putSleepEP3TCB+0x84>
      tail->next = elem;
    80002604:	00a7b423          	sd	a0,8(a5)
      tail = elem;
    80002608:	00003797          	auipc	a5,0x3
    8000260c:	64a7bc23          	sd	a0,1624(a5) # 80005c60 <_ZN9Scheduler16sleepThreadQueueE+0x8>
    n++;
    80002610:	00003717          	auipc	a4,0x3
    80002614:	63070713          	addi	a4,a4,1584 # 80005c40 <_ZN9Scheduler16readyThreadQueueE>
    80002618:	02873783          	ld	a5,40(a4)
    8000261c:	00178793          	addi	a5,a5,1
    80002620:	02f73423          	sd	a5,40(a4)
    80002624:	01813083          	ld	ra,24(sp)
    80002628:	01013403          	ld	s0,16(sp)
    8000262c:	00813483          	ld	s1,8(sp)
    80002630:	00013903          	ld	s2,0(sp)
    80002634:	02010113          	addi	sp,sp,32
    80002638:	00008067          	ret
      head = tail = elem;
    8000263c:	00003797          	auipc	a5,0x3
    80002640:	60478793          	addi	a5,a5,1540 # 80005c40 <_ZN9Scheduler16readyThreadQueueE>
    80002644:	02a7b023          	sd	a0,32(a5)
    80002648:	00a7bc23          	sd	a0,24(a5)
    8000264c:	fc5ff06f          	j	80002610 <_ZN9Scheduler8putSleepEP3TCB+0x58>

0000000080002650 <_ZN9Scheduler13getNumOfSleepEv>:
    80002650:	ff010113          	addi	sp,sp,-16
    80002654:	00813423          	sd	s0,8(sp)
    80002658:	01010413          	addi	s0,sp,16
    8000265c:	00003517          	auipc	a0,0x3
    80002660:	61c53503          	ld	a0,1564(a0) # 80005c78 <_ZN9Scheduler6nsleepE>
    80002664:	00813403          	ld	s0,8(sp)
    80002668:	01010113          	addi	sp,sp,16
    8000266c:	00008067          	ret

0000000080002670 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002670:	ff010113          	addi	sp,sp,-16
    80002674:	00113423          	sd	ra,8(sp)
    80002678:	00813023          	sd	s0,0(sp)
    8000267c:	01010413          	addi	s0,sp,16
    80002680:	000105b7          	lui	a1,0x10
    80002684:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002688:	00100513          	li	a0,1
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	d34080e7          	jalr	-716(ra) # 800023c0 <_Z41__static_initialization_and_destruction_0ii>
    80002694:	00813083          	ld	ra,8(sp)
    80002698:	00013403          	ld	s0,0(sp)
    8000269c:	01010113          	addi	sp,sp,16
    800026a0:	00008067          	ret

00000000800026a4 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../lib/console.h"
#include "../h/riscv.hpp"

void printString(const char *string) {
    800026a4:	fd010113          	addi	sp,sp,-48
    800026a8:	02113423          	sd	ra,40(sp)
    800026ac:	02813023          	sd	s0,32(sp)
    800026b0:	00913c23          	sd	s1,24(sp)
    800026b4:	01213823          	sd	s2,16(sp)
    800026b8:	03010413          	addi	s0,sp,48
    800026bc:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800026c0:	100027f3          	csrr	a5,sstatus
    800026c4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800026c8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800026cc:	00200793          	li	a5,2
    800026d0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0') {
    800026d4:	0004c503          	lbu	a0,0(s1)
    800026d8:	00050a63          	beqz	a0,800026ec <_Z11printStringPKc+0x48>
        __putc(*string);
    800026dc:	00002097          	auipc	ra,0x2
    800026e0:	424080e7          	jalr	1060(ra) # 80004b00 <__putc>
        string++;
    800026e4:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    800026e8:	fedff06f          	j	800026d4 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800026ec:	0009091b          	sext.w	s2,s2
    800026f0:	00297913          	andi	s2,s2,2
    800026f4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800026f8:	10092073          	csrs	sstatus,s2
}
    800026fc:	02813083          	ld	ra,40(sp)
    80002700:	02013403          	ld	s0,32(sp)
    80002704:	01813483          	ld	s1,24(sp)
    80002708:	01013903          	ld	s2,16(sp)
    8000270c:	03010113          	addi	sp,sp,48
    80002710:	00008067          	ret

0000000080002714 <_Z12printIntegerm>:

void printInteger(uint64 integer) {
    80002714:	fc010113          	addi	sp,sp,-64
    80002718:	02113c23          	sd	ra,56(sp)
    8000271c:	02813823          	sd	s0,48(sp)
    80002720:	02913423          	sd	s1,40(sp)
    80002724:	03213023          	sd	s2,32(sp)
    80002728:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000272c:	100027f3          	csrr	a5,sstatus
    80002730:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002734:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002738:	00200793          	li	a5,2
    8000273c:	1007b073          	csrc	sstatus,a5
    uint x;
    if (integer < 0) {
        neg = 1;
        x = -integer;
    } else {
        x = integer;
    80002740:	0005051b          	sext.w	a0,a0
    }
    i = 0;
    80002744:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % 10];
    80002748:	00a00613          	li	a2,10
    8000274c:	02c5773b          	remuw	a4,a0,a2
    80002750:	02071693          	slli	a3,a4,0x20
    80002754:	0206d693          	srli	a3,a3,0x20
    80002758:	00003717          	auipc	a4,0x3
    8000275c:	a0870713          	addi	a4,a4,-1528 # 80005160 <_ZZ12printIntegermE6digits>
    80002760:	00d70733          	add	a4,a4,a3
    80002764:	00074703          	lbu	a4,0(a4)
    80002768:	fe040693          	addi	a3,s0,-32
    8000276c:	009687b3          	add	a5,a3,s1
    80002770:	0014849b          	addiw	s1,s1,1
    80002774:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002778:	0005071b          	sext.w	a4,a0
    8000277c:	02c5553b          	divuw	a0,a0,a2
    80002780:	00900793          	li	a5,9
    80002784:	fce7e2e3          	bltu	a5,a4,80002748 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';
    while (--i >= 0)
    80002788:	fff4849b          	addiw	s1,s1,-1
    8000278c:	0004ce63          	bltz	s1,800027a8 <_Z12printIntegerm+0x94>
        __putc(buf[i]);
    80002790:	fe040793          	addi	a5,s0,-32
    80002794:	009787b3          	add	a5,a5,s1
    80002798:	ff07c503          	lbu	a0,-16(a5)
    8000279c:	00002097          	auipc	ra,0x2
    800027a0:	364080e7          	jalr	868(ra) # 80004b00 <__putc>
    800027a4:	fe5ff06f          	j	80002788 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800027a8:	0009091b          	sext.w	s2,s2
    800027ac:	00297913          	andi	s2,s2,2
    800027b0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800027b4:	10092073          	csrs	sstatus,s2
}
    800027b8:	03813083          	ld	ra,56(sp)
    800027bc:	03013403          	ld	s0,48(sp)
    800027c0:	02813483          	ld	s1,40(sp)
    800027c4:	02013903          	ld	s2,32(sp)
    800027c8:	04010113          	addi	sp,sp,64
    800027cc:	00008067          	ret

00000000800027d0 <_Z9printLinePKcm>:
void printLine(char const *string, uint64 integer){
    800027d0:	fe010113          	addi	sp,sp,-32
    800027d4:	00113c23          	sd	ra,24(sp)
    800027d8:	00813823          	sd	s0,16(sp)
    800027dc:	00913423          	sd	s1,8(sp)
    800027e0:	02010413          	addi	s0,sp,32
    800027e4:	00058493          	mv	s1,a1
    printString(string);
    800027e8:	00000097          	auipc	ra,0x0
    800027ec:	ebc080e7          	jalr	-324(ra) # 800026a4 <_Z11printStringPKc>
    printInteger(integer);
    800027f0:	00048513          	mv	a0,s1
    800027f4:	00000097          	auipc	ra,0x0
    800027f8:	f20080e7          	jalr	-224(ra) # 80002714 <_Z12printIntegerm>
    printString("\n");
    800027fc:	00003517          	auipc	a0,0x3
    80002800:	95c50513          	addi	a0,a0,-1700 # 80005158 <kvmincrease+0x538>
    80002804:	00000097          	auipc	ra,0x0
    80002808:	ea0080e7          	jalr	-352(ra) # 800026a4 <_Z11printStringPKc>
    8000280c:	01813083          	ld	ra,24(sp)
    80002810:	01013403          	ld	s0,16(sp)
    80002814:	00813483          	ld	s1,8(sp)
    80002818:	02010113          	addi	sp,sp,32
    8000281c:	00008067          	ret

0000000080002820 <start>:
    80002820:	ff010113          	addi	sp,sp,-16
    80002824:	00813423          	sd	s0,8(sp)
    80002828:	01010413          	addi	s0,sp,16
    8000282c:	300027f3          	csrr	a5,mstatus
    80002830:	ffffe737          	lui	a4,0xffffe
    80002834:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff790f>
    80002838:	00e7f7b3          	and	a5,a5,a4
    8000283c:	00001737          	lui	a4,0x1
    80002840:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002844:	00e7e7b3          	or	a5,a5,a4
    80002848:	30079073          	csrw	mstatus,a5
    8000284c:	00000797          	auipc	a5,0x0
    80002850:	16078793          	addi	a5,a5,352 # 800029ac <system_main>
    80002854:	34179073          	csrw	mepc,a5
    80002858:	00000793          	li	a5,0
    8000285c:	18079073          	csrw	satp,a5
    80002860:	000107b7          	lui	a5,0x10
    80002864:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002868:	30279073          	csrw	medeleg,a5
    8000286c:	30379073          	csrw	mideleg,a5
    80002870:	104027f3          	csrr	a5,sie
    80002874:	2227e793          	ori	a5,a5,546
    80002878:	10479073          	csrw	sie,a5
    8000287c:	fff00793          	li	a5,-1
    80002880:	00a7d793          	srli	a5,a5,0xa
    80002884:	3b079073          	csrw	pmpaddr0,a5
    80002888:	00f00793          	li	a5,15
    8000288c:	3a079073          	csrw	pmpcfg0,a5
    80002890:	f14027f3          	csrr	a5,mhartid
    80002894:	0200c737          	lui	a4,0x200c
    80002898:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000289c:	0007869b          	sext.w	a3,a5
    800028a0:	00269713          	slli	a4,a3,0x2
    800028a4:	000f4637          	lui	a2,0xf4
    800028a8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800028ac:	00d70733          	add	a4,a4,a3
    800028b0:	0037979b          	slliw	a5,a5,0x3
    800028b4:	020046b7          	lui	a3,0x2004
    800028b8:	00d787b3          	add	a5,a5,a3
    800028bc:	00c585b3          	add	a1,a1,a2
    800028c0:	00371693          	slli	a3,a4,0x3
    800028c4:	00003717          	auipc	a4,0x3
    800028c8:	3bc70713          	addi	a4,a4,956 # 80005c80 <timer_scratch>
    800028cc:	00b7b023          	sd	a1,0(a5)
    800028d0:	00d70733          	add	a4,a4,a3
    800028d4:	00f73c23          	sd	a5,24(a4)
    800028d8:	02c73023          	sd	a2,32(a4)
    800028dc:	34071073          	csrw	mscratch,a4
    800028e0:	00000797          	auipc	a5,0x0
    800028e4:	6e078793          	addi	a5,a5,1760 # 80002fc0 <timervec>
    800028e8:	30579073          	csrw	mtvec,a5
    800028ec:	300027f3          	csrr	a5,mstatus
    800028f0:	0087e793          	ori	a5,a5,8
    800028f4:	30079073          	csrw	mstatus,a5
    800028f8:	304027f3          	csrr	a5,mie
    800028fc:	0807e793          	ori	a5,a5,128
    80002900:	30479073          	csrw	mie,a5
    80002904:	f14027f3          	csrr	a5,mhartid
    80002908:	0007879b          	sext.w	a5,a5
    8000290c:	00078213          	mv	tp,a5
    80002910:	30200073          	mret
    80002914:	00813403          	ld	s0,8(sp)
    80002918:	01010113          	addi	sp,sp,16
    8000291c:	00008067          	ret

0000000080002920 <timerinit>:
    80002920:	ff010113          	addi	sp,sp,-16
    80002924:	00813423          	sd	s0,8(sp)
    80002928:	01010413          	addi	s0,sp,16
    8000292c:	f14027f3          	csrr	a5,mhartid
    80002930:	0200c737          	lui	a4,0x200c
    80002934:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002938:	0007869b          	sext.w	a3,a5
    8000293c:	00269713          	slli	a4,a3,0x2
    80002940:	000f4637          	lui	a2,0xf4
    80002944:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002948:	00d70733          	add	a4,a4,a3
    8000294c:	0037979b          	slliw	a5,a5,0x3
    80002950:	020046b7          	lui	a3,0x2004
    80002954:	00d787b3          	add	a5,a5,a3
    80002958:	00c585b3          	add	a1,a1,a2
    8000295c:	00371693          	slli	a3,a4,0x3
    80002960:	00003717          	auipc	a4,0x3
    80002964:	32070713          	addi	a4,a4,800 # 80005c80 <timer_scratch>
    80002968:	00b7b023          	sd	a1,0(a5)
    8000296c:	00d70733          	add	a4,a4,a3
    80002970:	00f73c23          	sd	a5,24(a4)
    80002974:	02c73023          	sd	a2,32(a4)
    80002978:	34071073          	csrw	mscratch,a4
    8000297c:	00000797          	auipc	a5,0x0
    80002980:	64478793          	addi	a5,a5,1604 # 80002fc0 <timervec>
    80002984:	30579073          	csrw	mtvec,a5
    80002988:	300027f3          	csrr	a5,mstatus
    8000298c:	0087e793          	ori	a5,a5,8
    80002990:	30079073          	csrw	mstatus,a5
    80002994:	304027f3          	csrr	a5,mie
    80002998:	0807e793          	ori	a5,a5,128
    8000299c:	30479073          	csrw	mie,a5
    800029a0:	00813403          	ld	s0,8(sp)
    800029a4:	01010113          	addi	sp,sp,16
    800029a8:	00008067          	ret

00000000800029ac <system_main>:
    800029ac:	fe010113          	addi	sp,sp,-32
    800029b0:	00813823          	sd	s0,16(sp)
    800029b4:	00913423          	sd	s1,8(sp)
    800029b8:	00113c23          	sd	ra,24(sp)
    800029bc:	02010413          	addi	s0,sp,32
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	0c4080e7          	jalr	196(ra) # 80002a84 <cpuid>
    800029c8:	00003497          	auipc	s1,0x3
    800029cc:	22848493          	addi	s1,s1,552 # 80005bf0 <started>
    800029d0:	02050263          	beqz	a0,800029f4 <system_main+0x48>
    800029d4:	0004a783          	lw	a5,0(s1)
    800029d8:	0007879b          	sext.w	a5,a5
    800029dc:	fe078ce3          	beqz	a5,800029d4 <system_main+0x28>
    800029e0:	0ff0000f          	fence
    800029e4:	00002517          	auipc	a0,0x2
    800029e8:	7bc50513          	addi	a0,a0,1980 # 800051a0 <_ZZ12printIntegermE6digits+0x40>
    800029ec:	00001097          	auipc	ra,0x1
    800029f0:	a70080e7          	jalr	-1424(ra) # 8000345c <panic>
    800029f4:	00001097          	auipc	ra,0x1
    800029f8:	9c4080e7          	jalr	-1596(ra) # 800033b8 <consoleinit>
    800029fc:	00001097          	auipc	ra,0x1
    80002a00:	150080e7          	jalr	336(ra) # 80003b4c <printfinit>
    80002a04:	00002517          	auipc	a0,0x2
    80002a08:	75450513          	addi	a0,a0,1876 # 80005158 <kvmincrease+0x538>
    80002a0c:	00001097          	auipc	ra,0x1
    80002a10:	aac080e7          	jalr	-1364(ra) # 800034b8 <__printf>
    80002a14:	00002517          	auipc	a0,0x2
    80002a18:	75c50513          	addi	a0,a0,1884 # 80005170 <_ZZ12printIntegermE6digits+0x10>
    80002a1c:	00001097          	auipc	ra,0x1
    80002a20:	a9c080e7          	jalr	-1380(ra) # 800034b8 <__printf>
    80002a24:	00002517          	auipc	a0,0x2
    80002a28:	73450513          	addi	a0,a0,1844 # 80005158 <kvmincrease+0x538>
    80002a2c:	00001097          	auipc	ra,0x1
    80002a30:	a8c080e7          	jalr	-1396(ra) # 800034b8 <__printf>
    80002a34:	00001097          	auipc	ra,0x1
    80002a38:	4a4080e7          	jalr	1188(ra) # 80003ed8 <kinit>
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	148080e7          	jalr	328(ra) # 80002b84 <trapinit>
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	16c080e7          	jalr	364(ra) # 80002bb0 <trapinithart>
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	5b4080e7          	jalr	1460(ra) # 80003000 <plicinit>
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	5d4080e7          	jalr	1492(ra) # 80003028 <plicinithart>
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	078080e7          	jalr	120(ra) # 80002ad4 <userinit>
    80002a64:	0ff0000f          	fence
    80002a68:	00100793          	li	a5,1
    80002a6c:	00002517          	auipc	a0,0x2
    80002a70:	71c50513          	addi	a0,a0,1820 # 80005188 <_ZZ12printIntegermE6digits+0x28>
    80002a74:	00f4a023          	sw	a5,0(s1)
    80002a78:	00001097          	auipc	ra,0x1
    80002a7c:	a40080e7          	jalr	-1472(ra) # 800034b8 <__printf>
    80002a80:	0000006f          	j	80002a80 <system_main+0xd4>

0000000080002a84 <cpuid>:
    80002a84:	ff010113          	addi	sp,sp,-16
    80002a88:	00813423          	sd	s0,8(sp)
    80002a8c:	01010413          	addi	s0,sp,16
    80002a90:	00020513          	mv	a0,tp
    80002a94:	00813403          	ld	s0,8(sp)
    80002a98:	0005051b          	sext.w	a0,a0
    80002a9c:	01010113          	addi	sp,sp,16
    80002aa0:	00008067          	ret

0000000080002aa4 <mycpu>:
    80002aa4:	ff010113          	addi	sp,sp,-16
    80002aa8:	00813423          	sd	s0,8(sp)
    80002aac:	01010413          	addi	s0,sp,16
    80002ab0:	00020793          	mv	a5,tp
    80002ab4:	00813403          	ld	s0,8(sp)
    80002ab8:	0007879b          	sext.w	a5,a5
    80002abc:	00779793          	slli	a5,a5,0x7
    80002ac0:	00004517          	auipc	a0,0x4
    80002ac4:	1f050513          	addi	a0,a0,496 # 80006cb0 <cpus>
    80002ac8:	00f50533          	add	a0,a0,a5
    80002acc:	01010113          	addi	sp,sp,16
    80002ad0:	00008067          	ret

0000000080002ad4 <userinit>:
    80002ad4:	ff010113          	addi	sp,sp,-16
    80002ad8:	00813423          	sd	s0,8(sp)
    80002adc:	01010413          	addi	s0,sp,16
    80002ae0:	00813403          	ld	s0,8(sp)
    80002ae4:	01010113          	addi	sp,sp,16
    80002ae8:	fffff317          	auipc	t1,0xfffff
    80002aec:	19030067          	jr	400(t1) # 80001c78 <main>

0000000080002af0 <either_copyout>:
    80002af0:	ff010113          	addi	sp,sp,-16
    80002af4:	00813023          	sd	s0,0(sp)
    80002af8:	00113423          	sd	ra,8(sp)
    80002afc:	01010413          	addi	s0,sp,16
    80002b00:	02051663          	bnez	a0,80002b2c <either_copyout+0x3c>
    80002b04:	00058513          	mv	a0,a1
    80002b08:	00060593          	mv	a1,a2
    80002b0c:	0006861b          	sext.w	a2,a3
    80002b10:	00002097          	auipc	ra,0x2
    80002b14:	c54080e7          	jalr	-940(ra) # 80004764 <__memmove>
    80002b18:	00813083          	ld	ra,8(sp)
    80002b1c:	00013403          	ld	s0,0(sp)
    80002b20:	00000513          	li	a0,0
    80002b24:	01010113          	addi	sp,sp,16
    80002b28:	00008067          	ret
    80002b2c:	00002517          	auipc	a0,0x2
    80002b30:	69c50513          	addi	a0,a0,1692 # 800051c8 <_ZZ12printIntegermE6digits+0x68>
    80002b34:	00001097          	auipc	ra,0x1
    80002b38:	928080e7          	jalr	-1752(ra) # 8000345c <panic>

0000000080002b3c <either_copyin>:
    80002b3c:	ff010113          	addi	sp,sp,-16
    80002b40:	00813023          	sd	s0,0(sp)
    80002b44:	00113423          	sd	ra,8(sp)
    80002b48:	01010413          	addi	s0,sp,16
    80002b4c:	02059463          	bnez	a1,80002b74 <either_copyin+0x38>
    80002b50:	00060593          	mv	a1,a2
    80002b54:	0006861b          	sext.w	a2,a3
    80002b58:	00002097          	auipc	ra,0x2
    80002b5c:	c0c080e7          	jalr	-1012(ra) # 80004764 <__memmove>
    80002b60:	00813083          	ld	ra,8(sp)
    80002b64:	00013403          	ld	s0,0(sp)
    80002b68:	00000513          	li	a0,0
    80002b6c:	01010113          	addi	sp,sp,16
    80002b70:	00008067          	ret
    80002b74:	00002517          	auipc	a0,0x2
    80002b78:	67c50513          	addi	a0,a0,1660 # 800051f0 <_ZZ12printIntegermE6digits+0x90>
    80002b7c:	00001097          	auipc	ra,0x1
    80002b80:	8e0080e7          	jalr	-1824(ra) # 8000345c <panic>

0000000080002b84 <trapinit>:
    80002b84:	ff010113          	addi	sp,sp,-16
    80002b88:	00813423          	sd	s0,8(sp)
    80002b8c:	01010413          	addi	s0,sp,16
    80002b90:	00813403          	ld	s0,8(sp)
    80002b94:	00002597          	auipc	a1,0x2
    80002b98:	68458593          	addi	a1,a1,1668 # 80005218 <_ZZ12printIntegermE6digits+0xb8>
    80002b9c:	00004517          	auipc	a0,0x4
    80002ba0:	19450513          	addi	a0,a0,404 # 80006d30 <tickslock>
    80002ba4:	01010113          	addi	sp,sp,16
    80002ba8:	00001317          	auipc	t1,0x1
    80002bac:	5c030067          	jr	1472(t1) # 80004168 <initlock>

0000000080002bb0 <trapinithart>:
    80002bb0:	ff010113          	addi	sp,sp,-16
    80002bb4:	00813423          	sd	s0,8(sp)
    80002bb8:	01010413          	addi	s0,sp,16
    80002bbc:	00000797          	auipc	a5,0x0
    80002bc0:	2f478793          	addi	a5,a5,756 # 80002eb0 <kernelvec>
    80002bc4:	10579073          	csrw	stvec,a5
    80002bc8:	00813403          	ld	s0,8(sp)
    80002bcc:	01010113          	addi	sp,sp,16
    80002bd0:	00008067          	ret

0000000080002bd4 <usertrap>:
    80002bd4:	ff010113          	addi	sp,sp,-16
    80002bd8:	00813423          	sd	s0,8(sp)
    80002bdc:	01010413          	addi	s0,sp,16
    80002be0:	00813403          	ld	s0,8(sp)
    80002be4:	01010113          	addi	sp,sp,16
    80002be8:	00008067          	ret

0000000080002bec <usertrapret>:
    80002bec:	ff010113          	addi	sp,sp,-16
    80002bf0:	00813423          	sd	s0,8(sp)
    80002bf4:	01010413          	addi	s0,sp,16
    80002bf8:	00813403          	ld	s0,8(sp)
    80002bfc:	01010113          	addi	sp,sp,16
    80002c00:	00008067          	ret

0000000080002c04 <kerneltrap>:
    80002c04:	fe010113          	addi	sp,sp,-32
    80002c08:	00813823          	sd	s0,16(sp)
    80002c0c:	00113c23          	sd	ra,24(sp)
    80002c10:	00913423          	sd	s1,8(sp)
    80002c14:	02010413          	addi	s0,sp,32
    80002c18:	142025f3          	csrr	a1,scause
    80002c1c:	100027f3          	csrr	a5,sstatus
    80002c20:	0027f793          	andi	a5,a5,2
    80002c24:	10079c63          	bnez	a5,80002d3c <kerneltrap+0x138>
    80002c28:	142027f3          	csrr	a5,scause
    80002c2c:	0207ce63          	bltz	a5,80002c68 <kerneltrap+0x64>
    80002c30:	00002517          	auipc	a0,0x2
    80002c34:	63050513          	addi	a0,a0,1584 # 80005260 <_ZZ12printIntegermE6digits+0x100>
    80002c38:	00001097          	auipc	ra,0x1
    80002c3c:	880080e7          	jalr	-1920(ra) # 800034b8 <__printf>
    80002c40:	141025f3          	csrr	a1,sepc
    80002c44:	14302673          	csrr	a2,stval
    80002c48:	00002517          	auipc	a0,0x2
    80002c4c:	62850513          	addi	a0,a0,1576 # 80005270 <_ZZ12printIntegermE6digits+0x110>
    80002c50:	00001097          	auipc	ra,0x1
    80002c54:	868080e7          	jalr	-1944(ra) # 800034b8 <__printf>
    80002c58:	00002517          	auipc	a0,0x2
    80002c5c:	63050513          	addi	a0,a0,1584 # 80005288 <_ZZ12printIntegermE6digits+0x128>
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	7fc080e7          	jalr	2044(ra) # 8000345c <panic>
    80002c68:	0ff7f713          	andi	a4,a5,255
    80002c6c:	00900693          	li	a3,9
    80002c70:	04d70063          	beq	a4,a3,80002cb0 <kerneltrap+0xac>
    80002c74:	fff00713          	li	a4,-1
    80002c78:	03f71713          	slli	a4,a4,0x3f
    80002c7c:	00170713          	addi	a4,a4,1
    80002c80:	fae798e3          	bne	a5,a4,80002c30 <kerneltrap+0x2c>
    80002c84:	00000097          	auipc	ra,0x0
    80002c88:	e00080e7          	jalr	-512(ra) # 80002a84 <cpuid>
    80002c8c:	06050663          	beqz	a0,80002cf8 <kerneltrap+0xf4>
    80002c90:	144027f3          	csrr	a5,sip
    80002c94:	ffd7f793          	andi	a5,a5,-3
    80002c98:	14479073          	csrw	sip,a5
    80002c9c:	01813083          	ld	ra,24(sp)
    80002ca0:	01013403          	ld	s0,16(sp)
    80002ca4:	00813483          	ld	s1,8(sp)
    80002ca8:	02010113          	addi	sp,sp,32
    80002cac:	00008067          	ret
    80002cb0:	00000097          	auipc	ra,0x0
    80002cb4:	3c4080e7          	jalr	964(ra) # 80003074 <plic_claim>
    80002cb8:	00a00793          	li	a5,10
    80002cbc:	00050493          	mv	s1,a0
    80002cc0:	06f50863          	beq	a0,a5,80002d30 <kerneltrap+0x12c>
    80002cc4:	fc050ce3          	beqz	a0,80002c9c <kerneltrap+0x98>
    80002cc8:	00050593          	mv	a1,a0
    80002ccc:	00002517          	auipc	a0,0x2
    80002cd0:	57450513          	addi	a0,a0,1396 # 80005240 <_ZZ12printIntegermE6digits+0xe0>
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	7e4080e7          	jalr	2020(ra) # 800034b8 <__printf>
    80002cdc:	01013403          	ld	s0,16(sp)
    80002ce0:	01813083          	ld	ra,24(sp)
    80002ce4:	00048513          	mv	a0,s1
    80002ce8:	00813483          	ld	s1,8(sp)
    80002cec:	02010113          	addi	sp,sp,32
    80002cf0:	00000317          	auipc	t1,0x0
    80002cf4:	3bc30067          	jr	956(t1) # 800030ac <plic_complete>
    80002cf8:	00004517          	auipc	a0,0x4
    80002cfc:	03850513          	addi	a0,a0,56 # 80006d30 <tickslock>
    80002d00:	00001097          	auipc	ra,0x1
    80002d04:	48c080e7          	jalr	1164(ra) # 8000418c <acquire>
    80002d08:	00003717          	auipc	a4,0x3
    80002d0c:	eec70713          	addi	a4,a4,-276 # 80005bf4 <ticks>
    80002d10:	00072783          	lw	a5,0(a4)
    80002d14:	00004517          	auipc	a0,0x4
    80002d18:	01c50513          	addi	a0,a0,28 # 80006d30 <tickslock>
    80002d1c:	0017879b          	addiw	a5,a5,1
    80002d20:	00f72023          	sw	a5,0(a4)
    80002d24:	00001097          	auipc	ra,0x1
    80002d28:	534080e7          	jalr	1332(ra) # 80004258 <release>
    80002d2c:	f65ff06f          	j	80002c90 <kerneltrap+0x8c>
    80002d30:	00001097          	auipc	ra,0x1
    80002d34:	090080e7          	jalr	144(ra) # 80003dc0 <uartintr>
    80002d38:	fa5ff06f          	j	80002cdc <kerneltrap+0xd8>
    80002d3c:	00002517          	auipc	a0,0x2
    80002d40:	4e450513          	addi	a0,a0,1252 # 80005220 <_ZZ12printIntegermE6digits+0xc0>
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	718080e7          	jalr	1816(ra) # 8000345c <panic>

0000000080002d4c <clockintr>:
    80002d4c:	fe010113          	addi	sp,sp,-32
    80002d50:	00813823          	sd	s0,16(sp)
    80002d54:	00913423          	sd	s1,8(sp)
    80002d58:	00113c23          	sd	ra,24(sp)
    80002d5c:	02010413          	addi	s0,sp,32
    80002d60:	00004497          	auipc	s1,0x4
    80002d64:	fd048493          	addi	s1,s1,-48 # 80006d30 <tickslock>
    80002d68:	00048513          	mv	a0,s1
    80002d6c:	00001097          	auipc	ra,0x1
    80002d70:	420080e7          	jalr	1056(ra) # 8000418c <acquire>
    80002d74:	00003717          	auipc	a4,0x3
    80002d78:	e8070713          	addi	a4,a4,-384 # 80005bf4 <ticks>
    80002d7c:	00072783          	lw	a5,0(a4)
    80002d80:	01013403          	ld	s0,16(sp)
    80002d84:	01813083          	ld	ra,24(sp)
    80002d88:	00048513          	mv	a0,s1
    80002d8c:	0017879b          	addiw	a5,a5,1
    80002d90:	00813483          	ld	s1,8(sp)
    80002d94:	00f72023          	sw	a5,0(a4)
    80002d98:	02010113          	addi	sp,sp,32
    80002d9c:	00001317          	auipc	t1,0x1
    80002da0:	4bc30067          	jr	1212(t1) # 80004258 <release>

0000000080002da4 <devintr>:
    80002da4:	142027f3          	csrr	a5,scause
    80002da8:	00000513          	li	a0,0
    80002dac:	0007c463          	bltz	a5,80002db4 <devintr+0x10>
    80002db0:	00008067          	ret
    80002db4:	fe010113          	addi	sp,sp,-32
    80002db8:	00813823          	sd	s0,16(sp)
    80002dbc:	00113c23          	sd	ra,24(sp)
    80002dc0:	00913423          	sd	s1,8(sp)
    80002dc4:	02010413          	addi	s0,sp,32
    80002dc8:	0ff7f713          	andi	a4,a5,255
    80002dcc:	00900693          	li	a3,9
    80002dd0:	04d70c63          	beq	a4,a3,80002e28 <devintr+0x84>
    80002dd4:	fff00713          	li	a4,-1
    80002dd8:	03f71713          	slli	a4,a4,0x3f
    80002ddc:	00170713          	addi	a4,a4,1
    80002de0:	00e78c63          	beq	a5,a4,80002df8 <devintr+0x54>
    80002de4:	01813083          	ld	ra,24(sp)
    80002de8:	01013403          	ld	s0,16(sp)
    80002dec:	00813483          	ld	s1,8(sp)
    80002df0:	02010113          	addi	sp,sp,32
    80002df4:	00008067          	ret
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	c8c080e7          	jalr	-884(ra) # 80002a84 <cpuid>
    80002e00:	06050663          	beqz	a0,80002e6c <devintr+0xc8>
    80002e04:	144027f3          	csrr	a5,sip
    80002e08:	ffd7f793          	andi	a5,a5,-3
    80002e0c:	14479073          	csrw	sip,a5
    80002e10:	01813083          	ld	ra,24(sp)
    80002e14:	01013403          	ld	s0,16(sp)
    80002e18:	00813483          	ld	s1,8(sp)
    80002e1c:	00200513          	li	a0,2
    80002e20:	02010113          	addi	sp,sp,32
    80002e24:	00008067          	ret
    80002e28:	00000097          	auipc	ra,0x0
    80002e2c:	24c080e7          	jalr	588(ra) # 80003074 <plic_claim>
    80002e30:	00a00793          	li	a5,10
    80002e34:	00050493          	mv	s1,a0
    80002e38:	06f50663          	beq	a0,a5,80002ea4 <devintr+0x100>
    80002e3c:	00100513          	li	a0,1
    80002e40:	fa0482e3          	beqz	s1,80002de4 <devintr+0x40>
    80002e44:	00048593          	mv	a1,s1
    80002e48:	00002517          	auipc	a0,0x2
    80002e4c:	3f850513          	addi	a0,a0,1016 # 80005240 <_ZZ12printIntegermE6digits+0xe0>
    80002e50:	00000097          	auipc	ra,0x0
    80002e54:	668080e7          	jalr	1640(ra) # 800034b8 <__printf>
    80002e58:	00048513          	mv	a0,s1
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	250080e7          	jalr	592(ra) # 800030ac <plic_complete>
    80002e64:	00100513          	li	a0,1
    80002e68:	f7dff06f          	j	80002de4 <devintr+0x40>
    80002e6c:	00004517          	auipc	a0,0x4
    80002e70:	ec450513          	addi	a0,a0,-316 # 80006d30 <tickslock>
    80002e74:	00001097          	auipc	ra,0x1
    80002e78:	318080e7          	jalr	792(ra) # 8000418c <acquire>
    80002e7c:	00003717          	auipc	a4,0x3
    80002e80:	d7870713          	addi	a4,a4,-648 # 80005bf4 <ticks>
    80002e84:	00072783          	lw	a5,0(a4)
    80002e88:	00004517          	auipc	a0,0x4
    80002e8c:	ea850513          	addi	a0,a0,-344 # 80006d30 <tickslock>
    80002e90:	0017879b          	addiw	a5,a5,1
    80002e94:	00f72023          	sw	a5,0(a4)
    80002e98:	00001097          	auipc	ra,0x1
    80002e9c:	3c0080e7          	jalr	960(ra) # 80004258 <release>
    80002ea0:	f65ff06f          	j	80002e04 <devintr+0x60>
    80002ea4:	00001097          	auipc	ra,0x1
    80002ea8:	f1c080e7          	jalr	-228(ra) # 80003dc0 <uartintr>
    80002eac:	fadff06f          	j	80002e58 <devintr+0xb4>

0000000080002eb0 <kernelvec>:
    80002eb0:	f0010113          	addi	sp,sp,-256
    80002eb4:	00113023          	sd	ra,0(sp)
    80002eb8:	00213423          	sd	sp,8(sp)
    80002ebc:	00313823          	sd	gp,16(sp)
    80002ec0:	00413c23          	sd	tp,24(sp)
    80002ec4:	02513023          	sd	t0,32(sp)
    80002ec8:	02613423          	sd	t1,40(sp)
    80002ecc:	02713823          	sd	t2,48(sp)
    80002ed0:	02813c23          	sd	s0,56(sp)
    80002ed4:	04913023          	sd	s1,64(sp)
    80002ed8:	04a13423          	sd	a0,72(sp)
    80002edc:	04b13823          	sd	a1,80(sp)
    80002ee0:	04c13c23          	sd	a2,88(sp)
    80002ee4:	06d13023          	sd	a3,96(sp)
    80002ee8:	06e13423          	sd	a4,104(sp)
    80002eec:	06f13823          	sd	a5,112(sp)
    80002ef0:	07013c23          	sd	a6,120(sp)
    80002ef4:	09113023          	sd	a7,128(sp)
    80002ef8:	09213423          	sd	s2,136(sp)
    80002efc:	09313823          	sd	s3,144(sp)
    80002f00:	09413c23          	sd	s4,152(sp)
    80002f04:	0b513023          	sd	s5,160(sp)
    80002f08:	0b613423          	sd	s6,168(sp)
    80002f0c:	0b713823          	sd	s7,176(sp)
    80002f10:	0b813c23          	sd	s8,184(sp)
    80002f14:	0d913023          	sd	s9,192(sp)
    80002f18:	0da13423          	sd	s10,200(sp)
    80002f1c:	0db13823          	sd	s11,208(sp)
    80002f20:	0dc13c23          	sd	t3,216(sp)
    80002f24:	0fd13023          	sd	t4,224(sp)
    80002f28:	0fe13423          	sd	t5,232(sp)
    80002f2c:	0ff13823          	sd	t6,240(sp)
    80002f30:	cd5ff0ef          	jal	ra,80002c04 <kerneltrap>
    80002f34:	00013083          	ld	ra,0(sp)
    80002f38:	00813103          	ld	sp,8(sp)
    80002f3c:	01013183          	ld	gp,16(sp)
    80002f40:	02013283          	ld	t0,32(sp)
    80002f44:	02813303          	ld	t1,40(sp)
    80002f48:	03013383          	ld	t2,48(sp)
    80002f4c:	03813403          	ld	s0,56(sp)
    80002f50:	04013483          	ld	s1,64(sp)
    80002f54:	04813503          	ld	a0,72(sp)
    80002f58:	05013583          	ld	a1,80(sp)
    80002f5c:	05813603          	ld	a2,88(sp)
    80002f60:	06013683          	ld	a3,96(sp)
    80002f64:	06813703          	ld	a4,104(sp)
    80002f68:	07013783          	ld	a5,112(sp)
    80002f6c:	07813803          	ld	a6,120(sp)
    80002f70:	08013883          	ld	a7,128(sp)
    80002f74:	08813903          	ld	s2,136(sp)
    80002f78:	09013983          	ld	s3,144(sp)
    80002f7c:	09813a03          	ld	s4,152(sp)
    80002f80:	0a013a83          	ld	s5,160(sp)
    80002f84:	0a813b03          	ld	s6,168(sp)
    80002f88:	0b013b83          	ld	s7,176(sp)
    80002f8c:	0b813c03          	ld	s8,184(sp)
    80002f90:	0c013c83          	ld	s9,192(sp)
    80002f94:	0c813d03          	ld	s10,200(sp)
    80002f98:	0d013d83          	ld	s11,208(sp)
    80002f9c:	0d813e03          	ld	t3,216(sp)
    80002fa0:	0e013e83          	ld	t4,224(sp)
    80002fa4:	0e813f03          	ld	t5,232(sp)
    80002fa8:	0f013f83          	ld	t6,240(sp)
    80002fac:	10010113          	addi	sp,sp,256
    80002fb0:	10200073          	sret
    80002fb4:	00000013          	nop
    80002fb8:	00000013          	nop
    80002fbc:	00000013          	nop

0000000080002fc0 <timervec>:
    80002fc0:	34051573          	csrrw	a0,mscratch,a0
    80002fc4:	00b53023          	sd	a1,0(a0)
    80002fc8:	00c53423          	sd	a2,8(a0)
    80002fcc:	00d53823          	sd	a3,16(a0)
    80002fd0:	01853583          	ld	a1,24(a0)
    80002fd4:	02053603          	ld	a2,32(a0)
    80002fd8:	0005b683          	ld	a3,0(a1)
    80002fdc:	00c686b3          	add	a3,a3,a2
    80002fe0:	00d5b023          	sd	a3,0(a1)
    80002fe4:	00200593          	li	a1,2
    80002fe8:	14459073          	csrw	sip,a1
    80002fec:	01053683          	ld	a3,16(a0)
    80002ff0:	00853603          	ld	a2,8(a0)
    80002ff4:	00053583          	ld	a1,0(a0)
    80002ff8:	34051573          	csrrw	a0,mscratch,a0
    80002ffc:	30200073          	mret

0000000080003000 <plicinit>:
    80003000:	ff010113          	addi	sp,sp,-16
    80003004:	00813423          	sd	s0,8(sp)
    80003008:	01010413          	addi	s0,sp,16
    8000300c:	00813403          	ld	s0,8(sp)
    80003010:	0c0007b7          	lui	a5,0xc000
    80003014:	00100713          	li	a4,1
    80003018:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000301c:	00e7a223          	sw	a4,4(a5)
    80003020:	01010113          	addi	sp,sp,16
    80003024:	00008067          	ret

0000000080003028 <plicinithart>:
    80003028:	ff010113          	addi	sp,sp,-16
    8000302c:	00813023          	sd	s0,0(sp)
    80003030:	00113423          	sd	ra,8(sp)
    80003034:	01010413          	addi	s0,sp,16
    80003038:	00000097          	auipc	ra,0x0
    8000303c:	a4c080e7          	jalr	-1460(ra) # 80002a84 <cpuid>
    80003040:	0085171b          	slliw	a4,a0,0x8
    80003044:	0c0027b7          	lui	a5,0xc002
    80003048:	00e787b3          	add	a5,a5,a4
    8000304c:	40200713          	li	a4,1026
    80003050:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003054:	00813083          	ld	ra,8(sp)
    80003058:	00013403          	ld	s0,0(sp)
    8000305c:	00d5151b          	slliw	a0,a0,0xd
    80003060:	0c2017b7          	lui	a5,0xc201
    80003064:	00a78533          	add	a0,a5,a0
    80003068:	00052023          	sw	zero,0(a0)
    8000306c:	01010113          	addi	sp,sp,16
    80003070:	00008067          	ret

0000000080003074 <plic_claim>:
    80003074:	ff010113          	addi	sp,sp,-16
    80003078:	00813023          	sd	s0,0(sp)
    8000307c:	00113423          	sd	ra,8(sp)
    80003080:	01010413          	addi	s0,sp,16
    80003084:	00000097          	auipc	ra,0x0
    80003088:	a00080e7          	jalr	-1536(ra) # 80002a84 <cpuid>
    8000308c:	00813083          	ld	ra,8(sp)
    80003090:	00013403          	ld	s0,0(sp)
    80003094:	00d5151b          	slliw	a0,a0,0xd
    80003098:	0c2017b7          	lui	a5,0xc201
    8000309c:	00a78533          	add	a0,a5,a0
    800030a0:	00452503          	lw	a0,4(a0)
    800030a4:	01010113          	addi	sp,sp,16
    800030a8:	00008067          	ret

00000000800030ac <plic_complete>:
    800030ac:	fe010113          	addi	sp,sp,-32
    800030b0:	00813823          	sd	s0,16(sp)
    800030b4:	00913423          	sd	s1,8(sp)
    800030b8:	00113c23          	sd	ra,24(sp)
    800030bc:	02010413          	addi	s0,sp,32
    800030c0:	00050493          	mv	s1,a0
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	9c0080e7          	jalr	-1600(ra) # 80002a84 <cpuid>
    800030cc:	01813083          	ld	ra,24(sp)
    800030d0:	01013403          	ld	s0,16(sp)
    800030d4:	00d5179b          	slliw	a5,a0,0xd
    800030d8:	0c201737          	lui	a4,0xc201
    800030dc:	00f707b3          	add	a5,a4,a5
    800030e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800030e4:	00813483          	ld	s1,8(sp)
    800030e8:	02010113          	addi	sp,sp,32
    800030ec:	00008067          	ret

00000000800030f0 <consolewrite>:
    800030f0:	fb010113          	addi	sp,sp,-80
    800030f4:	04813023          	sd	s0,64(sp)
    800030f8:	04113423          	sd	ra,72(sp)
    800030fc:	02913c23          	sd	s1,56(sp)
    80003100:	03213823          	sd	s2,48(sp)
    80003104:	03313423          	sd	s3,40(sp)
    80003108:	03413023          	sd	s4,32(sp)
    8000310c:	01513c23          	sd	s5,24(sp)
    80003110:	05010413          	addi	s0,sp,80
    80003114:	06c05c63          	blez	a2,8000318c <consolewrite+0x9c>
    80003118:	00060993          	mv	s3,a2
    8000311c:	00050a13          	mv	s4,a0
    80003120:	00058493          	mv	s1,a1
    80003124:	00000913          	li	s2,0
    80003128:	fff00a93          	li	s5,-1
    8000312c:	01c0006f          	j	80003148 <consolewrite+0x58>
    80003130:	fbf44503          	lbu	a0,-65(s0)
    80003134:	0019091b          	addiw	s2,s2,1
    80003138:	00148493          	addi	s1,s1,1
    8000313c:	00001097          	auipc	ra,0x1
    80003140:	a9c080e7          	jalr	-1380(ra) # 80003bd8 <uartputc>
    80003144:	03298063          	beq	s3,s2,80003164 <consolewrite+0x74>
    80003148:	00048613          	mv	a2,s1
    8000314c:	00100693          	li	a3,1
    80003150:	000a0593          	mv	a1,s4
    80003154:	fbf40513          	addi	a0,s0,-65
    80003158:	00000097          	auipc	ra,0x0
    8000315c:	9e4080e7          	jalr	-1564(ra) # 80002b3c <either_copyin>
    80003160:	fd5518e3          	bne	a0,s5,80003130 <consolewrite+0x40>
    80003164:	04813083          	ld	ra,72(sp)
    80003168:	04013403          	ld	s0,64(sp)
    8000316c:	03813483          	ld	s1,56(sp)
    80003170:	02813983          	ld	s3,40(sp)
    80003174:	02013a03          	ld	s4,32(sp)
    80003178:	01813a83          	ld	s5,24(sp)
    8000317c:	00090513          	mv	a0,s2
    80003180:	03013903          	ld	s2,48(sp)
    80003184:	05010113          	addi	sp,sp,80
    80003188:	00008067          	ret
    8000318c:	00000913          	li	s2,0
    80003190:	fd5ff06f          	j	80003164 <consolewrite+0x74>

0000000080003194 <consoleread>:
    80003194:	f9010113          	addi	sp,sp,-112
    80003198:	06813023          	sd	s0,96(sp)
    8000319c:	04913c23          	sd	s1,88(sp)
    800031a0:	05213823          	sd	s2,80(sp)
    800031a4:	05313423          	sd	s3,72(sp)
    800031a8:	05413023          	sd	s4,64(sp)
    800031ac:	03513c23          	sd	s5,56(sp)
    800031b0:	03613823          	sd	s6,48(sp)
    800031b4:	03713423          	sd	s7,40(sp)
    800031b8:	03813023          	sd	s8,32(sp)
    800031bc:	06113423          	sd	ra,104(sp)
    800031c0:	01913c23          	sd	s9,24(sp)
    800031c4:	07010413          	addi	s0,sp,112
    800031c8:	00060b93          	mv	s7,a2
    800031cc:	00050913          	mv	s2,a0
    800031d0:	00058c13          	mv	s8,a1
    800031d4:	00060b1b          	sext.w	s6,a2
    800031d8:	00004497          	auipc	s1,0x4
    800031dc:	b8048493          	addi	s1,s1,-1152 # 80006d58 <cons>
    800031e0:	00400993          	li	s3,4
    800031e4:	fff00a13          	li	s4,-1
    800031e8:	00a00a93          	li	s5,10
    800031ec:	05705e63          	blez	s7,80003248 <consoleread+0xb4>
    800031f0:	09c4a703          	lw	a4,156(s1)
    800031f4:	0984a783          	lw	a5,152(s1)
    800031f8:	0007071b          	sext.w	a4,a4
    800031fc:	08e78463          	beq	a5,a4,80003284 <consoleread+0xf0>
    80003200:	07f7f713          	andi	a4,a5,127
    80003204:	00e48733          	add	a4,s1,a4
    80003208:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000320c:	0017869b          	addiw	a3,a5,1
    80003210:	08d4ac23          	sw	a3,152(s1)
    80003214:	00070c9b          	sext.w	s9,a4
    80003218:	0b370663          	beq	a4,s3,800032c4 <consoleread+0x130>
    8000321c:	00100693          	li	a3,1
    80003220:	f9f40613          	addi	a2,s0,-97
    80003224:	000c0593          	mv	a1,s8
    80003228:	00090513          	mv	a0,s2
    8000322c:	f8e40fa3          	sb	a4,-97(s0)
    80003230:	00000097          	auipc	ra,0x0
    80003234:	8c0080e7          	jalr	-1856(ra) # 80002af0 <either_copyout>
    80003238:	01450863          	beq	a0,s4,80003248 <consoleread+0xb4>
    8000323c:	001c0c13          	addi	s8,s8,1
    80003240:	fffb8b9b          	addiw	s7,s7,-1
    80003244:	fb5c94e3          	bne	s9,s5,800031ec <consoleread+0x58>
    80003248:	000b851b          	sext.w	a0,s7
    8000324c:	06813083          	ld	ra,104(sp)
    80003250:	06013403          	ld	s0,96(sp)
    80003254:	05813483          	ld	s1,88(sp)
    80003258:	05013903          	ld	s2,80(sp)
    8000325c:	04813983          	ld	s3,72(sp)
    80003260:	04013a03          	ld	s4,64(sp)
    80003264:	03813a83          	ld	s5,56(sp)
    80003268:	02813b83          	ld	s7,40(sp)
    8000326c:	02013c03          	ld	s8,32(sp)
    80003270:	01813c83          	ld	s9,24(sp)
    80003274:	40ab053b          	subw	a0,s6,a0
    80003278:	03013b03          	ld	s6,48(sp)
    8000327c:	07010113          	addi	sp,sp,112
    80003280:	00008067          	ret
    80003284:	00001097          	auipc	ra,0x1
    80003288:	1d8080e7          	jalr	472(ra) # 8000445c <push_on>
    8000328c:	0984a703          	lw	a4,152(s1)
    80003290:	09c4a783          	lw	a5,156(s1)
    80003294:	0007879b          	sext.w	a5,a5
    80003298:	fef70ce3          	beq	a4,a5,80003290 <consoleread+0xfc>
    8000329c:	00001097          	auipc	ra,0x1
    800032a0:	234080e7          	jalr	564(ra) # 800044d0 <pop_on>
    800032a4:	0984a783          	lw	a5,152(s1)
    800032a8:	07f7f713          	andi	a4,a5,127
    800032ac:	00e48733          	add	a4,s1,a4
    800032b0:	01874703          	lbu	a4,24(a4)
    800032b4:	0017869b          	addiw	a3,a5,1
    800032b8:	08d4ac23          	sw	a3,152(s1)
    800032bc:	00070c9b          	sext.w	s9,a4
    800032c0:	f5371ee3          	bne	a4,s3,8000321c <consoleread+0x88>
    800032c4:	000b851b          	sext.w	a0,s7
    800032c8:	f96bf2e3          	bgeu	s7,s6,8000324c <consoleread+0xb8>
    800032cc:	08f4ac23          	sw	a5,152(s1)
    800032d0:	f7dff06f          	j	8000324c <consoleread+0xb8>

00000000800032d4 <consputc>:
    800032d4:	10000793          	li	a5,256
    800032d8:	00f50663          	beq	a0,a5,800032e4 <consputc+0x10>
    800032dc:	00001317          	auipc	t1,0x1
    800032e0:	9f430067          	jr	-1548(t1) # 80003cd0 <uartputc_sync>
    800032e4:	ff010113          	addi	sp,sp,-16
    800032e8:	00113423          	sd	ra,8(sp)
    800032ec:	00813023          	sd	s0,0(sp)
    800032f0:	01010413          	addi	s0,sp,16
    800032f4:	00800513          	li	a0,8
    800032f8:	00001097          	auipc	ra,0x1
    800032fc:	9d8080e7          	jalr	-1576(ra) # 80003cd0 <uartputc_sync>
    80003300:	02000513          	li	a0,32
    80003304:	00001097          	auipc	ra,0x1
    80003308:	9cc080e7          	jalr	-1588(ra) # 80003cd0 <uartputc_sync>
    8000330c:	00013403          	ld	s0,0(sp)
    80003310:	00813083          	ld	ra,8(sp)
    80003314:	00800513          	li	a0,8
    80003318:	01010113          	addi	sp,sp,16
    8000331c:	00001317          	auipc	t1,0x1
    80003320:	9b430067          	jr	-1612(t1) # 80003cd0 <uartputc_sync>

0000000080003324 <consoleintr>:
    80003324:	fe010113          	addi	sp,sp,-32
    80003328:	00813823          	sd	s0,16(sp)
    8000332c:	00913423          	sd	s1,8(sp)
    80003330:	01213023          	sd	s2,0(sp)
    80003334:	00113c23          	sd	ra,24(sp)
    80003338:	02010413          	addi	s0,sp,32
    8000333c:	00004917          	auipc	s2,0x4
    80003340:	a1c90913          	addi	s2,s2,-1508 # 80006d58 <cons>
    80003344:	00050493          	mv	s1,a0
    80003348:	00090513          	mv	a0,s2
    8000334c:	00001097          	auipc	ra,0x1
    80003350:	e40080e7          	jalr	-448(ra) # 8000418c <acquire>
    80003354:	02048c63          	beqz	s1,8000338c <consoleintr+0x68>
    80003358:	0a092783          	lw	a5,160(s2)
    8000335c:	09892703          	lw	a4,152(s2)
    80003360:	07f00693          	li	a3,127
    80003364:	40e7873b          	subw	a4,a5,a4
    80003368:	02e6e263          	bltu	a3,a4,8000338c <consoleintr+0x68>
    8000336c:	00d00713          	li	a4,13
    80003370:	04e48063          	beq	s1,a4,800033b0 <consoleintr+0x8c>
    80003374:	07f7f713          	andi	a4,a5,127
    80003378:	00e90733          	add	a4,s2,a4
    8000337c:	0017879b          	addiw	a5,a5,1
    80003380:	0af92023          	sw	a5,160(s2)
    80003384:	00970c23          	sb	s1,24(a4)
    80003388:	08f92e23          	sw	a5,156(s2)
    8000338c:	01013403          	ld	s0,16(sp)
    80003390:	01813083          	ld	ra,24(sp)
    80003394:	00813483          	ld	s1,8(sp)
    80003398:	00013903          	ld	s2,0(sp)
    8000339c:	00004517          	auipc	a0,0x4
    800033a0:	9bc50513          	addi	a0,a0,-1604 # 80006d58 <cons>
    800033a4:	02010113          	addi	sp,sp,32
    800033a8:	00001317          	auipc	t1,0x1
    800033ac:	eb030067          	jr	-336(t1) # 80004258 <release>
    800033b0:	00a00493          	li	s1,10
    800033b4:	fc1ff06f          	j	80003374 <consoleintr+0x50>

00000000800033b8 <consoleinit>:
    800033b8:	fe010113          	addi	sp,sp,-32
    800033bc:	00113c23          	sd	ra,24(sp)
    800033c0:	00813823          	sd	s0,16(sp)
    800033c4:	00913423          	sd	s1,8(sp)
    800033c8:	02010413          	addi	s0,sp,32
    800033cc:	00004497          	auipc	s1,0x4
    800033d0:	98c48493          	addi	s1,s1,-1652 # 80006d58 <cons>
    800033d4:	00048513          	mv	a0,s1
    800033d8:	00002597          	auipc	a1,0x2
    800033dc:	ec058593          	addi	a1,a1,-320 # 80005298 <_ZZ12printIntegermE6digits+0x138>
    800033e0:	00001097          	auipc	ra,0x1
    800033e4:	d88080e7          	jalr	-632(ra) # 80004168 <initlock>
    800033e8:	00000097          	auipc	ra,0x0
    800033ec:	7ac080e7          	jalr	1964(ra) # 80003b94 <uartinit>
    800033f0:	01813083          	ld	ra,24(sp)
    800033f4:	01013403          	ld	s0,16(sp)
    800033f8:	00000797          	auipc	a5,0x0
    800033fc:	d9c78793          	addi	a5,a5,-612 # 80003194 <consoleread>
    80003400:	0af4bc23          	sd	a5,184(s1)
    80003404:	00000797          	auipc	a5,0x0
    80003408:	cec78793          	addi	a5,a5,-788 # 800030f0 <consolewrite>
    8000340c:	0cf4b023          	sd	a5,192(s1)
    80003410:	00813483          	ld	s1,8(sp)
    80003414:	02010113          	addi	sp,sp,32
    80003418:	00008067          	ret

000000008000341c <console_read>:
    8000341c:	ff010113          	addi	sp,sp,-16
    80003420:	00813423          	sd	s0,8(sp)
    80003424:	01010413          	addi	s0,sp,16
    80003428:	00813403          	ld	s0,8(sp)
    8000342c:	00004317          	auipc	t1,0x4
    80003430:	9e433303          	ld	t1,-1564(t1) # 80006e10 <devsw+0x10>
    80003434:	01010113          	addi	sp,sp,16
    80003438:	00030067          	jr	t1

000000008000343c <console_write>:
    8000343c:	ff010113          	addi	sp,sp,-16
    80003440:	00813423          	sd	s0,8(sp)
    80003444:	01010413          	addi	s0,sp,16
    80003448:	00813403          	ld	s0,8(sp)
    8000344c:	00004317          	auipc	t1,0x4
    80003450:	9cc33303          	ld	t1,-1588(t1) # 80006e18 <devsw+0x18>
    80003454:	01010113          	addi	sp,sp,16
    80003458:	00030067          	jr	t1

000000008000345c <panic>:
    8000345c:	fe010113          	addi	sp,sp,-32
    80003460:	00113c23          	sd	ra,24(sp)
    80003464:	00813823          	sd	s0,16(sp)
    80003468:	00913423          	sd	s1,8(sp)
    8000346c:	02010413          	addi	s0,sp,32
    80003470:	00050493          	mv	s1,a0
    80003474:	00002517          	auipc	a0,0x2
    80003478:	e2c50513          	addi	a0,a0,-468 # 800052a0 <_ZZ12printIntegermE6digits+0x140>
    8000347c:	00004797          	auipc	a5,0x4
    80003480:	a207ae23          	sw	zero,-1476(a5) # 80006eb8 <pr+0x18>
    80003484:	00000097          	auipc	ra,0x0
    80003488:	034080e7          	jalr	52(ra) # 800034b8 <__printf>
    8000348c:	00048513          	mv	a0,s1
    80003490:	00000097          	auipc	ra,0x0
    80003494:	028080e7          	jalr	40(ra) # 800034b8 <__printf>
    80003498:	00002517          	auipc	a0,0x2
    8000349c:	cc050513          	addi	a0,a0,-832 # 80005158 <kvmincrease+0x538>
    800034a0:	00000097          	auipc	ra,0x0
    800034a4:	018080e7          	jalr	24(ra) # 800034b8 <__printf>
    800034a8:	00100793          	li	a5,1
    800034ac:	00002717          	auipc	a4,0x2
    800034b0:	74f72623          	sw	a5,1868(a4) # 80005bf8 <panicked>
    800034b4:	0000006f          	j	800034b4 <panic+0x58>

00000000800034b8 <__printf>:
    800034b8:	f3010113          	addi	sp,sp,-208
    800034bc:	08813023          	sd	s0,128(sp)
    800034c0:	07313423          	sd	s3,104(sp)
    800034c4:	09010413          	addi	s0,sp,144
    800034c8:	05813023          	sd	s8,64(sp)
    800034cc:	08113423          	sd	ra,136(sp)
    800034d0:	06913c23          	sd	s1,120(sp)
    800034d4:	07213823          	sd	s2,112(sp)
    800034d8:	07413023          	sd	s4,96(sp)
    800034dc:	05513c23          	sd	s5,88(sp)
    800034e0:	05613823          	sd	s6,80(sp)
    800034e4:	05713423          	sd	s7,72(sp)
    800034e8:	03913c23          	sd	s9,56(sp)
    800034ec:	03a13823          	sd	s10,48(sp)
    800034f0:	03b13423          	sd	s11,40(sp)
    800034f4:	00004317          	auipc	t1,0x4
    800034f8:	9ac30313          	addi	t1,t1,-1620 # 80006ea0 <pr>
    800034fc:	01832c03          	lw	s8,24(t1)
    80003500:	00b43423          	sd	a1,8(s0)
    80003504:	00c43823          	sd	a2,16(s0)
    80003508:	00d43c23          	sd	a3,24(s0)
    8000350c:	02e43023          	sd	a4,32(s0)
    80003510:	02f43423          	sd	a5,40(s0)
    80003514:	03043823          	sd	a6,48(s0)
    80003518:	03143c23          	sd	a7,56(s0)
    8000351c:	00050993          	mv	s3,a0
    80003520:	4a0c1663          	bnez	s8,800039cc <__printf+0x514>
    80003524:	60098c63          	beqz	s3,80003b3c <__printf+0x684>
    80003528:	0009c503          	lbu	a0,0(s3)
    8000352c:	00840793          	addi	a5,s0,8
    80003530:	f6f43c23          	sd	a5,-136(s0)
    80003534:	00000493          	li	s1,0
    80003538:	22050063          	beqz	a0,80003758 <__printf+0x2a0>
    8000353c:	00002a37          	lui	s4,0x2
    80003540:	00018ab7          	lui	s5,0x18
    80003544:	000f4b37          	lui	s6,0xf4
    80003548:	00989bb7          	lui	s7,0x989
    8000354c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003550:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003554:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003558:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000355c:	00148c9b          	addiw	s9,s1,1
    80003560:	02500793          	li	a5,37
    80003564:	01998933          	add	s2,s3,s9
    80003568:	38f51263          	bne	a0,a5,800038ec <__printf+0x434>
    8000356c:	00094783          	lbu	a5,0(s2)
    80003570:	00078c9b          	sext.w	s9,a5
    80003574:	1e078263          	beqz	a5,80003758 <__printf+0x2a0>
    80003578:	0024849b          	addiw	s1,s1,2
    8000357c:	07000713          	li	a4,112
    80003580:	00998933          	add	s2,s3,s1
    80003584:	38e78a63          	beq	a5,a4,80003918 <__printf+0x460>
    80003588:	20f76863          	bltu	a4,a5,80003798 <__printf+0x2e0>
    8000358c:	42a78863          	beq	a5,a0,800039bc <__printf+0x504>
    80003590:	06400713          	li	a4,100
    80003594:	40e79663          	bne	a5,a4,800039a0 <__printf+0x4e8>
    80003598:	f7843783          	ld	a5,-136(s0)
    8000359c:	0007a603          	lw	a2,0(a5)
    800035a0:	00878793          	addi	a5,a5,8
    800035a4:	f6f43c23          	sd	a5,-136(s0)
    800035a8:	42064a63          	bltz	a2,800039dc <__printf+0x524>
    800035ac:	00a00713          	li	a4,10
    800035b0:	02e677bb          	remuw	a5,a2,a4
    800035b4:	00002d97          	auipc	s11,0x2
    800035b8:	d14d8d93          	addi	s11,s11,-748 # 800052c8 <digits>
    800035bc:	00900593          	li	a1,9
    800035c0:	0006051b          	sext.w	a0,a2
    800035c4:	00000c93          	li	s9,0
    800035c8:	02079793          	slli	a5,a5,0x20
    800035cc:	0207d793          	srli	a5,a5,0x20
    800035d0:	00fd87b3          	add	a5,s11,a5
    800035d4:	0007c783          	lbu	a5,0(a5)
    800035d8:	02e656bb          	divuw	a3,a2,a4
    800035dc:	f8f40023          	sb	a5,-128(s0)
    800035e0:	14c5d863          	bge	a1,a2,80003730 <__printf+0x278>
    800035e4:	06300593          	li	a1,99
    800035e8:	00100c93          	li	s9,1
    800035ec:	02e6f7bb          	remuw	a5,a3,a4
    800035f0:	02079793          	slli	a5,a5,0x20
    800035f4:	0207d793          	srli	a5,a5,0x20
    800035f8:	00fd87b3          	add	a5,s11,a5
    800035fc:	0007c783          	lbu	a5,0(a5)
    80003600:	02e6d73b          	divuw	a4,a3,a4
    80003604:	f8f400a3          	sb	a5,-127(s0)
    80003608:	12a5f463          	bgeu	a1,a0,80003730 <__printf+0x278>
    8000360c:	00a00693          	li	a3,10
    80003610:	00900593          	li	a1,9
    80003614:	02d777bb          	remuw	a5,a4,a3
    80003618:	02079793          	slli	a5,a5,0x20
    8000361c:	0207d793          	srli	a5,a5,0x20
    80003620:	00fd87b3          	add	a5,s11,a5
    80003624:	0007c503          	lbu	a0,0(a5)
    80003628:	02d757bb          	divuw	a5,a4,a3
    8000362c:	f8a40123          	sb	a0,-126(s0)
    80003630:	48e5f263          	bgeu	a1,a4,80003ab4 <__printf+0x5fc>
    80003634:	06300513          	li	a0,99
    80003638:	02d7f5bb          	remuw	a1,a5,a3
    8000363c:	02059593          	slli	a1,a1,0x20
    80003640:	0205d593          	srli	a1,a1,0x20
    80003644:	00bd85b3          	add	a1,s11,a1
    80003648:	0005c583          	lbu	a1,0(a1)
    8000364c:	02d7d7bb          	divuw	a5,a5,a3
    80003650:	f8b401a3          	sb	a1,-125(s0)
    80003654:	48e57263          	bgeu	a0,a4,80003ad8 <__printf+0x620>
    80003658:	3e700513          	li	a0,999
    8000365c:	02d7f5bb          	remuw	a1,a5,a3
    80003660:	02059593          	slli	a1,a1,0x20
    80003664:	0205d593          	srli	a1,a1,0x20
    80003668:	00bd85b3          	add	a1,s11,a1
    8000366c:	0005c583          	lbu	a1,0(a1)
    80003670:	02d7d7bb          	divuw	a5,a5,a3
    80003674:	f8b40223          	sb	a1,-124(s0)
    80003678:	46e57663          	bgeu	a0,a4,80003ae4 <__printf+0x62c>
    8000367c:	02d7f5bb          	remuw	a1,a5,a3
    80003680:	02059593          	slli	a1,a1,0x20
    80003684:	0205d593          	srli	a1,a1,0x20
    80003688:	00bd85b3          	add	a1,s11,a1
    8000368c:	0005c583          	lbu	a1,0(a1)
    80003690:	02d7d7bb          	divuw	a5,a5,a3
    80003694:	f8b402a3          	sb	a1,-123(s0)
    80003698:	46ea7863          	bgeu	s4,a4,80003b08 <__printf+0x650>
    8000369c:	02d7f5bb          	remuw	a1,a5,a3
    800036a0:	02059593          	slli	a1,a1,0x20
    800036a4:	0205d593          	srli	a1,a1,0x20
    800036a8:	00bd85b3          	add	a1,s11,a1
    800036ac:	0005c583          	lbu	a1,0(a1)
    800036b0:	02d7d7bb          	divuw	a5,a5,a3
    800036b4:	f8b40323          	sb	a1,-122(s0)
    800036b8:	3eeaf863          	bgeu	s5,a4,80003aa8 <__printf+0x5f0>
    800036bc:	02d7f5bb          	remuw	a1,a5,a3
    800036c0:	02059593          	slli	a1,a1,0x20
    800036c4:	0205d593          	srli	a1,a1,0x20
    800036c8:	00bd85b3          	add	a1,s11,a1
    800036cc:	0005c583          	lbu	a1,0(a1)
    800036d0:	02d7d7bb          	divuw	a5,a5,a3
    800036d4:	f8b403a3          	sb	a1,-121(s0)
    800036d8:	42eb7e63          	bgeu	s6,a4,80003b14 <__printf+0x65c>
    800036dc:	02d7f5bb          	remuw	a1,a5,a3
    800036e0:	02059593          	slli	a1,a1,0x20
    800036e4:	0205d593          	srli	a1,a1,0x20
    800036e8:	00bd85b3          	add	a1,s11,a1
    800036ec:	0005c583          	lbu	a1,0(a1)
    800036f0:	02d7d7bb          	divuw	a5,a5,a3
    800036f4:	f8b40423          	sb	a1,-120(s0)
    800036f8:	42ebfc63          	bgeu	s7,a4,80003b30 <__printf+0x678>
    800036fc:	02079793          	slli	a5,a5,0x20
    80003700:	0207d793          	srli	a5,a5,0x20
    80003704:	00fd8db3          	add	s11,s11,a5
    80003708:	000dc703          	lbu	a4,0(s11)
    8000370c:	00a00793          	li	a5,10
    80003710:	00900c93          	li	s9,9
    80003714:	f8e404a3          	sb	a4,-119(s0)
    80003718:	00065c63          	bgez	a2,80003730 <__printf+0x278>
    8000371c:	f9040713          	addi	a4,s0,-112
    80003720:	00f70733          	add	a4,a4,a5
    80003724:	02d00693          	li	a3,45
    80003728:	fed70823          	sb	a3,-16(a4)
    8000372c:	00078c93          	mv	s9,a5
    80003730:	f8040793          	addi	a5,s0,-128
    80003734:	01978cb3          	add	s9,a5,s9
    80003738:	f7f40d13          	addi	s10,s0,-129
    8000373c:	000cc503          	lbu	a0,0(s9)
    80003740:	fffc8c93          	addi	s9,s9,-1
    80003744:	00000097          	auipc	ra,0x0
    80003748:	b90080e7          	jalr	-1136(ra) # 800032d4 <consputc>
    8000374c:	ffac98e3          	bne	s9,s10,8000373c <__printf+0x284>
    80003750:	00094503          	lbu	a0,0(s2)
    80003754:	e00514e3          	bnez	a0,8000355c <__printf+0xa4>
    80003758:	1a0c1663          	bnez	s8,80003904 <__printf+0x44c>
    8000375c:	08813083          	ld	ra,136(sp)
    80003760:	08013403          	ld	s0,128(sp)
    80003764:	07813483          	ld	s1,120(sp)
    80003768:	07013903          	ld	s2,112(sp)
    8000376c:	06813983          	ld	s3,104(sp)
    80003770:	06013a03          	ld	s4,96(sp)
    80003774:	05813a83          	ld	s5,88(sp)
    80003778:	05013b03          	ld	s6,80(sp)
    8000377c:	04813b83          	ld	s7,72(sp)
    80003780:	04013c03          	ld	s8,64(sp)
    80003784:	03813c83          	ld	s9,56(sp)
    80003788:	03013d03          	ld	s10,48(sp)
    8000378c:	02813d83          	ld	s11,40(sp)
    80003790:	0d010113          	addi	sp,sp,208
    80003794:	00008067          	ret
    80003798:	07300713          	li	a4,115
    8000379c:	1ce78a63          	beq	a5,a4,80003970 <__printf+0x4b8>
    800037a0:	07800713          	li	a4,120
    800037a4:	1ee79e63          	bne	a5,a4,800039a0 <__printf+0x4e8>
    800037a8:	f7843783          	ld	a5,-136(s0)
    800037ac:	0007a703          	lw	a4,0(a5)
    800037b0:	00878793          	addi	a5,a5,8
    800037b4:	f6f43c23          	sd	a5,-136(s0)
    800037b8:	28074263          	bltz	a4,80003a3c <__printf+0x584>
    800037bc:	00002d97          	auipc	s11,0x2
    800037c0:	b0cd8d93          	addi	s11,s11,-1268 # 800052c8 <digits>
    800037c4:	00f77793          	andi	a5,a4,15
    800037c8:	00fd87b3          	add	a5,s11,a5
    800037cc:	0007c683          	lbu	a3,0(a5)
    800037d0:	00f00613          	li	a2,15
    800037d4:	0007079b          	sext.w	a5,a4
    800037d8:	f8d40023          	sb	a3,-128(s0)
    800037dc:	0047559b          	srliw	a1,a4,0x4
    800037e0:	0047569b          	srliw	a3,a4,0x4
    800037e4:	00000c93          	li	s9,0
    800037e8:	0ee65063          	bge	a2,a4,800038c8 <__printf+0x410>
    800037ec:	00f6f693          	andi	a3,a3,15
    800037f0:	00dd86b3          	add	a3,s11,a3
    800037f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800037f8:	0087d79b          	srliw	a5,a5,0x8
    800037fc:	00100c93          	li	s9,1
    80003800:	f8d400a3          	sb	a3,-127(s0)
    80003804:	0cb67263          	bgeu	a2,a1,800038c8 <__printf+0x410>
    80003808:	00f7f693          	andi	a3,a5,15
    8000380c:	00dd86b3          	add	a3,s11,a3
    80003810:	0006c583          	lbu	a1,0(a3)
    80003814:	00f00613          	li	a2,15
    80003818:	0047d69b          	srliw	a3,a5,0x4
    8000381c:	f8b40123          	sb	a1,-126(s0)
    80003820:	0047d593          	srli	a1,a5,0x4
    80003824:	28f67e63          	bgeu	a2,a5,80003ac0 <__printf+0x608>
    80003828:	00f6f693          	andi	a3,a3,15
    8000382c:	00dd86b3          	add	a3,s11,a3
    80003830:	0006c503          	lbu	a0,0(a3)
    80003834:	0087d813          	srli	a6,a5,0x8
    80003838:	0087d69b          	srliw	a3,a5,0x8
    8000383c:	f8a401a3          	sb	a0,-125(s0)
    80003840:	28b67663          	bgeu	a2,a1,80003acc <__printf+0x614>
    80003844:	00f6f693          	andi	a3,a3,15
    80003848:	00dd86b3          	add	a3,s11,a3
    8000384c:	0006c583          	lbu	a1,0(a3)
    80003850:	00c7d513          	srli	a0,a5,0xc
    80003854:	00c7d69b          	srliw	a3,a5,0xc
    80003858:	f8b40223          	sb	a1,-124(s0)
    8000385c:	29067a63          	bgeu	a2,a6,80003af0 <__printf+0x638>
    80003860:	00f6f693          	andi	a3,a3,15
    80003864:	00dd86b3          	add	a3,s11,a3
    80003868:	0006c583          	lbu	a1,0(a3)
    8000386c:	0107d813          	srli	a6,a5,0x10
    80003870:	0107d69b          	srliw	a3,a5,0x10
    80003874:	f8b402a3          	sb	a1,-123(s0)
    80003878:	28a67263          	bgeu	a2,a0,80003afc <__printf+0x644>
    8000387c:	00f6f693          	andi	a3,a3,15
    80003880:	00dd86b3          	add	a3,s11,a3
    80003884:	0006c683          	lbu	a3,0(a3)
    80003888:	0147d79b          	srliw	a5,a5,0x14
    8000388c:	f8d40323          	sb	a3,-122(s0)
    80003890:	21067663          	bgeu	a2,a6,80003a9c <__printf+0x5e4>
    80003894:	02079793          	slli	a5,a5,0x20
    80003898:	0207d793          	srli	a5,a5,0x20
    8000389c:	00fd8db3          	add	s11,s11,a5
    800038a0:	000dc683          	lbu	a3,0(s11)
    800038a4:	00800793          	li	a5,8
    800038a8:	00700c93          	li	s9,7
    800038ac:	f8d403a3          	sb	a3,-121(s0)
    800038b0:	00075c63          	bgez	a4,800038c8 <__printf+0x410>
    800038b4:	f9040713          	addi	a4,s0,-112
    800038b8:	00f70733          	add	a4,a4,a5
    800038bc:	02d00693          	li	a3,45
    800038c0:	fed70823          	sb	a3,-16(a4)
    800038c4:	00078c93          	mv	s9,a5
    800038c8:	f8040793          	addi	a5,s0,-128
    800038cc:	01978cb3          	add	s9,a5,s9
    800038d0:	f7f40d13          	addi	s10,s0,-129
    800038d4:	000cc503          	lbu	a0,0(s9)
    800038d8:	fffc8c93          	addi	s9,s9,-1
    800038dc:	00000097          	auipc	ra,0x0
    800038e0:	9f8080e7          	jalr	-1544(ra) # 800032d4 <consputc>
    800038e4:	ff9d18e3          	bne	s10,s9,800038d4 <__printf+0x41c>
    800038e8:	0100006f          	j	800038f8 <__printf+0x440>
    800038ec:	00000097          	auipc	ra,0x0
    800038f0:	9e8080e7          	jalr	-1560(ra) # 800032d4 <consputc>
    800038f4:	000c8493          	mv	s1,s9
    800038f8:	00094503          	lbu	a0,0(s2)
    800038fc:	c60510e3          	bnez	a0,8000355c <__printf+0xa4>
    80003900:	e40c0ee3          	beqz	s8,8000375c <__printf+0x2a4>
    80003904:	00003517          	auipc	a0,0x3
    80003908:	59c50513          	addi	a0,a0,1436 # 80006ea0 <pr>
    8000390c:	00001097          	auipc	ra,0x1
    80003910:	94c080e7          	jalr	-1716(ra) # 80004258 <release>
    80003914:	e49ff06f          	j	8000375c <__printf+0x2a4>
    80003918:	f7843783          	ld	a5,-136(s0)
    8000391c:	03000513          	li	a0,48
    80003920:	01000d13          	li	s10,16
    80003924:	00878713          	addi	a4,a5,8
    80003928:	0007bc83          	ld	s9,0(a5)
    8000392c:	f6e43c23          	sd	a4,-136(s0)
    80003930:	00000097          	auipc	ra,0x0
    80003934:	9a4080e7          	jalr	-1628(ra) # 800032d4 <consputc>
    80003938:	07800513          	li	a0,120
    8000393c:	00000097          	auipc	ra,0x0
    80003940:	998080e7          	jalr	-1640(ra) # 800032d4 <consputc>
    80003944:	00002d97          	auipc	s11,0x2
    80003948:	984d8d93          	addi	s11,s11,-1660 # 800052c8 <digits>
    8000394c:	03ccd793          	srli	a5,s9,0x3c
    80003950:	00fd87b3          	add	a5,s11,a5
    80003954:	0007c503          	lbu	a0,0(a5)
    80003958:	fffd0d1b          	addiw	s10,s10,-1
    8000395c:	004c9c93          	slli	s9,s9,0x4
    80003960:	00000097          	auipc	ra,0x0
    80003964:	974080e7          	jalr	-1676(ra) # 800032d4 <consputc>
    80003968:	fe0d12e3          	bnez	s10,8000394c <__printf+0x494>
    8000396c:	f8dff06f          	j	800038f8 <__printf+0x440>
    80003970:	f7843783          	ld	a5,-136(s0)
    80003974:	0007bc83          	ld	s9,0(a5)
    80003978:	00878793          	addi	a5,a5,8
    8000397c:	f6f43c23          	sd	a5,-136(s0)
    80003980:	000c9a63          	bnez	s9,80003994 <__printf+0x4dc>
    80003984:	1080006f          	j	80003a8c <__printf+0x5d4>
    80003988:	001c8c93          	addi	s9,s9,1
    8000398c:	00000097          	auipc	ra,0x0
    80003990:	948080e7          	jalr	-1720(ra) # 800032d4 <consputc>
    80003994:	000cc503          	lbu	a0,0(s9)
    80003998:	fe0518e3          	bnez	a0,80003988 <__printf+0x4d0>
    8000399c:	f5dff06f          	j	800038f8 <__printf+0x440>
    800039a0:	02500513          	li	a0,37
    800039a4:	00000097          	auipc	ra,0x0
    800039a8:	930080e7          	jalr	-1744(ra) # 800032d4 <consputc>
    800039ac:	000c8513          	mv	a0,s9
    800039b0:	00000097          	auipc	ra,0x0
    800039b4:	924080e7          	jalr	-1756(ra) # 800032d4 <consputc>
    800039b8:	f41ff06f          	j	800038f8 <__printf+0x440>
    800039bc:	02500513          	li	a0,37
    800039c0:	00000097          	auipc	ra,0x0
    800039c4:	914080e7          	jalr	-1772(ra) # 800032d4 <consputc>
    800039c8:	f31ff06f          	j	800038f8 <__printf+0x440>
    800039cc:	00030513          	mv	a0,t1
    800039d0:	00000097          	auipc	ra,0x0
    800039d4:	7bc080e7          	jalr	1980(ra) # 8000418c <acquire>
    800039d8:	b4dff06f          	j	80003524 <__printf+0x6c>
    800039dc:	40c0053b          	negw	a0,a2
    800039e0:	00a00713          	li	a4,10
    800039e4:	02e576bb          	remuw	a3,a0,a4
    800039e8:	00002d97          	auipc	s11,0x2
    800039ec:	8e0d8d93          	addi	s11,s11,-1824 # 800052c8 <digits>
    800039f0:	ff700593          	li	a1,-9
    800039f4:	02069693          	slli	a3,a3,0x20
    800039f8:	0206d693          	srli	a3,a3,0x20
    800039fc:	00dd86b3          	add	a3,s11,a3
    80003a00:	0006c683          	lbu	a3,0(a3)
    80003a04:	02e557bb          	divuw	a5,a0,a4
    80003a08:	f8d40023          	sb	a3,-128(s0)
    80003a0c:	10b65e63          	bge	a2,a1,80003b28 <__printf+0x670>
    80003a10:	06300593          	li	a1,99
    80003a14:	02e7f6bb          	remuw	a3,a5,a4
    80003a18:	02069693          	slli	a3,a3,0x20
    80003a1c:	0206d693          	srli	a3,a3,0x20
    80003a20:	00dd86b3          	add	a3,s11,a3
    80003a24:	0006c683          	lbu	a3,0(a3)
    80003a28:	02e7d73b          	divuw	a4,a5,a4
    80003a2c:	00200793          	li	a5,2
    80003a30:	f8d400a3          	sb	a3,-127(s0)
    80003a34:	bca5ece3          	bltu	a1,a0,8000360c <__printf+0x154>
    80003a38:	ce5ff06f          	j	8000371c <__printf+0x264>
    80003a3c:	40e007bb          	negw	a5,a4
    80003a40:	00002d97          	auipc	s11,0x2
    80003a44:	888d8d93          	addi	s11,s11,-1912 # 800052c8 <digits>
    80003a48:	00f7f693          	andi	a3,a5,15
    80003a4c:	00dd86b3          	add	a3,s11,a3
    80003a50:	0006c583          	lbu	a1,0(a3)
    80003a54:	ff100613          	li	a2,-15
    80003a58:	0047d69b          	srliw	a3,a5,0x4
    80003a5c:	f8b40023          	sb	a1,-128(s0)
    80003a60:	0047d59b          	srliw	a1,a5,0x4
    80003a64:	0ac75e63          	bge	a4,a2,80003b20 <__printf+0x668>
    80003a68:	00f6f693          	andi	a3,a3,15
    80003a6c:	00dd86b3          	add	a3,s11,a3
    80003a70:	0006c603          	lbu	a2,0(a3)
    80003a74:	00f00693          	li	a3,15
    80003a78:	0087d79b          	srliw	a5,a5,0x8
    80003a7c:	f8c400a3          	sb	a2,-127(s0)
    80003a80:	d8b6e4e3          	bltu	a3,a1,80003808 <__printf+0x350>
    80003a84:	00200793          	li	a5,2
    80003a88:	e2dff06f          	j	800038b4 <__printf+0x3fc>
    80003a8c:	00002c97          	auipc	s9,0x2
    80003a90:	81cc8c93          	addi	s9,s9,-2020 # 800052a8 <_ZZ12printIntegermE6digits+0x148>
    80003a94:	02800513          	li	a0,40
    80003a98:	ef1ff06f          	j	80003988 <__printf+0x4d0>
    80003a9c:	00700793          	li	a5,7
    80003aa0:	00600c93          	li	s9,6
    80003aa4:	e0dff06f          	j	800038b0 <__printf+0x3f8>
    80003aa8:	00700793          	li	a5,7
    80003aac:	00600c93          	li	s9,6
    80003ab0:	c69ff06f          	j	80003718 <__printf+0x260>
    80003ab4:	00300793          	li	a5,3
    80003ab8:	00200c93          	li	s9,2
    80003abc:	c5dff06f          	j	80003718 <__printf+0x260>
    80003ac0:	00300793          	li	a5,3
    80003ac4:	00200c93          	li	s9,2
    80003ac8:	de9ff06f          	j	800038b0 <__printf+0x3f8>
    80003acc:	00400793          	li	a5,4
    80003ad0:	00300c93          	li	s9,3
    80003ad4:	dddff06f          	j	800038b0 <__printf+0x3f8>
    80003ad8:	00400793          	li	a5,4
    80003adc:	00300c93          	li	s9,3
    80003ae0:	c39ff06f          	j	80003718 <__printf+0x260>
    80003ae4:	00500793          	li	a5,5
    80003ae8:	00400c93          	li	s9,4
    80003aec:	c2dff06f          	j	80003718 <__printf+0x260>
    80003af0:	00500793          	li	a5,5
    80003af4:	00400c93          	li	s9,4
    80003af8:	db9ff06f          	j	800038b0 <__printf+0x3f8>
    80003afc:	00600793          	li	a5,6
    80003b00:	00500c93          	li	s9,5
    80003b04:	dadff06f          	j	800038b0 <__printf+0x3f8>
    80003b08:	00600793          	li	a5,6
    80003b0c:	00500c93          	li	s9,5
    80003b10:	c09ff06f          	j	80003718 <__printf+0x260>
    80003b14:	00800793          	li	a5,8
    80003b18:	00700c93          	li	s9,7
    80003b1c:	bfdff06f          	j	80003718 <__printf+0x260>
    80003b20:	00100793          	li	a5,1
    80003b24:	d91ff06f          	j	800038b4 <__printf+0x3fc>
    80003b28:	00100793          	li	a5,1
    80003b2c:	bf1ff06f          	j	8000371c <__printf+0x264>
    80003b30:	00900793          	li	a5,9
    80003b34:	00800c93          	li	s9,8
    80003b38:	be1ff06f          	j	80003718 <__printf+0x260>
    80003b3c:	00001517          	auipc	a0,0x1
    80003b40:	77450513          	addi	a0,a0,1908 # 800052b0 <_ZZ12printIntegermE6digits+0x150>
    80003b44:	00000097          	auipc	ra,0x0
    80003b48:	918080e7          	jalr	-1768(ra) # 8000345c <panic>

0000000080003b4c <printfinit>:
    80003b4c:	fe010113          	addi	sp,sp,-32
    80003b50:	00813823          	sd	s0,16(sp)
    80003b54:	00913423          	sd	s1,8(sp)
    80003b58:	00113c23          	sd	ra,24(sp)
    80003b5c:	02010413          	addi	s0,sp,32
    80003b60:	00003497          	auipc	s1,0x3
    80003b64:	34048493          	addi	s1,s1,832 # 80006ea0 <pr>
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	00001597          	auipc	a1,0x1
    80003b70:	75458593          	addi	a1,a1,1876 # 800052c0 <_ZZ12printIntegermE6digits+0x160>
    80003b74:	00000097          	auipc	ra,0x0
    80003b78:	5f4080e7          	jalr	1524(ra) # 80004168 <initlock>
    80003b7c:	01813083          	ld	ra,24(sp)
    80003b80:	01013403          	ld	s0,16(sp)
    80003b84:	0004ac23          	sw	zero,24(s1)
    80003b88:	00813483          	ld	s1,8(sp)
    80003b8c:	02010113          	addi	sp,sp,32
    80003b90:	00008067          	ret

0000000080003b94 <uartinit>:
    80003b94:	ff010113          	addi	sp,sp,-16
    80003b98:	00813423          	sd	s0,8(sp)
    80003b9c:	01010413          	addi	s0,sp,16
    80003ba0:	100007b7          	lui	a5,0x10000
    80003ba4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003ba8:	f8000713          	li	a4,-128
    80003bac:	00e781a3          	sb	a4,3(a5)
    80003bb0:	00300713          	li	a4,3
    80003bb4:	00e78023          	sb	a4,0(a5)
    80003bb8:	000780a3          	sb	zero,1(a5)
    80003bbc:	00e781a3          	sb	a4,3(a5)
    80003bc0:	00700693          	li	a3,7
    80003bc4:	00d78123          	sb	a3,2(a5)
    80003bc8:	00e780a3          	sb	a4,1(a5)
    80003bcc:	00813403          	ld	s0,8(sp)
    80003bd0:	01010113          	addi	sp,sp,16
    80003bd4:	00008067          	ret

0000000080003bd8 <uartputc>:
    80003bd8:	00002797          	auipc	a5,0x2
    80003bdc:	0207a783          	lw	a5,32(a5) # 80005bf8 <panicked>
    80003be0:	00078463          	beqz	a5,80003be8 <uartputc+0x10>
    80003be4:	0000006f          	j	80003be4 <uartputc+0xc>
    80003be8:	fd010113          	addi	sp,sp,-48
    80003bec:	02813023          	sd	s0,32(sp)
    80003bf0:	00913c23          	sd	s1,24(sp)
    80003bf4:	01213823          	sd	s2,16(sp)
    80003bf8:	01313423          	sd	s3,8(sp)
    80003bfc:	02113423          	sd	ra,40(sp)
    80003c00:	03010413          	addi	s0,sp,48
    80003c04:	00002917          	auipc	s2,0x2
    80003c08:	ffc90913          	addi	s2,s2,-4 # 80005c00 <uart_tx_r>
    80003c0c:	00093783          	ld	a5,0(s2)
    80003c10:	00002497          	auipc	s1,0x2
    80003c14:	ff848493          	addi	s1,s1,-8 # 80005c08 <uart_tx_w>
    80003c18:	0004b703          	ld	a4,0(s1)
    80003c1c:	02078693          	addi	a3,a5,32
    80003c20:	00050993          	mv	s3,a0
    80003c24:	02e69c63          	bne	a3,a4,80003c5c <uartputc+0x84>
    80003c28:	00001097          	auipc	ra,0x1
    80003c2c:	834080e7          	jalr	-1996(ra) # 8000445c <push_on>
    80003c30:	00093783          	ld	a5,0(s2)
    80003c34:	0004b703          	ld	a4,0(s1)
    80003c38:	02078793          	addi	a5,a5,32
    80003c3c:	00e79463          	bne	a5,a4,80003c44 <uartputc+0x6c>
    80003c40:	0000006f          	j	80003c40 <uartputc+0x68>
    80003c44:	00001097          	auipc	ra,0x1
    80003c48:	88c080e7          	jalr	-1908(ra) # 800044d0 <pop_on>
    80003c4c:	00093783          	ld	a5,0(s2)
    80003c50:	0004b703          	ld	a4,0(s1)
    80003c54:	02078693          	addi	a3,a5,32
    80003c58:	fce688e3          	beq	a3,a4,80003c28 <uartputc+0x50>
    80003c5c:	01f77693          	andi	a3,a4,31
    80003c60:	00003597          	auipc	a1,0x3
    80003c64:	26058593          	addi	a1,a1,608 # 80006ec0 <uart_tx_buf>
    80003c68:	00d586b3          	add	a3,a1,a3
    80003c6c:	00170713          	addi	a4,a4,1
    80003c70:	01368023          	sb	s3,0(a3)
    80003c74:	00e4b023          	sd	a4,0(s1)
    80003c78:	10000637          	lui	a2,0x10000
    80003c7c:	02f71063          	bne	a4,a5,80003c9c <uartputc+0xc4>
    80003c80:	0340006f          	j	80003cb4 <uartputc+0xdc>
    80003c84:	00074703          	lbu	a4,0(a4)
    80003c88:	00f93023          	sd	a5,0(s2)
    80003c8c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003c90:	00093783          	ld	a5,0(s2)
    80003c94:	0004b703          	ld	a4,0(s1)
    80003c98:	00f70e63          	beq	a4,a5,80003cb4 <uartputc+0xdc>
    80003c9c:	00564683          	lbu	a3,5(a2)
    80003ca0:	01f7f713          	andi	a4,a5,31
    80003ca4:	00e58733          	add	a4,a1,a4
    80003ca8:	0206f693          	andi	a3,a3,32
    80003cac:	00178793          	addi	a5,a5,1
    80003cb0:	fc069ae3          	bnez	a3,80003c84 <uartputc+0xac>
    80003cb4:	02813083          	ld	ra,40(sp)
    80003cb8:	02013403          	ld	s0,32(sp)
    80003cbc:	01813483          	ld	s1,24(sp)
    80003cc0:	01013903          	ld	s2,16(sp)
    80003cc4:	00813983          	ld	s3,8(sp)
    80003cc8:	03010113          	addi	sp,sp,48
    80003ccc:	00008067          	ret

0000000080003cd0 <uartputc_sync>:
    80003cd0:	ff010113          	addi	sp,sp,-16
    80003cd4:	00813423          	sd	s0,8(sp)
    80003cd8:	01010413          	addi	s0,sp,16
    80003cdc:	00002717          	auipc	a4,0x2
    80003ce0:	f1c72703          	lw	a4,-228(a4) # 80005bf8 <panicked>
    80003ce4:	02071663          	bnez	a4,80003d10 <uartputc_sync+0x40>
    80003ce8:	00050793          	mv	a5,a0
    80003cec:	100006b7          	lui	a3,0x10000
    80003cf0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003cf4:	02077713          	andi	a4,a4,32
    80003cf8:	fe070ce3          	beqz	a4,80003cf0 <uartputc_sync+0x20>
    80003cfc:	0ff7f793          	andi	a5,a5,255
    80003d00:	00f68023          	sb	a5,0(a3)
    80003d04:	00813403          	ld	s0,8(sp)
    80003d08:	01010113          	addi	sp,sp,16
    80003d0c:	00008067          	ret
    80003d10:	0000006f          	j	80003d10 <uartputc_sync+0x40>

0000000080003d14 <uartstart>:
    80003d14:	ff010113          	addi	sp,sp,-16
    80003d18:	00813423          	sd	s0,8(sp)
    80003d1c:	01010413          	addi	s0,sp,16
    80003d20:	00002617          	auipc	a2,0x2
    80003d24:	ee060613          	addi	a2,a2,-288 # 80005c00 <uart_tx_r>
    80003d28:	00002517          	auipc	a0,0x2
    80003d2c:	ee050513          	addi	a0,a0,-288 # 80005c08 <uart_tx_w>
    80003d30:	00063783          	ld	a5,0(a2)
    80003d34:	00053703          	ld	a4,0(a0)
    80003d38:	04f70263          	beq	a4,a5,80003d7c <uartstart+0x68>
    80003d3c:	100005b7          	lui	a1,0x10000
    80003d40:	00003817          	auipc	a6,0x3
    80003d44:	18080813          	addi	a6,a6,384 # 80006ec0 <uart_tx_buf>
    80003d48:	01c0006f          	j	80003d64 <uartstart+0x50>
    80003d4c:	0006c703          	lbu	a4,0(a3)
    80003d50:	00f63023          	sd	a5,0(a2)
    80003d54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003d58:	00063783          	ld	a5,0(a2)
    80003d5c:	00053703          	ld	a4,0(a0)
    80003d60:	00f70e63          	beq	a4,a5,80003d7c <uartstart+0x68>
    80003d64:	01f7f713          	andi	a4,a5,31
    80003d68:	00e806b3          	add	a3,a6,a4
    80003d6c:	0055c703          	lbu	a4,5(a1)
    80003d70:	00178793          	addi	a5,a5,1
    80003d74:	02077713          	andi	a4,a4,32
    80003d78:	fc071ae3          	bnez	a4,80003d4c <uartstart+0x38>
    80003d7c:	00813403          	ld	s0,8(sp)
    80003d80:	01010113          	addi	sp,sp,16
    80003d84:	00008067          	ret

0000000080003d88 <uartgetc>:
    80003d88:	ff010113          	addi	sp,sp,-16
    80003d8c:	00813423          	sd	s0,8(sp)
    80003d90:	01010413          	addi	s0,sp,16
    80003d94:	10000737          	lui	a4,0x10000
    80003d98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003d9c:	0017f793          	andi	a5,a5,1
    80003da0:	00078c63          	beqz	a5,80003db8 <uartgetc+0x30>
    80003da4:	00074503          	lbu	a0,0(a4)
    80003da8:	0ff57513          	andi	a0,a0,255
    80003dac:	00813403          	ld	s0,8(sp)
    80003db0:	01010113          	addi	sp,sp,16
    80003db4:	00008067          	ret
    80003db8:	fff00513          	li	a0,-1
    80003dbc:	ff1ff06f          	j	80003dac <uartgetc+0x24>

0000000080003dc0 <uartintr>:
    80003dc0:	100007b7          	lui	a5,0x10000
    80003dc4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003dc8:	0017f793          	andi	a5,a5,1
    80003dcc:	0a078463          	beqz	a5,80003e74 <uartintr+0xb4>
    80003dd0:	fe010113          	addi	sp,sp,-32
    80003dd4:	00813823          	sd	s0,16(sp)
    80003dd8:	00913423          	sd	s1,8(sp)
    80003ddc:	00113c23          	sd	ra,24(sp)
    80003de0:	02010413          	addi	s0,sp,32
    80003de4:	100004b7          	lui	s1,0x10000
    80003de8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003dec:	0ff57513          	andi	a0,a0,255
    80003df0:	fffff097          	auipc	ra,0xfffff
    80003df4:	534080e7          	jalr	1332(ra) # 80003324 <consoleintr>
    80003df8:	0054c783          	lbu	a5,5(s1)
    80003dfc:	0017f793          	andi	a5,a5,1
    80003e00:	fe0794e3          	bnez	a5,80003de8 <uartintr+0x28>
    80003e04:	00002617          	auipc	a2,0x2
    80003e08:	dfc60613          	addi	a2,a2,-516 # 80005c00 <uart_tx_r>
    80003e0c:	00002517          	auipc	a0,0x2
    80003e10:	dfc50513          	addi	a0,a0,-516 # 80005c08 <uart_tx_w>
    80003e14:	00063783          	ld	a5,0(a2)
    80003e18:	00053703          	ld	a4,0(a0)
    80003e1c:	04f70263          	beq	a4,a5,80003e60 <uartintr+0xa0>
    80003e20:	100005b7          	lui	a1,0x10000
    80003e24:	00003817          	auipc	a6,0x3
    80003e28:	09c80813          	addi	a6,a6,156 # 80006ec0 <uart_tx_buf>
    80003e2c:	01c0006f          	j	80003e48 <uartintr+0x88>
    80003e30:	0006c703          	lbu	a4,0(a3)
    80003e34:	00f63023          	sd	a5,0(a2)
    80003e38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e3c:	00063783          	ld	a5,0(a2)
    80003e40:	00053703          	ld	a4,0(a0)
    80003e44:	00f70e63          	beq	a4,a5,80003e60 <uartintr+0xa0>
    80003e48:	01f7f713          	andi	a4,a5,31
    80003e4c:	00e806b3          	add	a3,a6,a4
    80003e50:	0055c703          	lbu	a4,5(a1)
    80003e54:	00178793          	addi	a5,a5,1
    80003e58:	02077713          	andi	a4,a4,32
    80003e5c:	fc071ae3          	bnez	a4,80003e30 <uartintr+0x70>
    80003e60:	01813083          	ld	ra,24(sp)
    80003e64:	01013403          	ld	s0,16(sp)
    80003e68:	00813483          	ld	s1,8(sp)
    80003e6c:	02010113          	addi	sp,sp,32
    80003e70:	00008067          	ret
    80003e74:	00002617          	auipc	a2,0x2
    80003e78:	d8c60613          	addi	a2,a2,-628 # 80005c00 <uart_tx_r>
    80003e7c:	00002517          	auipc	a0,0x2
    80003e80:	d8c50513          	addi	a0,a0,-628 # 80005c08 <uart_tx_w>
    80003e84:	00063783          	ld	a5,0(a2)
    80003e88:	00053703          	ld	a4,0(a0)
    80003e8c:	04f70263          	beq	a4,a5,80003ed0 <uartintr+0x110>
    80003e90:	100005b7          	lui	a1,0x10000
    80003e94:	00003817          	auipc	a6,0x3
    80003e98:	02c80813          	addi	a6,a6,44 # 80006ec0 <uart_tx_buf>
    80003e9c:	01c0006f          	j	80003eb8 <uartintr+0xf8>
    80003ea0:	0006c703          	lbu	a4,0(a3)
    80003ea4:	00f63023          	sd	a5,0(a2)
    80003ea8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003eac:	00063783          	ld	a5,0(a2)
    80003eb0:	00053703          	ld	a4,0(a0)
    80003eb4:	02f70063          	beq	a4,a5,80003ed4 <uartintr+0x114>
    80003eb8:	01f7f713          	andi	a4,a5,31
    80003ebc:	00e806b3          	add	a3,a6,a4
    80003ec0:	0055c703          	lbu	a4,5(a1)
    80003ec4:	00178793          	addi	a5,a5,1
    80003ec8:	02077713          	andi	a4,a4,32
    80003ecc:	fc071ae3          	bnez	a4,80003ea0 <uartintr+0xe0>
    80003ed0:	00008067          	ret
    80003ed4:	00008067          	ret

0000000080003ed8 <kinit>:
    80003ed8:	fc010113          	addi	sp,sp,-64
    80003edc:	02913423          	sd	s1,40(sp)
    80003ee0:	fffff7b7          	lui	a5,0xfffff
    80003ee4:	00004497          	auipc	s1,0x4
    80003ee8:	00b48493          	addi	s1,s1,11 # 80007eef <end+0xfff>
    80003eec:	02813823          	sd	s0,48(sp)
    80003ef0:	01313c23          	sd	s3,24(sp)
    80003ef4:	00f4f4b3          	and	s1,s1,a5
    80003ef8:	02113c23          	sd	ra,56(sp)
    80003efc:	03213023          	sd	s2,32(sp)
    80003f00:	01413823          	sd	s4,16(sp)
    80003f04:	01513423          	sd	s5,8(sp)
    80003f08:	04010413          	addi	s0,sp,64
    80003f0c:	000017b7          	lui	a5,0x1
    80003f10:	01100993          	li	s3,17
    80003f14:	00f487b3          	add	a5,s1,a5
    80003f18:	01b99993          	slli	s3,s3,0x1b
    80003f1c:	06f9e063          	bltu	s3,a5,80003f7c <kinit+0xa4>
    80003f20:	00003a97          	auipc	s5,0x3
    80003f24:	fd0a8a93          	addi	s5,s5,-48 # 80006ef0 <end>
    80003f28:	0754ec63          	bltu	s1,s5,80003fa0 <kinit+0xc8>
    80003f2c:	0734fa63          	bgeu	s1,s3,80003fa0 <kinit+0xc8>
    80003f30:	00088a37          	lui	s4,0x88
    80003f34:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003f38:	00002917          	auipc	s2,0x2
    80003f3c:	cd890913          	addi	s2,s2,-808 # 80005c10 <kmem>
    80003f40:	00ca1a13          	slli	s4,s4,0xc
    80003f44:	0140006f          	j	80003f58 <kinit+0x80>
    80003f48:	000017b7          	lui	a5,0x1
    80003f4c:	00f484b3          	add	s1,s1,a5
    80003f50:	0554e863          	bltu	s1,s5,80003fa0 <kinit+0xc8>
    80003f54:	0534f663          	bgeu	s1,s3,80003fa0 <kinit+0xc8>
    80003f58:	00001637          	lui	a2,0x1
    80003f5c:	00100593          	li	a1,1
    80003f60:	00048513          	mv	a0,s1
    80003f64:	00000097          	auipc	ra,0x0
    80003f68:	5e4080e7          	jalr	1508(ra) # 80004548 <__memset>
    80003f6c:	00093783          	ld	a5,0(s2)
    80003f70:	00f4b023          	sd	a5,0(s1)
    80003f74:	00993023          	sd	s1,0(s2)
    80003f78:	fd4498e3          	bne	s1,s4,80003f48 <kinit+0x70>
    80003f7c:	03813083          	ld	ra,56(sp)
    80003f80:	03013403          	ld	s0,48(sp)
    80003f84:	02813483          	ld	s1,40(sp)
    80003f88:	02013903          	ld	s2,32(sp)
    80003f8c:	01813983          	ld	s3,24(sp)
    80003f90:	01013a03          	ld	s4,16(sp)
    80003f94:	00813a83          	ld	s5,8(sp)
    80003f98:	04010113          	addi	sp,sp,64
    80003f9c:	00008067          	ret
    80003fa0:	00001517          	auipc	a0,0x1
    80003fa4:	34050513          	addi	a0,a0,832 # 800052e0 <digits+0x18>
    80003fa8:	fffff097          	auipc	ra,0xfffff
    80003fac:	4b4080e7          	jalr	1204(ra) # 8000345c <panic>

0000000080003fb0 <freerange>:
    80003fb0:	fc010113          	addi	sp,sp,-64
    80003fb4:	000017b7          	lui	a5,0x1
    80003fb8:	02913423          	sd	s1,40(sp)
    80003fbc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003fc0:	009504b3          	add	s1,a0,s1
    80003fc4:	fffff537          	lui	a0,0xfffff
    80003fc8:	02813823          	sd	s0,48(sp)
    80003fcc:	02113c23          	sd	ra,56(sp)
    80003fd0:	03213023          	sd	s2,32(sp)
    80003fd4:	01313c23          	sd	s3,24(sp)
    80003fd8:	01413823          	sd	s4,16(sp)
    80003fdc:	01513423          	sd	s5,8(sp)
    80003fe0:	01613023          	sd	s6,0(sp)
    80003fe4:	04010413          	addi	s0,sp,64
    80003fe8:	00a4f4b3          	and	s1,s1,a0
    80003fec:	00f487b3          	add	a5,s1,a5
    80003ff0:	06f5e463          	bltu	a1,a5,80004058 <freerange+0xa8>
    80003ff4:	00003a97          	auipc	s5,0x3
    80003ff8:	efca8a93          	addi	s5,s5,-260 # 80006ef0 <end>
    80003ffc:	0954e263          	bltu	s1,s5,80004080 <freerange+0xd0>
    80004000:	01100993          	li	s3,17
    80004004:	01b99993          	slli	s3,s3,0x1b
    80004008:	0734fc63          	bgeu	s1,s3,80004080 <freerange+0xd0>
    8000400c:	00058a13          	mv	s4,a1
    80004010:	00002917          	auipc	s2,0x2
    80004014:	c0090913          	addi	s2,s2,-1024 # 80005c10 <kmem>
    80004018:	00002b37          	lui	s6,0x2
    8000401c:	0140006f          	j	80004030 <freerange+0x80>
    80004020:	000017b7          	lui	a5,0x1
    80004024:	00f484b3          	add	s1,s1,a5
    80004028:	0554ec63          	bltu	s1,s5,80004080 <freerange+0xd0>
    8000402c:	0534fa63          	bgeu	s1,s3,80004080 <freerange+0xd0>
    80004030:	00001637          	lui	a2,0x1
    80004034:	00100593          	li	a1,1
    80004038:	00048513          	mv	a0,s1
    8000403c:	00000097          	auipc	ra,0x0
    80004040:	50c080e7          	jalr	1292(ra) # 80004548 <__memset>
    80004044:	00093703          	ld	a4,0(s2)
    80004048:	016487b3          	add	a5,s1,s6
    8000404c:	00e4b023          	sd	a4,0(s1)
    80004050:	00993023          	sd	s1,0(s2)
    80004054:	fcfa76e3          	bgeu	s4,a5,80004020 <freerange+0x70>
    80004058:	03813083          	ld	ra,56(sp)
    8000405c:	03013403          	ld	s0,48(sp)
    80004060:	02813483          	ld	s1,40(sp)
    80004064:	02013903          	ld	s2,32(sp)
    80004068:	01813983          	ld	s3,24(sp)
    8000406c:	01013a03          	ld	s4,16(sp)
    80004070:	00813a83          	ld	s5,8(sp)
    80004074:	00013b03          	ld	s6,0(sp)
    80004078:	04010113          	addi	sp,sp,64
    8000407c:	00008067          	ret
    80004080:	00001517          	auipc	a0,0x1
    80004084:	26050513          	addi	a0,a0,608 # 800052e0 <digits+0x18>
    80004088:	fffff097          	auipc	ra,0xfffff
    8000408c:	3d4080e7          	jalr	980(ra) # 8000345c <panic>

0000000080004090 <kfree>:
    80004090:	fe010113          	addi	sp,sp,-32
    80004094:	00813823          	sd	s0,16(sp)
    80004098:	00113c23          	sd	ra,24(sp)
    8000409c:	00913423          	sd	s1,8(sp)
    800040a0:	02010413          	addi	s0,sp,32
    800040a4:	03451793          	slli	a5,a0,0x34
    800040a8:	04079c63          	bnez	a5,80004100 <kfree+0x70>
    800040ac:	00003797          	auipc	a5,0x3
    800040b0:	e4478793          	addi	a5,a5,-444 # 80006ef0 <end>
    800040b4:	00050493          	mv	s1,a0
    800040b8:	04f56463          	bltu	a0,a5,80004100 <kfree+0x70>
    800040bc:	01100793          	li	a5,17
    800040c0:	01b79793          	slli	a5,a5,0x1b
    800040c4:	02f57e63          	bgeu	a0,a5,80004100 <kfree+0x70>
    800040c8:	00001637          	lui	a2,0x1
    800040cc:	00100593          	li	a1,1
    800040d0:	00000097          	auipc	ra,0x0
    800040d4:	478080e7          	jalr	1144(ra) # 80004548 <__memset>
    800040d8:	00002797          	auipc	a5,0x2
    800040dc:	b3878793          	addi	a5,a5,-1224 # 80005c10 <kmem>
    800040e0:	0007b703          	ld	a4,0(a5)
    800040e4:	01813083          	ld	ra,24(sp)
    800040e8:	01013403          	ld	s0,16(sp)
    800040ec:	00e4b023          	sd	a4,0(s1)
    800040f0:	0097b023          	sd	s1,0(a5)
    800040f4:	00813483          	ld	s1,8(sp)
    800040f8:	02010113          	addi	sp,sp,32
    800040fc:	00008067          	ret
    80004100:	00001517          	auipc	a0,0x1
    80004104:	1e050513          	addi	a0,a0,480 # 800052e0 <digits+0x18>
    80004108:	fffff097          	auipc	ra,0xfffff
    8000410c:	354080e7          	jalr	852(ra) # 8000345c <panic>

0000000080004110 <kalloc>:
    80004110:	fe010113          	addi	sp,sp,-32
    80004114:	00813823          	sd	s0,16(sp)
    80004118:	00913423          	sd	s1,8(sp)
    8000411c:	00113c23          	sd	ra,24(sp)
    80004120:	02010413          	addi	s0,sp,32
    80004124:	00002797          	auipc	a5,0x2
    80004128:	aec78793          	addi	a5,a5,-1300 # 80005c10 <kmem>
    8000412c:	0007b483          	ld	s1,0(a5)
    80004130:	02048063          	beqz	s1,80004150 <kalloc+0x40>
    80004134:	0004b703          	ld	a4,0(s1)
    80004138:	00001637          	lui	a2,0x1
    8000413c:	00500593          	li	a1,5
    80004140:	00048513          	mv	a0,s1
    80004144:	00e7b023          	sd	a4,0(a5)
    80004148:	00000097          	auipc	ra,0x0
    8000414c:	400080e7          	jalr	1024(ra) # 80004548 <__memset>
    80004150:	01813083          	ld	ra,24(sp)
    80004154:	01013403          	ld	s0,16(sp)
    80004158:	00048513          	mv	a0,s1
    8000415c:	00813483          	ld	s1,8(sp)
    80004160:	02010113          	addi	sp,sp,32
    80004164:	00008067          	ret

0000000080004168 <initlock>:
    80004168:	ff010113          	addi	sp,sp,-16
    8000416c:	00813423          	sd	s0,8(sp)
    80004170:	01010413          	addi	s0,sp,16
    80004174:	00813403          	ld	s0,8(sp)
    80004178:	00b53423          	sd	a1,8(a0)
    8000417c:	00052023          	sw	zero,0(a0)
    80004180:	00053823          	sd	zero,16(a0)
    80004184:	01010113          	addi	sp,sp,16
    80004188:	00008067          	ret

000000008000418c <acquire>:
    8000418c:	fe010113          	addi	sp,sp,-32
    80004190:	00813823          	sd	s0,16(sp)
    80004194:	00913423          	sd	s1,8(sp)
    80004198:	00113c23          	sd	ra,24(sp)
    8000419c:	01213023          	sd	s2,0(sp)
    800041a0:	02010413          	addi	s0,sp,32
    800041a4:	00050493          	mv	s1,a0
    800041a8:	10002973          	csrr	s2,sstatus
    800041ac:	100027f3          	csrr	a5,sstatus
    800041b0:	ffd7f793          	andi	a5,a5,-3
    800041b4:	10079073          	csrw	sstatus,a5
    800041b8:	fffff097          	auipc	ra,0xfffff
    800041bc:	8ec080e7          	jalr	-1812(ra) # 80002aa4 <mycpu>
    800041c0:	07852783          	lw	a5,120(a0)
    800041c4:	06078e63          	beqz	a5,80004240 <acquire+0xb4>
    800041c8:	fffff097          	auipc	ra,0xfffff
    800041cc:	8dc080e7          	jalr	-1828(ra) # 80002aa4 <mycpu>
    800041d0:	07852783          	lw	a5,120(a0)
    800041d4:	0004a703          	lw	a4,0(s1)
    800041d8:	0017879b          	addiw	a5,a5,1
    800041dc:	06f52c23          	sw	a5,120(a0)
    800041e0:	04071063          	bnez	a4,80004220 <acquire+0x94>
    800041e4:	00100713          	li	a4,1
    800041e8:	00070793          	mv	a5,a4
    800041ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800041f0:	0007879b          	sext.w	a5,a5
    800041f4:	fe079ae3          	bnez	a5,800041e8 <acquire+0x5c>
    800041f8:	0ff0000f          	fence
    800041fc:	fffff097          	auipc	ra,0xfffff
    80004200:	8a8080e7          	jalr	-1880(ra) # 80002aa4 <mycpu>
    80004204:	01813083          	ld	ra,24(sp)
    80004208:	01013403          	ld	s0,16(sp)
    8000420c:	00a4b823          	sd	a0,16(s1)
    80004210:	00013903          	ld	s2,0(sp)
    80004214:	00813483          	ld	s1,8(sp)
    80004218:	02010113          	addi	sp,sp,32
    8000421c:	00008067          	ret
    80004220:	0104b903          	ld	s2,16(s1)
    80004224:	fffff097          	auipc	ra,0xfffff
    80004228:	880080e7          	jalr	-1920(ra) # 80002aa4 <mycpu>
    8000422c:	faa91ce3          	bne	s2,a0,800041e4 <acquire+0x58>
    80004230:	00001517          	auipc	a0,0x1
    80004234:	0b850513          	addi	a0,a0,184 # 800052e8 <digits+0x20>
    80004238:	fffff097          	auipc	ra,0xfffff
    8000423c:	224080e7          	jalr	548(ra) # 8000345c <panic>
    80004240:	00195913          	srli	s2,s2,0x1
    80004244:	fffff097          	auipc	ra,0xfffff
    80004248:	860080e7          	jalr	-1952(ra) # 80002aa4 <mycpu>
    8000424c:	00197913          	andi	s2,s2,1
    80004250:	07252e23          	sw	s2,124(a0)
    80004254:	f75ff06f          	j	800041c8 <acquire+0x3c>

0000000080004258 <release>:
    80004258:	fe010113          	addi	sp,sp,-32
    8000425c:	00813823          	sd	s0,16(sp)
    80004260:	00113c23          	sd	ra,24(sp)
    80004264:	00913423          	sd	s1,8(sp)
    80004268:	01213023          	sd	s2,0(sp)
    8000426c:	02010413          	addi	s0,sp,32
    80004270:	00052783          	lw	a5,0(a0)
    80004274:	00079a63          	bnez	a5,80004288 <release+0x30>
    80004278:	00001517          	auipc	a0,0x1
    8000427c:	07850513          	addi	a0,a0,120 # 800052f0 <digits+0x28>
    80004280:	fffff097          	auipc	ra,0xfffff
    80004284:	1dc080e7          	jalr	476(ra) # 8000345c <panic>
    80004288:	01053903          	ld	s2,16(a0)
    8000428c:	00050493          	mv	s1,a0
    80004290:	fffff097          	auipc	ra,0xfffff
    80004294:	814080e7          	jalr	-2028(ra) # 80002aa4 <mycpu>
    80004298:	fea910e3          	bne	s2,a0,80004278 <release+0x20>
    8000429c:	0004b823          	sd	zero,16(s1)
    800042a0:	0ff0000f          	fence
    800042a4:	0f50000f          	fence	iorw,ow
    800042a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800042ac:	ffffe097          	auipc	ra,0xffffe
    800042b0:	7f8080e7          	jalr	2040(ra) # 80002aa4 <mycpu>
    800042b4:	100027f3          	csrr	a5,sstatus
    800042b8:	0027f793          	andi	a5,a5,2
    800042bc:	04079a63          	bnez	a5,80004310 <release+0xb8>
    800042c0:	07852783          	lw	a5,120(a0)
    800042c4:	02f05e63          	blez	a5,80004300 <release+0xa8>
    800042c8:	fff7871b          	addiw	a4,a5,-1
    800042cc:	06e52c23          	sw	a4,120(a0)
    800042d0:	00071c63          	bnez	a4,800042e8 <release+0x90>
    800042d4:	07c52783          	lw	a5,124(a0)
    800042d8:	00078863          	beqz	a5,800042e8 <release+0x90>
    800042dc:	100027f3          	csrr	a5,sstatus
    800042e0:	0027e793          	ori	a5,a5,2
    800042e4:	10079073          	csrw	sstatus,a5
    800042e8:	01813083          	ld	ra,24(sp)
    800042ec:	01013403          	ld	s0,16(sp)
    800042f0:	00813483          	ld	s1,8(sp)
    800042f4:	00013903          	ld	s2,0(sp)
    800042f8:	02010113          	addi	sp,sp,32
    800042fc:	00008067          	ret
    80004300:	00001517          	auipc	a0,0x1
    80004304:	01050513          	addi	a0,a0,16 # 80005310 <digits+0x48>
    80004308:	fffff097          	auipc	ra,0xfffff
    8000430c:	154080e7          	jalr	340(ra) # 8000345c <panic>
    80004310:	00001517          	auipc	a0,0x1
    80004314:	fe850513          	addi	a0,a0,-24 # 800052f8 <digits+0x30>
    80004318:	fffff097          	auipc	ra,0xfffff
    8000431c:	144080e7          	jalr	324(ra) # 8000345c <panic>

0000000080004320 <holding>:
    80004320:	00052783          	lw	a5,0(a0)
    80004324:	00079663          	bnez	a5,80004330 <holding+0x10>
    80004328:	00000513          	li	a0,0
    8000432c:	00008067          	ret
    80004330:	fe010113          	addi	sp,sp,-32
    80004334:	00813823          	sd	s0,16(sp)
    80004338:	00913423          	sd	s1,8(sp)
    8000433c:	00113c23          	sd	ra,24(sp)
    80004340:	02010413          	addi	s0,sp,32
    80004344:	01053483          	ld	s1,16(a0)
    80004348:	ffffe097          	auipc	ra,0xffffe
    8000434c:	75c080e7          	jalr	1884(ra) # 80002aa4 <mycpu>
    80004350:	01813083          	ld	ra,24(sp)
    80004354:	01013403          	ld	s0,16(sp)
    80004358:	40a48533          	sub	a0,s1,a0
    8000435c:	00153513          	seqz	a0,a0
    80004360:	00813483          	ld	s1,8(sp)
    80004364:	02010113          	addi	sp,sp,32
    80004368:	00008067          	ret

000000008000436c <push_off>:
    8000436c:	fe010113          	addi	sp,sp,-32
    80004370:	00813823          	sd	s0,16(sp)
    80004374:	00113c23          	sd	ra,24(sp)
    80004378:	00913423          	sd	s1,8(sp)
    8000437c:	02010413          	addi	s0,sp,32
    80004380:	100024f3          	csrr	s1,sstatus
    80004384:	100027f3          	csrr	a5,sstatus
    80004388:	ffd7f793          	andi	a5,a5,-3
    8000438c:	10079073          	csrw	sstatus,a5
    80004390:	ffffe097          	auipc	ra,0xffffe
    80004394:	714080e7          	jalr	1812(ra) # 80002aa4 <mycpu>
    80004398:	07852783          	lw	a5,120(a0)
    8000439c:	02078663          	beqz	a5,800043c8 <push_off+0x5c>
    800043a0:	ffffe097          	auipc	ra,0xffffe
    800043a4:	704080e7          	jalr	1796(ra) # 80002aa4 <mycpu>
    800043a8:	07852783          	lw	a5,120(a0)
    800043ac:	01813083          	ld	ra,24(sp)
    800043b0:	01013403          	ld	s0,16(sp)
    800043b4:	0017879b          	addiw	a5,a5,1
    800043b8:	06f52c23          	sw	a5,120(a0)
    800043bc:	00813483          	ld	s1,8(sp)
    800043c0:	02010113          	addi	sp,sp,32
    800043c4:	00008067          	ret
    800043c8:	0014d493          	srli	s1,s1,0x1
    800043cc:	ffffe097          	auipc	ra,0xffffe
    800043d0:	6d8080e7          	jalr	1752(ra) # 80002aa4 <mycpu>
    800043d4:	0014f493          	andi	s1,s1,1
    800043d8:	06952e23          	sw	s1,124(a0)
    800043dc:	fc5ff06f          	j	800043a0 <push_off+0x34>

00000000800043e0 <pop_off>:
    800043e0:	ff010113          	addi	sp,sp,-16
    800043e4:	00813023          	sd	s0,0(sp)
    800043e8:	00113423          	sd	ra,8(sp)
    800043ec:	01010413          	addi	s0,sp,16
    800043f0:	ffffe097          	auipc	ra,0xffffe
    800043f4:	6b4080e7          	jalr	1716(ra) # 80002aa4 <mycpu>
    800043f8:	100027f3          	csrr	a5,sstatus
    800043fc:	0027f793          	andi	a5,a5,2
    80004400:	04079663          	bnez	a5,8000444c <pop_off+0x6c>
    80004404:	07852783          	lw	a5,120(a0)
    80004408:	02f05a63          	blez	a5,8000443c <pop_off+0x5c>
    8000440c:	fff7871b          	addiw	a4,a5,-1
    80004410:	06e52c23          	sw	a4,120(a0)
    80004414:	00071c63          	bnez	a4,8000442c <pop_off+0x4c>
    80004418:	07c52783          	lw	a5,124(a0)
    8000441c:	00078863          	beqz	a5,8000442c <pop_off+0x4c>
    80004420:	100027f3          	csrr	a5,sstatus
    80004424:	0027e793          	ori	a5,a5,2
    80004428:	10079073          	csrw	sstatus,a5
    8000442c:	00813083          	ld	ra,8(sp)
    80004430:	00013403          	ld	s0,0(sp)
    80004434:	01010113          	addi	sp,sp,16
    80004438:	00008067          	ret
    8000443c:	00001517          	auipc	a0,0x1
    80004440:	ed450513          	addi	a0,a0,-300 # 80005310 <digits+0x48>
    80004444:	fffff097          	auipc	ra,0xfffff
    80004448:	018080e7          	jalr	24(ra) # 8000345c <panic>
    8000444c:	00001517          	auipc	a0,0x1
    80004450:	eac50513          	addi	a0,a0,-340 # 800052f8 <digits+0x30>
    80004454:	fffff097          	auipc	ra,0xfffff
    80004458:	008080e7          	jalr	8(ra) # 8000345c <panic>

000000008000445c <push_on>:
    8000445c:	fe010113          	addi	sp,sp,-32
    80004460:	00813823          	sd	s0,16(sp)
    80004464:	00113c23          	sd	ra,24(sp)
    80004468:	00913423          	sd	s1,8(sp)
    8000446c:	02010413          	addi	s0,sp,32
    80004470:	100024f3          	csrr	s1,sstatus
    80004474:	100027f3          	csrr	a5,sstatus
    80004478:	0027e793          	ori	a5,a5,2
    8000447c:	10079073          	csrw	sstatus,a5
    80004480:	ffffe097          	auipc	ra,0xffffe
    80004484:	624080e7          	jalr	1572(ra) # 80002aa4 <mycpu>
    80004488:	07852783          	lw	a5,120(a0)
    8000448c:	02078663          	beqz	a5,800044b8 <push_on+0x5c>
    80004490:	ffffe097          	auipc	ra,0xffffe
    80004494:	614080e7          	jalr	1556(ra) # 80002aa4 <mycpu>
    80004498:	07852783          	lw	a5,120(a0)
    8000449c:	01813083          	ld	ra,24(sp)
    800044a0:	01013403          	ld	s0,16(sp)
    800044a4:	0017879b          	addiw	a5,a5,1
    800044a8:	06f52c23          	sw	a5,120(a0)
    800044ac:	00813483          	ld	s1,8(sp)
    800044b0:	02010113          	addi	sp,sp,32
    800044b4:	00008067          	ret
    800044b8:	0014d493          	srli	s1,s1,0x1
    800044bc:	ffffe097          	auipc	ra,0xffffe
    800044c0:	5e8080e7          	jalr	1512(ra) # 80002aa4 <mycpu>
    800044c4:	0014f493          	andi	s1,s1,1
    800044c8:	06952e23          	sw	s1,124(a0)
    800044cc:	fc5ff06f          	j	80004490 <push_on+0x34>

00000000800044d0 <pop_on>:
    800044d0:	ff010113          	addi	sp,sp,-16
    800044d4:	00813023          	sd	s0,0(sp)
    800044d8:	00113423          	sd	ra,8(sp)
    800044dc:	01010413          	addi	s0,sp,16
    800044e0:	ffffe097          	auipc	ra,0xffffe
    800044e4:	5c4080e7          	jalr	1476(ra) # 80002aa4 <mycpu>
    800044e8:	100027f3          	csrr	a5,sstatus
    800044ec:	0027f793          	andi	a5,a5,2
    800044f0:	04078463          	beqz	a5,80004538 <pop_on+0x68>
    800044f4:	07852783          	lw	a5,120(a0)
    800044f8:	02f05863          	blez	a5,80004528 <pop_on+0x58>
    800044fc:	fff7879b          	addiw	a5,a5,-1
    80004500:	06f52c23          	sw	a5,120(a0)
    80004504:	07853783          	ld	a5,120(a0)
    80004508:	00079863          	bnez	a5,80004518 <pop_on+0x48>
    8000450c:	100027f3          	csrr	a5,sstatus
    80004510:	ffd7f793          	andi	a5,a5,-3
    80004514:	10079073          	csrw	sstatus,a5
    80004518:	00813083          	ld	ra,8(sp)
    8000451c:	00013403          	ld	s0,0(sp)
    80004520:	01010113          	addi	sp,sp,16
    80004524:	00008067          	ret
    80004528:	00001517          	auipc	a0,0x1
    8000452c:	e1050513          	addi	a0,a0,-496 # 80005338 <digits+0x70>
    80004530:	fffff097          	auipc	ra,0xfffff
    80004534:	f2c080e7          	jalr	-212(ra) # 8000345c <panic>
    80004538:	00001517          	auipc	a0,0x1
    8000453c:	de050513          	addi	a0,a0,-544 # 80005318 <digits+0x50>
    80004540:	fffff097          	auipc	ra,0xfffff
    80004544:	f1c080e7          	jalr	-228(ra) # 8000345c <panic>

0000000080004548 <__memset>:
    80004548:	ff010113          	addi	sp,sp,-16
    8000454c:	00813423          	sd	s0,8(sp)
    80004550:	01010413          	addi	s0,sp,16
    80004554:	1a060e63          	beqz	a2,80004710 <__memset+0x1c8>
    80004558:	40a007b3          	neg	a5,a0
    8000455c:	0077f793          	andi	a5,a5,7
    80004560:	00778693          	addi	a3,a5,7
    80004564:	00b00813          	li	a6,11
    80004568:	0ff5f593          	andi	a1,a1,255
    8000456c:	fff6071b          	addiw	a4,a2,-1
    80004570:	1b06e663          	bltu	a3,a6,8000471c <__memset+0x1d4>
    80004574:	1cd76463          	bltu	a4,a3,8000473c <__memset+0x1f4>
    80004578:	1a078e63          	beqz	a5,80004734 <__memset+0x1ec>
    8000457c:	00b50023          	sb	a1,0(a0)
    80004580:	00100713          	li	a4,1
    80004584:	1ae78463          	beq	a5,a4,8000472c <__memset+0x1e4>
    80004588:	00b500a3          	sb	a1,1(a0)
    8000458c:	00200713          	li	a4,2
    80004590:	1ae78a63          	beq	a5,a4,80004744 <__memset+0x1fc>
    80004594:	00b50123          	sb	a1,2(a0)
    80004598:	00300713          	li	a4,3
    8000459c:	18e78463          	beq	a5,a4,80004724 <__memset+0x1dc>
    800045a0:	00b501a3          	sb	a1,3(a0)
    800045a4:	00400713          	li	a4,4
    800045a8:	1ae78263          	beq	a5,a4,8000474c <__memset+0x204>
    800045ac:	00b50223          	sb	a1,4(a0)
    800045b0:	00500713          	li	a4,5
    800045b4:	1ae78063          	beq	a5,a4,80004754 <__memset+0x20c>
    800045b8:	00b502a3          	sb	a1,5(a0)
    800045bc:	00700713          	li	a4,7
    800045c0:	18e79e63          	bne	a5,a4,8000475c <__memset+0x214>
    800045c4:	00b50323          	sb	a1,6(a0)
    800045c8:	00700e93          	li	t4,7
    800045cc:	00859713          	slli	a4,a1,0x8
    800045d0:	00e5e733          	or	a4,a1,a4
    800045d4:	01059e13          	slli	t3,a1,0x10
    800045d8:	01c76e33          	or	t3,a4,t3
    800045dc:	01859313          	slli	t1,a1,0x18
    800045e0:	006e6333          	or	t1,t3,t1
    800045e4:	02059893          	slli	a7,a1,0x20
    800045e8:	40f60e3b          	subw	t3,a2,a5
    800045ec:	011368b3          	or	a7,t1,a7
    800045f0:	02859813          	slli	a6,a1,0x28
    800045f4:	0108e833          	or	a6,a7,a6
    800045f8:	03059693          	slli	a3,a1,0x30
    800045fc:	003e589b          	srliw	a7,t3,0x3
    80004600:	00d866b3          	or	a3,a6,a3
    80004604:	03859713          	slli	a4,a1,0x38
    80004608:	00389813          	slli	a6,a7,0x3
    8000460c:	00f507b3          	add	a5,a0,a5
    80004610:	00e6e733          	or	a4,a3,a4
    80004614:	000e089b          	sext.w	a7,t3
    80004618:	00f806b3          	add	a3,a6,a5
    8000461c:	00e7b023          	sd	a4,0(a5)
    80004620:	00878793          	addi	a5,a5,8
    80004624:	fed79ce3          	bne	a5,a3,8000461c <__memset+0xd4>
    80004628:	ff8e7793          	andi	a5,t3,-8
    8000462c:	0007871b          	sext.w	a4,a5
    80004630:	01d787bb          	addw	a5,a5,t4
    80004634:	0ce88e63          	beq	a7,a4,80004710 <__memset+0x1c8>
    80004638:	00f50733          	add	a4,a0,a5
    8000463c:	00b70023          	sb	a1,0(a4)
    80004640:	0017871b          	addiw	a4,a5,1
    80004644:	0cc77663          	bgeu	a4,a2,80004710 <__memset+0x1c8>
    80004648:	00e50733          	add	a4,a0,a4
    8000464c:	00b70023          	sb	a1,0(a4)
    80004650:	0027871b          	addiw	a4,a5,2
    80004654:	0ac77e63          	bgeu	a4,a2,80004710 <__memset+0x1c8>
    80004658:	00e50733          	add	a4,a0,a4
    8000465c:	00b70023          	sb	a1,0(a4)
    80004660:	0037871b          	addiw	a4,a5,3
    80004664:	0ac77663          	bgeu	a4,a2,80004710 <__memset+0x1c8>
    80004668:	00e50733          	add	a4,a0,a4
    8000466c:	00b70023          	sb	a1,0(a4)
    80004670:	0047871b          	addiw	a4,a5,4
    80004674:	08c77e63          	bgeu	a4,a2,80004710 <__memset+0x1c8>
    80004678:	00e50733          	add	a4,a0,a4
    8000467c:	00b70023          	sb	a1,0(a4)
    80004680:	0057871b          	addiw	a4,a5,5
    80004684:	08c77663          	bgeu	a4,a2,80004710 <__memset+0x1c8>
    80004688:	00e50733          	add	a4,a0,a4
    8000468c:	00b70023          	sb	a1,0(a4)
    80004690:	0067871b          	addiw	a4,a5,6
    80004694:	06c77e63          	bgeu	a4,a2,80004710 <__memset+0x1c8>
    80004698:	00e50733          	add	a4,a0,a4
    8000469c:	00b70023          	sb	a1,0(a4)
    800046a0:	0077871b          	addiw	a4,a5,7
    800046a4:	06c77663          	bgeu	a4,a2,80004710 <__memset+0x1c8>
    800046a8:	00e50733          	add	a4,a0,a4
    800046ac:	00b70023          	sb	a1,0(a4)
    800046b0:	0087871b          	addiw	a4,a5,8
    800046b4:	04c77e63          	bgeu	a4,a2,80004710 <__memset+0x1c8>
    800046b8:	00e50733          	add	a4,a0,a4
    800046bc:	00b70023          	sb	a1,0(a4)
    800046c0:	0097871b          	addiw	a4,a5,9
    800046c4:	04c77663          	bgeu	a4,a2,80004710 <__memset+0x1c8>
    800046c8:	00e50733          	add	a4,a0,a4
    800046cc:	00b70023          	sb	a1,0(a4)
    800046d0:	00a7871b          	addiw	a4,a5,10
    800046d4:	02c77e63          	bgeu	a4,a2,80004710 <__memset+0x1c8>
    800046d8:	00e50733          	add	a4,a0,a4
    800046dc:	00b70023          	sb	a1,0(a4)
    800046e0:	00b7871b          	addiw	a4,a5,11
    800046e4:	02c77663          	bgeu	a4,a2,80004710 <__memset+0x1c8>
    800046e8:	00e50733          	add	a4,a0,a4
    800046ec:	00b70023          	sb	a1,0(a4)
    800046f0:	00c7871b          	addiw	a4,a5,12
    800046f4:	00c77e63          	bgeu	a4,a2,80004710 <__memset+0x1c8>
    800046f8:	00e50733          	add	a4,a0,a4
    800046fc:	00b70023          	sb	a1,0(a4)
    80004700:	00d7879b          	addiw	a5,a5,13
    80004704:	00c7f663          	bgeu	a5,a2,80004710 <__memset+0x1c8>
    80004708:	00f507b3          	add	a5,a0,a5
    8000470c:	00b78023          	sb	a1,0(a5)
    80004710:	00813403          	ld	s0,8(sp)
    80004714:	01010113          	addi	sp,sp,16
    80004718:	00008067          	ret
    8000471c:	00b00693          	li	a3,11
    80004720:	e55ff06f          	j	80004574 <__memset+0x2c>
    80004724:	00300e93          	li	t4,3
    80004728:	ea5ff06f          	j	800045cc <__memset+0x84>
    8000472c:	00100e93          	li	t4,1
    80004730:	e9dff06f          	j	800045cc <__memset+0x84>
    80004734:	00000e93          	li	t4,0
    80004738:	e95ff06f          	j	800045cc <__memset+0x84>
    8000473c:	00000793          	li	a5,0
    80004740:	ef9ff06f          	j	80004638 <__memset+0xf0>
    80004744:	00200e93          	li	t4,2
    80004748:	e85ff06f          	j	800045cc <__memset+0x84>
    8000474c:	00400e93          	li	t4,4
    80004750:	e7dff06f          	j	800045cc <__memset+0x84>
    80004754:	00500e93          	li	t4,5
    80004758:	e75ff06f          	j	800045cc <__memset+0x84>
    8000475c:	00600e93          	li	t4,6
    80004760:	e6dff06f          	j	800045cc <__memset+0x84>

0000000080004764 <__memmove>:
    80004764:	ff010113          	addi	sp,sp,-16
    80004768:	00813423          	sd	s0,8(sp)
    8000476c:	01010413          	addi	s0,sp,16
    80004770:	0e060863          	beqz	a2,80004860 <__memmove+0xfc>
    80004774:	fff6069b          	addiw	a3,a2,-1
    80004778:	0006881b          	sext.w	a6,a3
    8000477c:	0ea5e863          	bltu	a1,a0,8000486c <__memmove+0x108>
    80004780:	00758713          	addi	a4,a1,7
    80004784:	00a5e7b3          	or	a5,a1,a0
    80004788:	40a70733          	sub	a4,a4,a0
    8000478c:	0077f793          	andi	a5,a5,7
    80004790:	00f73713          	sltiu	a4,a4,15
    80004794:	00174713          	xori	a4,a4,1
    80004798:	0017b793          	seqz	a5,a5
    8000479c:	00e7f7b3          	and	a5,a5,a4
    800047a0:	10078863          	beqz	a5,800048b0 <__memmove+0x14c>
    800047a4:	00900793          	li	a5,9
    800047a8:	1107f463          	bgeu	a5,a6,800048b0 <__memmove+0x14c>
    800047ac:	0036581b          	srliw	a6,a2,0x3
    800047b0:	fff8081b          	addiw	a6,a6,-1
    800047b4:	02081813          	slli	a6,a6,0x20
    800047b8:	01d85893          	srli	a7,a6,0x1d
    800047bc:	00858813          	addi	a6,a1,8
    800047c0:	00058793          	mv	a5,a1
    800047c4:	00050713          	mv	a4,a0
    800047c8:	01088833          	add	a6,a7,a6
    800047cc:	0007b883          	ld	a7,0(a5)
    800047d0:	00878793          	addi	a5,a5,8
    800047d4:	00870713          	addi	a4,a4,8
    800047d8:	ff173c23          	sd	a7,-8(a4)
    800047dc:	ff0798e3          	bne	a5,a6,800047cc <__memmove+0x68>
    800047e0:	ff867713          	andi	a4,a2,-8
    800047e4:	02071793          	slli	a5,a4,0x20
    800047e8:	0207d793          	srli	a5,a5,0x20
    800047ec:	00f585b3          	add	a1,a1,a5
    800047f0:	40e686bb          	subw	a3,a3,a4
    800047f4:	00f507b3          	add	a5,a0,a5
    800047f8:	06e60463          	beq	a2,a4,80004860 <__memmove+0xfc>
    800047fc:	0005c703          	lbu	a4,0(a1)
    80004800:	00e78023          	sb	a4,0(a5)
    80004804:	04068e63          	beqz	a3,80004860 <__memmove+0xfc>
    80004808:	0015c603          	lbu	a2,1(a1)
    8000480c:	00100713          	li	a4,1
    80004810:	00c780a3          	sb	a2,1(a5)
    80004814:	04e68663          	beq	a3,a4,80004860 <__memmove+0xfc>
    80004818:	0025c603          	lbu	a2,2(a1)
    8000481c:	00200713          	li	a4,2
    80004820:	00c78123          	sb	a2,2(a5)
    80004824:	02e68e63          	beq	a3,a4,80004860 <__memmove+0xfc>
    80004828:	0035c603          	lbu	a2,3(a1)
    8000482c:	00300713          	li	a4,3
    80004830:	00c781a3          	sb	a2,3(a5)
    80004834:	02e68663          	beq	a3,a4,80004860 <__memmove+0xfc>
    80004838:	0045c603          	lbu	a2,4(a1)
    8000483c:	00400713          	li	a4,4
    80004840:	00c78223          	sb	a2,4(a5)
    80004844:	00e68e63          	beq	a3,a4,80004860 <__memmove+0xfc>
    80004848:	0055c603          	lbu	a2,5(a1)
    8000484c:	00500713          	li	a4,5
    80004850:	00c782a3          	sb	a2,5(a5)
    80004854:	00e68663          	beq	a3,a4,80004860 <__memmove+0xfc>
    80004858:	0065c703          	lbu	a4,6(a1)
    8000485c:	00e78323          	sb	a4,6(a5)
    80004860:	00813403          	ld	s0,8(sp)
    80004864:	01010113          	addi	sp,sp,16
    80004868:	00008067          	ret
    8000486c:	02061713          	slli	a4,a2,0x20
    80004870:	02075713          	srli	a4,a4,0x20
    80004874:	00e587b3          	add	a5,a1,a4
    80004878:	f0f574e3          	bgeu	a0,a5,80004780 <__memmove+0x1c>
    8000487c:	02069613          	slli	a2,a3,0x20
    80004880:	02065613          	srli	a2,a2,0x20
    80004884:	fff64613          	not	a2,a2
    80004888:	00e50733          	add	a4,a0,a4
    8000488c:	00c78633          	add	a2,a5,a2
    80004890:	fff7c683          	lbu	a3,-1(a5)
    80004894:	fff78793          	addi	a5,a5,-1
    80004898:	fff70713          	addi	a4,a4,-1
    8000489c:	00d70023          	sb	a3,0(a4)
    800048a0:	fec798e3          	bne	a5,a2,80004890 <__memmove+0x12c>
    800048a4:	00813403          	ld	s0,8(sp)
    800048a8:	01010113          	addi	sp,sp,16
    800048ac:	00008067          	ret
    800048b0:	02069713          	slli	a4,a3,0x20
    800048b4:	02075713          	srli	a4,a4,0x20
    800048b8:	00170713          	addi	a4,a4,1
    800048bc:	00e50733          	add	a4,a0,a4
    800048c0:	00050793          	mv	a5,a0
    800048c4:	0005c683          	lbu	a3,0(a1)
    800048c8:	00178793          	addi	a5,a5,1
    800048cc:	00158593          	addi	a1,a1,1
    800048d0:	fed78fa3          	sb	a3,-1(a5)
    800048d4:	fee798e3          	bne	a5,a4,800048c4 <__memmove+0x160>
    800048d8:	f89ff06f          	j	80004860 <__memmove+0xfc>

00000000800048dc <__mem_free>:
    800048dc:	ff010113          	addi	sp,sp,-16
    800048e0:	00813423          	sd	s0,8(sp)
    800048e4:	01010413          	addi	s0,sp,16
    800048e8:	00001597          	auipc	a1,0x1
    800048ec:	33058593          	addi	a1,a1,816 # 80005c18 <freep>
    800048f0:	0005b783          	ld	a5,0(a1)
    800048f4:	ff050693          	addi	a3,a0,-16
    800048f8:	0007b703          	ld	a4,0(a5)
    800048fc:	00d7fc63          	bgeu	a5,a3,80004914 <__mem_free+0x38>
    80004900:	00e6ee63          	bltu	a3,a4,8000491c <__mem_free+0x40>
    80004904:	00e7fc63          	bgeu	a5,a4,8000491c <__mem_free+0x40>
    80004908:	00070793          	mv	a5,a4
    8000490c:	0007b703          	ld	a4,0(a5)
    80004910:	fed7e8e3          	bltu	a5,a3,80004900 <__mem_free+0x24>
    80004914:	fee7eae3          	bltu	a5,a4,80004908 <__mem_free+0x2c>
    80004918:	fee6f8e3          	bgeu	a3,a4,80004908 <__mem_free+0x2c>
    8000491c:	ff852803          	lw	a6,-8(a0)
    80004920:	02081613          	slli	a2,a6,0x20
    80004924:	01c65613          	srli	a2,a2,0x1c
    80004928:	00c68633          	add	a2,a3,a2
    8000492c:	02c70a63          	beq	a4,a2,80004960 <__mem_free+0x84>
    80004930:	fee53823          	sd	a4,-16(a0)
    80004934:	0087a503          	lw	a0,8(a5)
    80004938:	02051613          	slli	a2,a0,0x20
    8000493c:	01c65613          	srli	a2,a2,0x1c
    80004940:	00c78633          	add	a2,a5,a2
    80004944:	04c68263          	beq	a3,a2,80004988 <__mem_free+0xac>
    80004948:	00813403          	ld	s0,8(sp)
    8000494c:	00d7b023          	sd	a3,0(a5)
    80004950:	00f5b023          	sd	a5,0(a1)
    80004954:	00000513          	li	a0,0
    80004958:	01010113          	addi	sp,sp,16
    8000495c:	00008067          	ret
    80004960:	00872603          	lw	a2,8(a4)
    80004964:	00073703          	ld	a4,0(a4)
    80004968:	0106083b          	addw	a6,a2,a6
    8000496c:	ff052c23          	sw	a6,-8(a0)
    80004970:	fee53823          	sd	a4,-16(a0)
    80004974:	0087a503          	lw	a0,8(a5)
    80004978:	02051613          	slli	a2,a0,0x20
    8000497c:	01c65613          	srli	a2,a2,0x1c
    80004980:	00c78633          	add	a2,a5,a2
    80004984:	fcc692e3          	bne	a3,a2,80004948 <__mem_free+0x6c>
    80004988:	00813403          	ld	s0,8(sp)
    8000498c:	0105053b          	addw	a0,a0,a6
    80004990:	00a7a423          	sw	a0,8(a5)
    80004994:	00e7b023          	sd	a4,0(a5)
    80004998:	00f5b023          	sd	a5,0(a1)
    8000499c:	00000513          	li	a0,0
    800049a0:	01010113          	addi	sp,sp,16
    800049a4:	00008067          	ret

00000000800049a8 <__mem_alloc>:
    800049a8:	fc010113          	addi	sp,sp,-64
    800049ac:	02813823          	sd	s0,48(sp)
    800049b0:	02913423          	sd	s1,40(sp)
    800049b4:	03213023          	sd	s2,32(sp)
    800049b8:	01513423          	sd	s5,8(sp)
    800049bc:	02113c23          	sd	ra,56(sp)
    800049c0:	01313c23          	sd	s3,24(sp)
    800049c4:	01413823          	sd	s4,16(sp)
    800049c8:	01613023          	sd	s6,0(sp)
    800049cc:	04010413          	addi	s0,sp,64
    800049d0:	00001a97          	auipc	s5,0x1
    800049d4:	248a8a93          	addi	s5,s5,584 # 80005c18 <freep>
    800049d8:	00f50913          	addi	s2,a0,15
    800049dc:	000ab683          	ld	a3,0(s5)
    800049e0:	00495913          	srli	s2,s2,0x4
    800049e4:	0019049b          	addiw	s1,s2,1
    800049e8:	00048913          	mv	s2,s1
    800049ec:	0c068c63          	beqz	a3,80004ac4 <__mem_alloc+0x11c>
    800049f0:	0006b503          	ld	a0,0(a3)
    800049f4:	00852703          	lw	a4,8(a0)
    800049f8:	10977063          	bgeu	a4,s1,80004af8 <__mem_alloc+0x150>
    800049fc:	000017b7          	lui	a5,0x1
    80004a00:	0009099b          	sext.w	s3,s2
    80004a04:	0af4e863          	bltu	s1,a5,80004ab4 <__mem_alloc+0x10c>
    80004a08:	02099a13          	slli	s4,s3,0x20
    80004a0c:	01ca5a13          	srli	s4,s4,0x1c
    80004a10:	fff00b13          	li	s6,-1
    80004a14:	0100006f          	j	80004a24 <__mem_alloc+0x7c>
    80004a18:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80004a1c:	00852703          	lw	a4,8(a0)
    80004a20:	04977463          	bgeu	a4,s1,80004a68 <__mem_alloc+0xc0>
    80004a24:	00050793          	mv	a5,a0
    80004a28:	fea698e3          	bne	a3,a0,80004a18 <__mem_alloc+0x70>
    80004a2c:	000a0513          	mv	a0,s4
    80004a30:	00000097          	auipc	ra,0x0
    80004a34:	1f0080e7          	jalr	496(ra) # 80004c20 <kvmincrease>
    80004a38:	00050793          	mv	a5,a0
    80004a3c:	01050513          	addi	a0,a0,16
    80004a40:	07678e63          	beq	a5,s6,80004abc <__mem_alloc+0x114>
    80004a44:	0137a423          	sw	s3,8(a5)
    80004a48:	00000097          	auipc	ra,0x0
    80004a4c:	e94080e7          	jalr	-364(ra) # 800048dc <__mem_free>
    80004a50:	000ab783          	ld	a5,0(s5)
    80004a54:	06078463          	beqz	a5,80004abc <__mem_alloc+0x114>
    80004a58:	0007b503          	ld	a0,0(a5)
    80004a5c:	00078693          	mv	a3,a5
    80004a60:	00852703          	lw	a4,8(a0)
    80004a64:	fc9760e3          	bltu	a4,s1,80004a24 <__mem_alloc+0x7c>
    80004a68:	08e48263          	beq	s1,a4,80004aec <__mem_alloc+0x144>
    80004a6c:	4127073b          	subw	a4,a4,s2
    80004a70:	02071693          	slli	a3,a4,0x20
    80004a74:	01c6d693          	srli	a3,a3,0x1c
    80004a78:	00e52423          	sw	a4,8(a0)
    80004a7c:	00d50533          	add	a0,a0,a3
    80004a80:	01252423          	sw	s2,8(a0)
    80004a84:	00fab023          	sd	a5,0(s5)
    80004a88:	01050513          	addi	a0,a0,16
    80004a8c:	03813083          	ld	ra,56(sp)
    80004a90:	03013403          	ld	s0,48(sp)
    80004a94:	02813483          	ld	s1,40(sp)
    80004a98:	02013903          	ld	s2,32(sp)
    80004a9c:	01813983          	ld	s3,24(sp)
    80004aa0:	01013a03          	ld	s4,16(sp)
    80004aa4:	00813a83          	ld	s5,8(sp)
    80004aa8:	00013b03          	ld	s6,0(sp)
    80004aac:	04010113          	addi	sp,sp,64
    80004ab0:	00008067          	ret
    80004ab4:	000019b7          	lui	s3,0x1
    80004ab8:	f51ff06f          	j	80004a08 <__mem_alloc+0x60>
    80004abc:	00000513          	li	a0,0
    80004ac0:	fcdff06f          	j	80004a8c <__mem_alloc+0xe4>
    80004ac4:	00002797          	auipc	a5,0x2
    80004ac8:	41c78793          	addi	a5,a5,1052 # 80006ee0 <base>
    80004acc:	00078513          	mv	a0,a5
    80004ad0:	00fab023          	sd	a5,0(s5)
    80004ad4:	00f7b023          	sd	a5,0(a5)
    80004ad8:	00000713          	li	a4,0
    80004adc:	00002797          	auipc	a5,0x2
    80004ae0:	4007a623          	sw	zero,1036(a5) # 80006ee8 <base+0x8>
    80004ae4:	00050693          	mv	a3,a0
    80004ae8:	f11ff06f          	j	800049f8 <__mem_alloc+0x50>
    80004aec:	00053703          	ld	a4,0(a0)
    80004af0:	00e7b023          	sd	a4,0(a5)
    80004af4:	f91ff06f          	j	80004a84 <__mem_alloc+0xdc>
    80004af8:	00068793          	mv	a5,a3
    80004afc:	f6dff06f          	j	80004a68 <__mem_alloc+0xc0>

0000000080004b00 <__putc>:
    80004b00:	fe010113          	addi	sp,sp,-32
    80004b04:	00813823          	sd	s0,16(sp)
    80004b08:	00113c23          	sd	ra,24(sp)
    80004b0c:	02010413          	addi	s0,sp,32
    80004b10:	00050793          	mv	a5,a0
    80004b14:	fef40593          	addi	a1,s0,-17
    80004b18:	00100613          	li	a2,1
    80004b1c:	00000513          	li	a0,0
    80004b20:	fef407a3          	sb	a5,-17(s0)
    80004b24:	fffff097          	auipc	ra,0xfffff
    80004b28:	918080e7          	jalr	-1768(ra) # 8000343c <console_write>
    80004b2c:	01813083          	ld	ra,24(sp)
    80004b30:	01013403          	ld	s0,16(sp)
    80004b34:	02010113          	addi	sp,sp,32
    80004b38:	00008067          	ret

0000000080004b3c <__getc>:
    80004b3c:	fe010113          	addi	sp,sp,-32
    80004b40:	00813823          	sd	s0,16(sp)
    80004b44:	00113c23          	sd	ra,24(sp)
    80004b48:	02010413          	addi	s0,sp,32
    80004b4c:	fe840593          	addi	a1,s0,-24
    80004b50:	00100613          	li	a2,1
    80004b54:	00000513          	li	a0,0
    80004b58:	fffff097          	auipc	ra,0xfffff
    80004b5c:	8c4080e7          	jalr	-1852(ra) # 8000341c <console_read>
    80004b60:	fe844503          	lbu	a0,-24(s0)
    80004b64:	01813083          	ld	ra,24(sp)
    80004b68:	01013403          	ld	s0,16(sp)
    80004b6c:	02010113          	addi	sp,sp,32
    80004b70:	00008067          	ret

0000000080004b74 <console_handler>:
    80004b74:	fe010113          	addi	sp,sp,-32
    80004b78:	00813823          	sd	s0,16(sp)
    80004b7c:	00113c23          	sd	ra,24(sp)
    80004b80:	00913423          	sd	s1,8(sp)
    80004b84:	02010413          	addi	s0,sp,32
    80004b88:	14202773          	csrr	a4,scause
    80004b8c:	100027f3          	csrr	a5,sstatus
    80004b90:	0027f793          	andi	a5,a5,2
    80004b94:	06079e63          	bnez	a5,80004c10 <console_handler+0x9c>
    80004b98:	00074c63          	bltz	a4,80004bb0 <console_handler+0x3c>
    80004b9c:	01813083          	ld	ra,24(sp)
    80004ba0:	01013403          	ld	s0,16(sp)
    80004ba4:	00813483          	ld	s1,8(sp)
    80004ba8:	02010113          	addi	sp,sp,32
    80004bac:	00008067          	ret
    80004bb0:	0ff77713          	andi	a4,a4,255
    80004bb4:	00900793          	li	a5,9
    80004bb8:	fef712e3          	bne	a4,a5,80004b9c <console_handler+0x28>
    80004bbc:	ffffe097          	auipc	ra,0xffffe
    80004bc0:	4b8080e7          	jalr	1208(ra) # 80003074 <plic_claim>
    80004bc4:	00a00793          	li	a5,10
    80004bc8:	00050493          	mv	s1,a0
    80004bcc:	02f50c63          	beq	a0,a5,80004c04 <console_handler+0x90>
    80004bd0:	fc0506e3          	beqz	a0,80004b9c <console_handler+0x28>
    80004bd4:	00050593          	mv	a1,a0
    80004bd8:	00000517          	auipc	a0,0x0
    80004bdc:	66850513          	addi	a0,a0,1640 # 80005240 <_ZZ12printIntegermE6digits+0xe0>
    80004be0:	fffff097          	auipc	ra,0xfffff
    80004be4:	8d8080e7          	jalr	-1832(ra) # 800034b8 <__printf>
    80004be8:	01013403          	ld	s0,16(sp)
    80004bec:	01813083          	ld	ra,24(sp)
    80004bf0:	00048513          	mv	a0,s1
    80004bf4:	00813483          	ld	s1,8(sp)
    80004bf8:	02010113          	addi	sp,sp,32
    80004bfc:	ffffe317          	auipc	t1,0xffffe
    80004c00:	4b030067          	jr	1200(t1) # 800030ac <plic_complete>
    80004c04:	fffff097          	auipc	ra,0xfffff
    80004c08:	1bc080e7          	jalr	444(ra) # 80003dc0 <uartintr>
    80004c0c:	fddff06f          	j	80004be8 <console_handler+0x74>
    80004c10:	00000517          	auipc	a0,0x0
    80004c14:	73050513          	addi	a0,a0,1840 # 80005340 <digits+0x78>
    80004c18:	fffff097          	auipc	ra,0xfffff
    80004c1c:	844080e7          	jalr	-1980(ra) # 8000345c <panic>

0000000080004c20 <kvmincrease>:
    80004c20:	fe010113          	addi	sp,sp,-32
    80004c24:	01213023          	sd	s2,0(sp)
    80004c28:	00001937          	lui	s2,0x1
    80004c2c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004c30:	00813823          	sd	s0,16(sp)
    80004c34:	00113c23          	sd	ra,24(sp)
    80004c38:	00913423          	sd	s1,8(sp)
    80004c3c:	02010413          	addi	s0,sp,32
    80004c40:	01250933          	add	s2,a0,s2
    80004c44:	00c95913          	srli	s2,s2,0xc
    80004c48:	02090863          	beqz	s2,80004c78 <kvmincrease+0x58>
    80004c4c:	00000493          	li	s1,0
    80004c50:	00148493          	addi	s1,s1,1
    80004c54:	fffff097          	auipc	ra,0xfffff
    80004c58:	4bc080e7          	jalr	1212(ra) # 80004110 <kalloc>
    80004c5c:	fe991ae3          	bne	s2,s1,80004c50 <kvmincrease+0x30>
    80004c60:	01813083          	ld	ra,24(sp)
    80004c64:	01013403          	ld	s0,16(sp)
    80004c68:	00813483          	ld	s1,8(sp)
    80004c6c:	00013903          	ld	s2,0(sp)
    80004c70:	02010113          	addi	sp,sp,32
    80004c74:	00008067          	ret
    80004c78:	01813083          	ld	ra,24(sp)
    80004c7c:	01013403          	ld	s0,16(sp)
    80004c80:	00813483          	ld	s1,8(sp)
    80004c84:	00013903          	ld	s2,0(sp)
    80004c88:	00000513          	li	a0,0
    80004c8c:	02010113          	addi	sp,sp,32
    80004c90:	00008067          	ret
	...
