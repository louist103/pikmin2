.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x8
.global lbl_80495B48
lbl_80495B48:
	.4byte 0x65667832
	.4byte 0x64426173
	.4byte 0x652E6370
	.4byte 0x70000000
.global lbl_80495B58
lbl_80495B58:
	.asciz "P2Assert"
	.skip 3

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 0x8
.global __vt__Q25efx2d12TChasePosDir
__vt__Q25efx2d12TChasePosDir:
	.4byte 0
	.4byte 0
	.4byte create__Q25efx2d12TChasePosDirFPQ25efx2d3Arg
	.4byte kill__Q25efx2d8TForeverFv
	.4byte fade__Q25efx2d8TForeverFv
	.4byte setGroup__Q25efx2d5TBaseFUc
	.4byte 0
	.4byte 0
	.4byte "@8@__dt__Q25efx2d12TChasePosDirFv"
	.4byte "@8@execute__Q25efx2d12TChasePosDirFP14JPABaseEmitter"
	.4byte executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter
	.4byte draw__18JPAEmitterCallBackFP14JPABaseEmitter
	.4byte drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter
	.4byte __dt__Q25efx2d12TChasePosDirFv
	.4byte execute__Q25efx2d12TChasePosDirFP14JPABaseEmitter
.global __vt__Q25efx2d9TChasePos
__vt__Q25efx2d9TChasePos:
	.4byte 0
	.4byte 0
	.4byte create__Q25efx2d9TChasePosFPQ25efx2d3Arg
	.4byte kill__Q25efx2d8TForeverFv
	.4byte fade__Q25efx2d8TForeverFv
	.4byte setGroup__Q25efx2d5TBaseFUc
	.4byte 0
	.4byte 0
	.4byte "@8@__dt__Q25efx2d9TChasePosFv"
	.4byte "@8@execute__Q25efx2d9TChasePosFP14JPABaseEmitter"
	.4byte executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter
	.4byte draw__18JPAEmitterCallBackFP14JPABaseEmitter
	.4byte drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter
	.4byte __dt__Q25efx2d9TChasePosFv
	.4byte execute__Q25efx2d9TChasePosFP14JPABaseEmitter
.global __vt__Q25efx2d9TForeverN
__vt__Q25efx2d9TForeverN:
	.4byte 0
	.4byte 0
	.4byte create__Q25efx2d9TForeverNFPQ25efx2d3Arg
	.4byte kill__Q25efx2d9TForeverNFv
	.4byte fade__Q25efx2d9TForeverNFv
	.4byte setGroup__Q25efx2d9TForeverNFUc
.global __vt__Q25efx2d8TForever
__vt__Q25efx2d8TForever:
	.4byte 0
	.4byte 0
	.4byte create__Q25efx2d8TForeverFPQ25efx2d3Arg
	.4byte kill__Q25efx2d8TForeverFv
	.4byte fade__Q25efx2d8TForeverFv
	.4byte setGroup__Q25efx2d5TBaseFUc
	.4byte 0
	.4byte 0
	.4byte "@8@__dt__Q25efx2d8TForeverFv"
	.4byte execute__18JPAEmitterCallBackFP14JPABaseEmitter
	.4byte executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter
	.4byte draw__18JPAEmitterCallBackFP14JPABaseEmitter
	.4byte drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter
	.4byte __dt__Q25efx2d8TForeverFv
.global __vt__Q25efx2d8TSimple3
__vt__Q25efx2d8TSimple3:
	.4byte 0
	.4byte 0
	.4byte create__Q25efx2d8TSimple3FPQ25efx2d3Arg
	.4byte kill__Q25efx2d8TSimple3Fv
	.4byte fade__Q25efx2d8TSimple3Fv
	.4byte setGroup__Q25efx2d5TBaseFUc
.global __vt__Q25efx2d8TSimple2
__vt__Q25efx2d8TSimple2:
	.4byte 0
	.4byte 0
	.4byte create__Q25efx2d8TSimple2FPQ25efx2d3Arg
	.4byte kill__Q25efx2d8TSimple2Fv
	.4byte fade__Q25efx2d8TSimple2Fv
	.4byte setGroup__Q25efx2d5TBaseFUc
.global __vt__Q25efx2d8TSimple1
__vt__Q25efx2d8TSimple1:
	.4byte 0
	.4byte 0
	.4byte create__Q25efx2d8TSimple1FPQ25efx2d3Arg
	.4byte kill__Q25efx2d8TSimple1Fv
	.4byte fade__Q25efx2d8TSimple1Fv
	.4byte setGroup__Q25efx2d5TBaseFUc

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global create__Q25efx2d8TSimple1FPQ25efx2d3Arg
create__Q25efx2d8TSimple1FPQ25efx2d3Arg:
/* 803B9830 003B6770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B9834 003B6774  7C 08 02 A6 */	mflr r0
/* 803B9838 003B6778  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B983C 003B677C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B9840 003B6780  7C 9F 23 79 */	or. r31, r4, r4
/* 803B9844 003B6784  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B9848 003B6788  7C 7E 1B 78 */	mr r30, r3
/* 803B984C 003B678C  40 82 00 20 */	bne lbl_803B986C
/* 803B9850 003B6790  3C 60 80 49 */	lis r3, lbl_80495B48@ha
/* 803B9854 003B6794  3C A0 80 49 */	lis r5, lbl_80495B58@ha
/* 803B9858 003B6798  38 63 5B 48 */	addi r3, r3, lbl_80495B48@l
/* 803B985C 003B679C  38 80 00 0A */	li r4, 0xa
/* 803B9860 003B67A0  38 A5 5B 58 */	addi r5, r5, lbl_80495B58@l
/* 803B9864 003B67A4  4C C6 31 82 */	crclr 6
/* 803B9868 003B67A8  4B C7 0D D9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_803B986C:
/* 803B986C 003B67AC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 803B9870 003B67B0  38 A1 00 08 */	addi r5, r1, 8
/* 803B9874 003B67B4  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 803B9878 003B67B8  D0 01 00 08 */	stfs f0, 8(r1)
/* 803B987C 003B67BC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 803B9880 003B67C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 803B9884 003B67C4  A0 9E 00 08 */	lhz r4, 8(r30)
/* 803B9888 003B67C8  88 DE 00 05 */	lbz r6, 5(r30)
/* 803B988C 003B67CC  88 FE 00 04 */	lbz r7, 4(r30)
/* 803B9890 003B67D0  4B FF FE 8D */	bl "create__14TParticle2dMgrFUsR10Vector2<f>UcUc"
/* 803B9894 003B67D4  90 7E 00 0C */	stw r3, 0xc(r30)
/* 803B9898 003B67D8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 803B989C 003B67DC  28 00 00 00 */	cmplwi r0, 0
/* 803B98A0 003B67E0  40 82 00 0C */	bne lbl_803B98AC
/* 803B98A4 003B67E4  38 60 00 00 */	li r3, 0
/* 803B98A8 003B67E8  48 00 00 08 */	b lbl_803B98B0
lbl_803B98AC:
/* 803B98AC 003B67EC  38 60 00 01 */	li r3, 1
lbl_803B98B0:
/* 803B98B0 003B67F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B98B4 003B67F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B98B8 003B67F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B98BC 003B67FC  7C 08 03 A6 */	mtlr r0
/* 803B98C0 003B6800  38 21 00 20 */	addi r1, r1, 0x20
/* 803B98C4 003B6804  4E 80 00 20 */	blr 

.global create__Q25efx2d8TSimple2FPQ25efx2d3Arg
create__Q25efx2d8TSimple2FPQ25efx2d3Arg:
/* 803B98C8 003B6808  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B98CC 003B680C  7C 08 02 A6 */	mflr r0
/* 803B98D0 003B6810  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B98D4 003B6814  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 803B98D8 003B6818  7C 9C 23 79 */	or. r28, r4, r4
/* 803B98DC 003B681C  7C 7B 1B 78 */	mr r27, r3
/* 803B98E0 003B6820  40 82 00 20 */	bne lbl_803B9900
/* 803B98E4 003B6824  3C 60 80 49 */	lis r3, lbl_80495B48@ha
/* 803B98E8 003B6828  3C A0 80 49 */	lis r5, lbl_80495B58@ha
/* 803B98EC 003B682C  38 63 5B 48 */	addi r3, r3, lbl_80495B48@l
/* 803B98F0 003B6830  38 80 00 19 */	li r4, 0x19
/* 803B98F4 003B6834  38 A5 5B 58 */	addi r5, r5, lbl_80495B58@l
/* 803B98F8 003B6838  4C C6 31 82 */	crclr 6
/* 803B98FC 003B683C  4B C7 0D 45 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_803B9900:
/* 803B9900 003B6840  C0 1C 00 00 */	lfs f0, 0(r28)
/* 803B9904 003B6844  7F 7F DB 78 */	mr r31, r27
/* 803B9908 003B6848  7F 7E DB 78 */	mr r30, r27
/* 803B990C 003B684C  3B A0 00 00 */	li r29, 0
/* 803B9910 003B6850  D0 01 00 08 */	stfs f0, 8(r1)
/* 803B9914 003B6854  C0 1C 00 04 */	lfs f0, 4(r28)
/* 803B9918 003B6858  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_803B991C:
/* 803B991C 003B685C  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 803B9920 003B6860  38 A1 00 08 */	addi r5, r1, 8
/* 803B9924 003B6864  A0 9F 00 08 */	lhz r4, 8(r31)
/* 803B9928 003B6868  88 DB 00 05 */	lbz r6, 5(r27)
/* 803B992C 003B686C  88 FB 00 04 */	lbz r7, 4(r27)
/* 803B9930 003B6870  4B FF FD ED */	bl "create__14TParticle2dMgrFUsR10Vector2<f>UcUc"
/* 803B9934 003B6874  90 7E 00 0C */	stw r3, 0xc(r30)
/* 803B9938 003B6878  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 803B993C 003B687C  28 00 00 00 */	cmplwi r0, 0
/* 803B9940 003B6880  40 82 00 0C */	bne lbl_803B994C
/* 803B9944 003B6884  38 60 00 00 */	li r3, 0
/* 803B9948 003B6888  48 00 00 1C */	b lbl_803B9964
lbl_803B994C:
/* 803B994C 003B688C  3B BD 00 01 */	addi r29, r29, 1
/* 803B9950 003B6890  3B DE 00 04 */	addi r30, r30, 4
/* 803B9954 003B6894  2C 1D 00 02 */	cmpwi r29, 2
/* 803B9958 003B6898  3B FF 00 02 */	addi r31, r31, 2
/* 803B995C 003B689C  41 80 FF C0 */	blt lbl_803B991C
/* 803B9960 003B68A0  38 60 00 01 */	li r3, 1
lbl_803B9964:
/* 803B9964 003B68A4  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 803B9968 003B68A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B996C 003B68AC  7C 08 03 A6 */	mtlr r0
/* 803B9970 003B68B0  38 21 00 30 */	addi r1, r1, 0x30
/* 803B9974 003B68B4  4E 80 00 20 */	blr 

.global create__Q25efx2d8TSimple3FPQ25efx2d3Arg
create__Q25efx2d8TSimple3FPQ25efx2d3Arg:
/* 803B9978 003B68B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B997C 003B68BC  7C 08 02 A6 */	mflr r0
/* 803B9980 003B68C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B9984 003B68C4  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 803B9988 003B68C8  7C 9C 23 79 */	or. r28, r4, r4
/* 803B998C 003B68CC  7C 7B 1B 78 */	mr r27, r3
/* 803B9990 003B68D0  40 82 00 20 */	bne lbl_803B99B0
/* 803B9994 003B68D4  3C 60 80 49 */	lis r3, lbl_80495B48@ha
/* 803B9998 003B68D8  3C A0 80 49 */	lis r5, lbl_80495B58@ha
/* 803B999C 003B68DC  38 63 5B 48 */	addi r3, r3, lbl_80495B48@l
/* 803B99A0 003B68E0  38 80 00 28 */	li r4, 0x28
/* 803B99A4 003B68E4  38 A5 5B 58 */	addi r5, r5, lbl_80495B58@l
/* 803B99A8 003B68E8  4C C6 31 82 */	crclr 6
/* 803B99AC 003B68EC  4B C7 0C 95 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_803B99B0:
/* 803B99B0 003B68F0  C0 1C 00 00 */	lfs f0, 0(r28)
/* 803B99B4 003B68F4  7F 7F DB 78 */	mr r31, r27
/* 803B99B8 003B68F8  7F 7E DB 78 */	mr r30, r27
/* 803B99BC 003B68FC  3B A0 00 00 */	li r29, 0
/* 803B99C0 003B6900  D0 01 00 08 */	stfs f0, 8(r1)
/* 803B99C4 003B6904  C0 1C 00 04 */	lfs f0, 4(r28)
/* 803B99C8 003B6908  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_803B99CC:
/* 803B99CC 003B690C  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 803B99D0 003B6910  38 A1 00 08 */	addi r5, r1, 8
/* 803B99D4 003B6914  A0 9F 00 08 */	lhz r4, 8(r31)
/* 803B99D8 003B6918  88 DB 00 05 */	lbz r6, 5(r27)
/* 803B99DC 003B691C  88 FB 00 04 */	lbz r7, 4(r27)
/* 803B99E0 003B6920  4B FF FD 3D */	bl "create__14TParticle2dMgrFUsR10Vector2<f>UcUc"
/* 803B99E4 003B6924  90 7E 00 10 */	stw r3, 0x10(r30)
/* 803B99E8 003B6928  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 803B99EC 003B692C  28 00 00 00 */	cmplwi r0, 0
/* 803B99F0 003B6930  40 82 00 0C */	bne lbl_803B99FC
/* 803B99F4 003B6934  38 60 00 00 */	li r3, 0
/* 803B99F8 003B6938  48 00 00 1C */	b lbl_803B9A14
lbl_803B99FC:
/* 803B99FC 003B693C  3B BD 00 01 */	addi r29, r29, 1
/* 803B9A00 003B6940  3B DE 00 04 */	addi r30, r30, 4
/* 803B9A04 003B6944  2C 1D 00 03 */	cmpwi r29, 3
/* 803B9A08 003B6948  3B FF 00 02 */	addi r31, r31, 2
/* 803B9A0C 003B694C  41 80 FF C0 */	blt lbl_803B99CC
/* 803B9A10 003B6950  38 60 00 01 */	li r3, 1
lbl_803B9A14:
/* 803B9A14 003B6954  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 803B9A18 003B6958  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B9A1C 003B695C  7C 08 03 A6 */	mtlr r0
/* 803B9A20 003B6960  38 21 00 30 */	addi r1, r1, 0x30
/* 803B9A24 003B6964  4E 80 00 20 */	blr 

.global create__Q25efx2d8TForeverFPQ25efx2d3Arg
create__Q25efx2d8TForeverFPQ25efx2d3Arg:
/* 803B9A28 003B6968  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B9A2C 003B696C  7C 08 02 A6 */	mflr r0
/* 803B9A30 003B6970  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B9A34 003B6974  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B9A38 003B6978  7C 9F 23 79 */	or. r31, r4, r4
/* 803B9A3C 003B697C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B9A40 003B6980  7C 7E 1B 78 */	mr r30, r3
/* 803B9A44 003B6984  40 82 00 20 */	bne lbl_803B9A64
/* 803B9A48 003B6988  3C 60 80 49 */	lis r3, lbl_80495B48@ha
/* 803B9A4C 003B698C  3C A0 80 49 */	lis r5, lbl_80495B58@ha
/* 803B9A50 003B6990  38 63 5B 48 */	addi r3, r3, lbl_80495B48@l
/* 803B9A54 003B6994  38 80 00 36 */	li r4, 0x36
/* 803B9A58 003B6998  38 A5 5B 58 */	addi r5, r5, lbl_80495B58@l
/* 803B9A5C 003B699C  4C C6 31 82 */	crclr 6
/* 803B9A60 003B69A0  4B C7 0B E1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_803B9A64:
/* 803B9A64 003B69A4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 803B9A68 003B69A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 803B9A6C 003B69AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 803B9A70 003B69B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 803B9A74 003B69B4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 803B9A78 003B69B8  28 00 00 00 */	cmplwi r0, 0
/* 803B9A7C 003B69BC  41 82 00 0C */	beq lbl_803B9A88
/* 803B9A80 003B69C0  38 60 00 00 */	li r3, 0
/* 803B9A84 003B69C4  48 00 00 30 */	b lbl_803B9AB4
lbl_803B9A88:
/* 803B9A88 003B69C8  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 803B9A8C 003B69CC  38 A1 00 08 */	addi r5, r1, 8
/* 803B9A90 003B69D0  A0 9E 00 0C */	lhz r4, 0xc(r30)
/* 803B9A94 003B69D4  88 DE 00 05 */	lbz r6, 5(r30)
/* 803B9A98 003B69D8  88 FE 00 04 */	lbz r7, 4(r30)
/* 803B9A9C 003B69DC  4B FF FC 81 */	bl "create__14TParticle2dMgrFUsR10Vector2<f>UcUc"
/* 803B9AA0 003B69E0  90 7E 00 10 */	stw r3, 0x10(r30)
/* 803B9AA4 003B69E4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 803B9AA8 003B69E8  7C 03 00 D0 */	neg r0, r3
/* 803B9AAC 003B69EC  7C 00 1B 78 */	or r0, r0, r3
/* 803B9AB0 003B69F0  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_803B9AB4:
/* 803B9AB4 003B69F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B9AB8 003B69F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B9ABC 003B69FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B9AC0 003B6A00  7C 08 03 A6 */	mtlr r0
/* 803B9AC4 003B6A04  38 21 00 20 */	addi r1, r1, 0x20
/* 803B9AC8 003B6A08  4E 80 00 20 */	blr 

.global kill__Q25efx2d8TForeverFv
kill__Q25efx2d8TForeverFv:
/* 803B9ACC 003B6A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9AD0 003B6A10  7C 08 02 A6 */	mflr r0
/* 803B9AD4 003B6A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B9AD8 003B6A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B9ADC 003B6A1C  7C 7F 1B 78 */	mr r31, r3
/* 803B9AE0 003B6A20  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 803B9AE4 003B6A24  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 803B9AE8 003B6A28  4B FF FC 81 */	bl kill__14TParticle2dMgrFP14JPABaseEmitter
/* 803B9AEC 003B6A2C  38 00 00 00 */	li r0, 0
/* 803B9AF0 003B6A30  90 1F 00 10 */	stw r0, 0x10(r31)
/* 803B9AF4 003B6A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B9AF8 003B6A38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B9AFC 003B6A3C  7C 08 03 A6 */	mtlr r0
/* 803B9B00 003B6A40  38 21 00 10 */	addi r1, r1, 0x10
/* 803B9B04 003B6A44  4E 80 00 20 */	blr 

.global fade__Q25efx2d8TForeverFv
fade__Q25efx2d8TForeverFv:
/* 803B9B08 003B6A48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9B0C 003B6A4C  7C 08 02 A6 */	mflr r0
/* 803B9B10 003B6A50  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B9B14 003B6A54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B9B18 003B6A58  7C 7F 1B 78 */	mr r31, r3
/* 803B9B1C 003B6A5C  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 803B9B20 003B6A60  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 803B9B24 003B6A64  4B FF FC 71 */	bl fade__14TParticle2dMgrFP14JPABaseEmitter
/* 803B9B28 003B6A68  38 00 00 00 */	li r0, 0
/* 803B9B2C 003B6A6C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 803B9B30 003B6A70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B9B34 003B6A74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B9B38 003B6A78  7C 08 03 A6 */	mtlr r0
/* 803B9B3C 003B6A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B9B40 003B6A80  4E 80 00 20 */	blr 

.global setGlobalScale__Q25efx2d8TForeverFf
setGlobalScale__Q25efx2d8TForeverFf:
/* 803B9B44 003B6A84  80 63 00 10 */	lwz r3, 0x10(r3)
/* 803B9B48 003B6A88  28 03 00 00 */	cmplwi r3, 0
/* 803B9B4C 003B6A8C  4D 82 00 20 */	beqlr 
/* 803B9B50 003B6A90  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 803B9B54 003B6A94  D0 23 00 9C */	stfs f1, 0x9c(r3)
/* 803B9B58 003B6A98  D0 23 00 A0 */	stfs f1, 0xa0(r3)
/* 803B9B5C 003B6A9C  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 803B9B60 003B6AA0  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 803B9B64 003B6AA4  4E 80 00 20 */	blr 

.global setGlobalEnvColor__Q25efx2d8TForeverFRQ28JUtility6TColor
setGlobalEnvColor__Q25efx2d8TForeverFRQ28JUtility6TColor:
/* 803B9B68 003B6AA8  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 803B9B6C 003B6AAC  28 06 00 00 */	cmplwi r6, 0
/* 803B9B70 003B6AB0  4D 82 00 20 */	beqlr 
/* 803B9B74 003B6AB4  88 A4 00 02 */	lbz r5, 2(r4)
/* 803B9B78 003B6AB8  88 64 00 01 */	lbz r3, 1(r4)
/* 803B9B7C 003B6ABC  88 04 00 00 */	lbz r0, 0(r4)
/* 803B9B80 003B6AC0  98 06 00 BC */	stb r0, 0xbc(r6)
/* 803B9B84 003B6AC4  98 66 00 BD */	stb r3, 0xbd(r6)
/* 803B9B88 003B6AC8  98 A6 00 BE */	stb r5, 0xbe(r6)
/* 803B9B8C 003B6ACC  4E 80 00 20 */	blr 

.global setGlobalAlpha__Q25efx2d8TForeverFUc
setGlobalAlpha__Q25efx2d8TForeverFUc:
/* 803B9B90 003B6AD0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 803B9B94 003B6AD4  28 03 00 00 */	cmplwi r3, 0
/* 803B9B98 003B6AD8  4D 82 00 20 */	beqlr 
/* 803B9B9C 003B6ADC  98 83 00 BB */	stb r4, 0xbb(r3)
/* 803B9BA0 003B6AE0  4E 80 00 20 */	blr 

.global __ct__Q25efx2d9TForeverNFUc
__ct__Q25efx2d9TForeverNFUc:
/* 803B9BA4 003B6AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9BA8 003B6AE8  7C 08 02 A6 */	mflr r0
/* 803B9BAC 003B6AEC  3C C0 80 4C */	lis r6, __vt__Q25efx2d7TBaseIF@ha
/* 803B9BB0 003B6AF0  3C A0 80 4E */	lis r5, __vt__Q25efx2d9TForeverN@ha
/* 803B9BB4 003B6AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B9BB8 003B6AF8  38 05 74 08 */	addi r0, r5, __vt__Q25efx2d9TForeverN@l
/* 803B9BBC 003B6AFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B9BC0 003B6B00  93 C1 00 08 */	stw r30, 8(r1)
/* 803B9BC4 003B6B04  7C 7E 1B 78 */	mr r30, r3
/* 803B9BC8 003B6B08  38 66 14 F0 */	addi r3, r6, __vt__Q25efx2d7TBaseIF@l
/* 803B9BCC 003B6B0C  90 7E 00 00 */	stw r3, 0(r30)
/* 803B9BD0 003B6B10  90 1E 00 00 */	stw r0, 0(r30)
/* 803B9BD4 003B6B14  98 9E 00 04 */	stb r4, 4(r30)
/* 803B9BD8 003B6B18  8B FE 00 04 */	lbz r31, 4(r30)
/* 803B9BDC 003B6B1C  1C 7F 00 14 */	mulli r3, r31, 0x14
/* 803B9BE0 003B6B20  38 63 00 10 */	addi r3, r3, 0x10
/* 803B9BE4 003B6B24  4B C6 A3 C9 */	bl __nwa__FUl
/* 803B9BE8 003B6B28  3C 80 80 3C */	lis r4, __ct__Q25efx2d8TForeverFv@ha
/* 803B9BEC 003B6B2C  3C A0 80 31 */	lis r5, __dt__Q25efx2d8TForeverFv@ha
/* 803B9BF0 003B6B30  38 84 9C 24 */	addi r4, r4, __ct__Q25efx2d8TForeverFv@l
/* 803B9BF4 003B6B34  7F E7 FB 78 */	mr r7, r31
/* 803B9BF8 003B6B38  38 A5 A0 94 */	addi r5, r5, __dt__Q25efx2d8TForeverFv@l
/* 803B9BFC 003B6B3C  38 C0 00 14 */	li r6, 0x14
/* 803B9C00 003B6B40  4B D0 7D F1 */	bl __construct_new_array
/* 803B9C04 003B6B44  90 7E 00 08 */	stw r3, 8(r30)
/* 803B9C08 003B6B48  7F C3 F3 78 */	mr r3, r30
/* 803B9C0C 003B6B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B9C10 003B6B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B9C14 003B6B54  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B9C18 003B6B58  7C 08 03 A6 */	mtlr r0
/* 803B9C1C 003B6B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B9C20 003B6B60  4E 80 00 20 */	blr 

.global __ct__Q25efx2d8TForeverFv
__ct__Q25efx2d8TForeverFv:
/* 803B9C24 003B6B64  3C 80 80 4C */	lis r4, __vt__Q25efx2d7TBaseIF@ha
/* 803B9C28 003B6B68  3C A0 80 4A */	lis r5, __vt__18JPAEmitterCallBack@ha
/* 803B9C2C 003B6B6C  38 04 14 F0 */	addi r0, r4, __vt__Q25efx2d7TBaseIF@l
/* 803B9C30 003B6B70  3C C0 80 4C */	lis r6, __vt__Q25efx2d5TBase@ha
/* 803B9C34 003B6B74  90 03 00 00 */	stw r0, 0(r3)
/* 803B9C38 003B6B78  38 06 14 D8 */	addi r0, r6, __vt__Q25efx2d5TBase@l
/* 803B9C3C 003B6B7C  3C 80 80 4E */	lis r4, __vt__Q25efx2d8TForever@ha
/* 803B9C40 003B6B80  38 C0 00 00 */	li r6, 0
/* 803B9C44 003B6B84  90 03 00 00 */	stw r0, 0(r3)
/* 803B9C48 003B6B88  38 84 74 20 */	addi r4, r4, __vt__Q25efx2d8TForever@l
/* 803B9C4C 003B6B8C  38 A5 E2 7C */	addi r5, r5, __vt__18JPAEmitterCallBack@l
/* 803B9C50 003B6B90  98 C3 00 04 */	stb r6, 4(r3)
/* 803B9C54 003B6B94  38 04 00 18 */	addi r0, r4, 0x18
/* 803B9C58 003B6B98  98 C3 00 05 */	stb r6, 5(r3)
/* 803B9C5C 003B6B9C  90 A3 00 08 */	stw r5, 8(r3)
/* 803B9C60 003B6BA0  90 83 00 00 */	stw r4, 0(r3)
/* 803B9C64 003B6BA4  90 03 00 08 */	stw r0, 8(r3)
/* 803B9C68 003B6BA8  B0 C3 00 0C */	sth r6, 0xc(r3)
/* 803B9C6C 003B6BAC  90 C3 00 10 */	stw r6, 0x10(r3)
/* 803B9C70 003B6BB0  4E 80 00 20 */	blr 

.global create__Q25efx2d9TForeverNFPQ25efx2d3Arg
create__Q25efx2d9TForeverNFPQ25efx2d3Arg:
/* 803B9C74 003B6BB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B9C78 003B6BB8  7C 08 02 A6 */	mflr r0
/* 803B9C7C 003B6BBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B9C80 003B6BC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B9C84 003B6BC4  3B E0 00 01 */	li r31, 1
/* 803B9C88 003B6BC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B9C8C 003B6BCC  3B C0 00 00 */	li r30, 0
/* 803B9C90 003B6BD0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803B9C94 003B6BD4  7C 9D 23 78 */	mr r29, r4
/* 803B9C98 003B6BD8  93 81 00 10 */	stw r28, 0x10(r1)
/* 803B9C9C 003B6BDC  7C 7C 1B 78 */	mr r28, r3
/* 803B9CA0 003B6BE0  48 00 00 38 */	b lbl_803B9CD8
lbl_803B9CA4:
/* 803B9CA4 003B6BE4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 803B9CA8 003B6BE8  80 7C 00 08 */	lwz r3, 8(r28)
/* 803B9CAC 003B6BEC  1C 00 00 14 */	mulli r0, r0, 0x14
/* 803B9CB0 003B6BF0  7F A4 EB 78 */	mr r4, r29
/* 803B9CB4 003B6BF4  7C 63 02 14 */	add r3, r3, r0
/* 803B9CB8 003B6BF8  81 83 00 00 */	lwz r12, 0(r3)
/* 803B9CBC 003B6BFC  81 8C 00 08 */	lwz r12, 8(r12)
/* 803B9CC0 003B6C00  7D 89 03 A6 */	mtctr r12
/* 803B9CC4 003B6C04  4E 80 04 21 */	bctrl 
/* 803B9CC8 003B6C08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803B9CCC 003B6C0C  40 82 00 08 */	bne lbl_803B9CD4
/* 803B9CD0 003B6C10  3B E0 00 00 */	li r31, 0
lbl_803B9CD4:
/* 803B9CD4 003B6C14  3B DE 00 01 */	addi r30, r30, 1
lbl_803B9CD8:
/* 803B9CD8 003B6C18  88 1C 00 04 */	lbz r0, 4(r28)
/* 803B9CDC 003B6C1C  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 803B9CE0 003B6C20  7C 03 00 40 */	cmplw r3, r0
/* 803B9CE4 003B6C24  41 80 FF C0 */	blt lbl_803B9CA4
/* 803B9CE8 003B6C28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B9CEC 003B6C2C  7F E3 FB 78 */	mr r3, r31
/* 803B9CF0 003B6C30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B9CF4 003B6C34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B9CF8 003B6C38  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803B9CFC 003B6C3C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803B9D00 003B6C40  7C 08 03 A6 */	mtlr r0
/* 803B9D04 003B6C44  38 21 00 20 */	addi r1, r1, 0x20
/* 803B9D08 003B6C48  4E 80 00 20 */	blr 

.global kill__Q25efx2d9TForeverNFv
kill__Q25efx2d9TForeverNFv:
/* 803B9D0C 003B6C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9D10 003B6C50  7C 08 02 A6 */	mflr r0
/* 803B9D14 003B6C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B9D18 003B6C58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B9D1C 003B6C5C  3B E0 00 00 */	li r31, 0
/* 803B9D20 003B6C60  93 C1 00 08 */	stw r30, 8(r1)
/* 803B9D24 003B6C64  7C 7E 1B 78 */	mr r30, r3
/* 803B9D28 003B6C68  48 00 00 28 */	b lbl_803B9D50
lbl_803B9D2C:
/* 803B9D2C 003B6C6C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803B9D30 003B6C70  80 7E 00 08 */	lwz r3, 8(r30)
/* 803B9D34 003B6C74  1C 00 00 14 */	mulli r0, r0, 0x14
/* 803B9D38 003B6C78  7C 63 02 14 */	add r3, r3, r0
/* 803B9D3C 003B6C7C  81 83 00 00 */	lwz r12, 0(r3)
/* 803B9D40 003B6C80  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803B9D44 003B6C84  7D 89 03 A6 */	mtctr r12
/* 803B9D48 003B6C88  4E 80 04 21 */	bctrl 
/* 803B9D4C 003B6C8C  3B FF 00 01 */	addi r31, r31, 1
lbl_803B9D50:
/* 803B9D50 003B6C90  88 1E 00 04 */	lbz r0, 4(r30)
/* 803B9D54 003B6C94  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 803B9D58 003B6C98  7C 03 00 40 */	cmplw r3, r0
/* 803B9D5C 003B6C9C  41 80 FF D0 */	blt lbl_803B9D2C
/* 803B9D60 003B6CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B9D64 003B6CA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B9D68 003B6CA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B9D6C 003B6CAC  7C 08 03 A6 */	mtlr r0
/* 803B9D70 003B6CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 803B9D74 003B6CB4  4E 80 00 20 */	blr 

.global fade__Q25efx2d9TForeverNFv
fade__Q25efx2d9TForeverNFv:
/* 803B9D78 003B6CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9D7C 003B6CBC  7C 08 02 A6 */	mflr r0
/* 803B9D80 003B6CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B9D84 003B6CC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B9D88 003B6CC8  3B E0 00 00 */	li r31, 0
/* 803B9D8C 003B6CCC  93 C1 00 08 */	stw r30, 8(r1)
/* 803B9D90 003B6CD0  7C 7E 1B 78 */	mr r30, r3
/* 803B9D94 003B6CD4  48 00 00 28 */	b lbl_803B9DBC
lbl_803B9D98:
/* 803B9D98 003B6CD8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803B9D9C 003B6CDC  80 7E 00 08 */	lwz r3, 8(r30)
/* 803B9DA0 003B6CE0  1C 00 00 14 */	mulli r0, r0, 0x14
/* 803B9DA4 003B6CE4  7C 63 02 14 */	add r3, r3, r0
/* 803B9DA8 003B6CE8  81 83 00 00 */	lwz r12, 0(r3)
/* 803B9DAC 003B6CEC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 803B9DB0 003B6CF0  7D 89 03 A6 */	mtctr r12
/* 803B9DB4 003B6CF4  4E 80 04 21 */	bctrl 
/* 803B9DB8 003B6CF8  3B FF 00 01 */	addi r31, r31, 1
lbl_803B9DBC:
/* 803B9DBC 003B6CFC  88 1E 00 04 */	lbz r0, 4(r30)
/* 803B9DC0 003B6D00  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 803B9DC4 003B6D04  7C 03 00 40 */	cmplw r3, r0
/* 803B9DC8 003B6D08  41 80 FF D0 */	blt lbl_803B9D98
/* 803B9DCC 003B6D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B9DD0 003B6D10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B9DD4 003B6D14  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B9DD8 003B6D18  7C 08 03 A6 */	mtlr r0
/* 803B9DDC 003B6D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B9DE0 003B6D20  4E 80 00 20 */	blr 

.global setGroup__Q25efx2d9TForeverNFUc
setGroup__Q25efx2d9TForeverNFUc:
/* 803B9DE4 003B6D24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B9DE8 003B6D28  7C 08 02 A6 */	mflr r0
/* 803B9DEC 003B6D2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B9DF0 003B6D30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B9DF4 003B6D34  3B E0 00 00 */	li r31, 0
/* 803B9DF8 003B6D38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B9DFC 003B6D3C  7C 9E 23 78 */	mr r30, r4
/* 803B9E00 003B6D40  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803B9E04 003B6D44  7C 7D 1B 78 */	mr r29, r3
/* 803B9E08 003B6D48  48 00 00 2C */	b lbl_803B9E34
lbl_803B9E0C:
/* 803B9E0C 003B6D4C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803B9E10 003B6D50  80 7D 00 08 */	lwz r3, 8(r29)
/* 803B9E14 003B6D54  1C 00 00 14 */	mulli r0, r0, 0x14
/* 803B9E18 003B6D58  7F C4 F3 78 */	mr r4, r30
/* 803B9E1C 003B6D5C  7C 63 02 14 */	add r3, r3, r0
/* 803B9E20 003B6D60  81 83 00 00 */	lwz r12, 0(r3)
/* 803B9E24 003B6D64  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 803B9E28 003B6D68  7D 89 03 A6 */	mtctr r12
/* 803B9E2C 003B6D6C  4E 80 04 21 */	bctrl 
/* 803B9E30 003B6D70  3B FF 00 01 */	addi r31, r31, 1
lbl_803B9E34:
/* 803B9E34 003B6D74  88 1D 00 04 */	lbz r0, 4(r29)
/* 803B9E38 003B6D78  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 803B9E3C 003B6D7C  7C 03 00 40 */	cmplw r3, r0
/* 803B9E40 003B6D80  41 80 FF CC */	blt lbl_803B9E0C
/* 803B9E44 003B6D84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B9E48 003B6D88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B9E4C 003B6D8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B9E50 003B6D90  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803B9E54 003B6D94  7C 08 03 A6 */	mtlr r0
/* 803B9E58 003B6D98  38 21 00 20 */	addi r1, r1, 0x20
/* 803B9E5C 003B6D9C  4E 80 00 20 */	blr 

.global setGlobalAlpha__Q25efx2d9TForeverNFUc
setGlobalAlpha__Q25efx2d9TForeverNFUc:
/* 803B9E60 003B6DA0  38 E0 00 00 */	li r7, 0
/* 803B9E64 003B6DA4  48 00 00 28 */	b lbl_803B9E8C
lbl_803B9E68:
/* 803B9E68 003B6DA8  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 803B9E6C 003B6DAC  80 C3 00 08 */	lwz r6, 8(r3)
/* 803B9E70 003B6DB0  1C A0 00 14 */	mulli r5, r0, 0x14
/* 803B9E74 003B6DB4  38 05 00 10 */	addi r0, r5, 0x10
/* 803B9E78 003B6DB8  7C A6 00 2E */	lwzx r5, r6, r0
/* 803B9E7C 003B6DBC  28 05 00 00 */	cmplwi r5, 0
/* 803B9E80 003B6DC0  41 82 00 08 */	beq lbl_803B9E88
/* 803B9E84 003B6DC4  98 85 00 BB */	stb r4, 0xbb(r5)
lbl_803B9E88:
/* 803B9E88 003B6DC8  38 E7 00 01 */	addi r7, r7, 1
lbl_803B9E8C:
/* 803B9E8C 003B6DCC  88 03 00 04 */	lbz r0, 4(r3)
/* 803B9E90 003B6DD0  54 E5 06 3E */	clrlwi r5, r7, 0x18
/* 803B9E94 003B6DD4  7C 05 00 40 */	cmplw r5, r0
/* 803B9E98 003B6DD8  41 80 FF D0 */	blt lbl_803B9E68
/* 803B9E9C 003B6DDC  4E 80 00 20 */	blr 

.global create__Q25efx2d9TChasePosFPQ25efx2d3Arg
create__Q25efx2d9TChasePosFPQ25efx2d3Arg:
/* 803B9EA0 003B6DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9EA4 003B6DE4  7C 08 02 A6 */	mflr r0
/* 803B9EA8 003B6DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B9EAC 003B6DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B9EB0 003B6DF0  7C 7F 1B 78 */	mr r31, r3
/* 803B9EB4 003B6DF4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803B9EB8 003B6DF8  28 00 00 00 */	cmplwi r0, 0
/* 803B9EBC 003B6DFC  41 82 00 0C */	beq lbl_803B9EC8
/* 803B9EC0 003B6E00  38 60 00 00 */	li r3, 0
/* 803B9EC4 003B6E04  48 00 00 50 */	b lbl_803B9F14
lbl_803B9EC8:
/* 803B9EC8 003B6E08  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 803B9ECC 003B6E0C  A0 9F 00 0C */	lhz r4, 0xc(r31)
/* 803B9ED0 003B6E10  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 803B9ED4 003B6E14  88 DF 00 05 */	lbz r6, 5(r31)
/* 803B9ED8 003B6E18  88 FF 00 04 */	lbz r7, 4(r31)
/* 803B9EDC 003B6E1C  4B FF F8 41 */	bl "create__14TParticle2dMgrFUsR10Vector2<f>UcUc"
/* 803B9EE0 003B6E20  90 7F 00 10 */	stw r3, 0x10(r31)
/* 803B9EE4 003B6E24  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803B9EE8 003B6E28  28 03 00 00 */	cmplwi r3, 0
/* 803B9EEC 003B6E2C  41 82 00 1C */	beq lbl_803B9F08
/* 803B9EF0 003B6E30  28 1F 00 00 */	cmplwi r31, 0
/* 803B9EF4 003B6E34  7F E0 FB 78 */	mr r0, r31
/* 803B9EF8 003B6E38  41 82 00 08 */	beq lbl_803B9F00
/* 803B9EFC 003B6E3C  38 1F 00 08 */	addi r0, r31, 8
lbl_803B9F00:
/* 803B9F00 003B6E40  90 03 00 EC */	stw r0, 0xec(r3)
/* 803B9F04 003B6E44  48 00 00 0C */	b lbl_803B9F10
lbl_803B9F08:
/* 803B9F08 003B6E48  38 60 00 00 */	li r3, 0
/* 803B9F0C 003B6E4C  48 00 00 08 */	b lbl_803B9F14
lbl_803B9F10:
/* 803B9F10 003B6E50  38 60 00 01 */	li r3, 1
lbl_803B9F14:
/* 803B9F14 003B6E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B9F18 003B6E58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B9F1C 003B6E5C  7C 08 03 A6 */	mtlr r0
/* 803B9F20 003B6E60  38 21 00 10 */	addi r1, r1, 0x10
/* 803B9F24 003B6E64  4E 80 00 20 */	blr 

.global execute__Q25efx2d9TChasePosFP14JPABaseEmitter
execute__Q25efx2d9TChasePosFP14JPABaseEmitter:
/* 803B9F28 003B6E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9F2C 003B6E6C  7C 08 02 A6 */	mflr r0
/* 803B9F30 003B6E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B9F34 003B6E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B9F38 003B6E78  7C 9F 23 78 */	mr r31, r4
/* 803B9F3C 003B6E7C  93 C1 00 08 */	stw r30, 8(r1)
/* 803B9F40 003B6E80  7C 7E 1B 78 */	mr r30, r3
/* 803B9F44 003B6E84  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803B9F48 003B6E88  28 00 00 00 */	cmplwi r0, 0
/* 803B9F4C 003B6E8C  40 82 00 20 */	bne lbl_803B9F6C
/* 803B9F50 003B6E90  3C 60 80 49 */	lis r3, lbl_80495B48@ha
/* 803B9F54 003B6E94  3C A0 80 49 */	lis r5, lbl_80495B58@ha
/* 803B9F58 003B6E98  38 63 5B 48 */	addi r3, r3, lbl_80495B48@l
/* 803B9F5C 003B6E9C  38 80 00 D6 */	li r4, 0xd6
/* 803B9F60 003B6EA0  38 A5 5B 58 */	addi r5, r5, lbl_80495B58@l
/* 803B9F64 003B6EA4  4C C6 31 82 */	crclr 6
/* 803B9F68 003B6EA8  4B C7 06 D9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_803B9F6C:
/* 803B9F6C 003B6EAC  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 803B9F70 003B6EB0  C0 02 13 78 */	lfs f0, lbl_8051F6D8@sda21(r2)
/* 803B9F74 003B6EB4  C0 43 00 04 */	lfs f2, 4(r3)
/* 803B9F78 003B6EB8  C0 23 00 00 */	lfs f1, 0(r3)
/* 803B9F7C 003B6EBC  D0 3F 00 A4 */	stfs f1, 0xa4(r31)
/* 803B9F80 003B6EC0  D0 5F 00 A8 */	stfs f2, 0xa8(r31)
/* 803B9F84 003B6EC4  D0 1F 00 AC */	stfs f0, 0xac(r31)
/* 803B9F88 003B6EC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B9F8C 003B6ECC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B9F90 003B6ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B9F94 003B6ED4  7C 08 03 A6 */	mtlr r0
/* 803B9F98 003B6ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B9F9C 003B6EDC  4E 80 00 20 */	blr 

.global create__Q25efx2d12TChasePosDirFPQ25efx2d3Arg
create__Q25efx2d12TChasePosDirFPQ25efx2d3Arg:
/* 803B9FA0 003B6EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9FA4 003B6EE4  7C 08 02 A6 */	mflr r0
/* 803B9FA8 003B6EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B9FAC 003B6EEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B9FB0 003B6EF0  7C 7F 1B 78 */	mr r31, r3
/* 803B9FB4 003B6EF4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803B9FB8 003B6EF8  28 00 00 00 */	cmplwi r0, 0
/* 803B9FBC 003B6EFC  41 82 00 0C */	beq lbl_803B9FC8
/* 803B9FC0 003B6F00  38 60 00 00 */	li r3, 0
/* 803B9FC4 003B6F04  48 00 00 50 */	b lbl_803BA014
lbl_803B9FC8:
/* 803B9FC8 003B6F08  80 6D 9A 08 */	lwz r3, particle2dMgr@sda21(r13)
/* 803B9FCC 003B6F0C  A0 9F 00 0C */	lhz r4, 0xc(r31)
/* 803B9FD0 003B6F10  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 803B9FD4 003B6F14  88 DF 00 05 */	lbz r6, 5(r31)
/* 803B9FD8 003B6F18  88 FF 00 04 */	lbz r7, 4(r31)
/* 803B9FDC 003B6F1C  4B FF F7 41 */	bl "create__14TParticle2dMgrFUsR10Vector2<f>UcUc"
/* 803B9FE0 003B6F20  90 7F 00 10 */	stw r3, 0x10(r31)
/* 803B9FE4 003B6F24  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803B9FE8 003B6F28  28 03 00 00 */	cmplwi r3, 0
/* 803B9FEC 003B6F2C  41 82 00 1C */	beq lbl_803BA008
/* 803B9FF0 003B6F30  28 1F 00 00 */	cmplwi r31, 0
/* 803B9FF4 003B6F34  7F E0 FB 78 */	mr r0, r31
/* 803B9FF8 003B6F38  41 82 00 08 */	beq lbl_803BA000
/* 803B9FFC 003B6F3C  38 1F 00 08 */	addi r0, r31, 8
lbl_803BA000:
/* 803BA000 003B6F40  90 03 00 EC */	stw r0, 0xec(r3)
/* 803BA004 003B6F44  48 00 00 0C */	b lbl_803BA010
lbl_803BA008:
/* 803BA008 003B6F48  38 60 00 00 */	li r3, 0
/* 803BA00C 003B6F4C  48 00 00 08 */	b lbl_803BA014
lbl_803BA010:
/* 803BA010 003B6F50  38 60 00 01 */	li r3, 1
lbl_803BA014:
/* 803BA014 003B6F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BA018 003B6F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BA01C 003B6F5C  7C 08 03 A6 */	mtlr r0
/* 803BA020 003B6F60  38 21 00 10 */	addi r1, r1, 0x10
/* 803BA024 003B6F64  4E 80 00 20 */	blr 

.global execute__Q25efx2d12TChasePosDirFP14JPABaseEmitter
execute__Q25efx2d12TChasePosDirFP14JPABaseEmitter:
/* 803BA028 003B6F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BA02C 003B6F6C  7C 08 02 A6 */	mflr r0
/* 803BA030 003B6F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BA034 003B6F74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BA038 003B6F78  7C 9F 23 78 */	mr r31, r4
/* 803BA03C 003B6F7C  93 C1 00 08 */	stw r30, 8(r1)
/* 803BA040 003B6F80  7C 7E 1B 78 */	mr r30, r3
/* 803BA044 003B6F84  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803BA048 003B6F88  28 00 00 00 */	cmplwi r0, 0
/* 803BA04C 003B6F8C  40 82 00 20 */	bne lbl_803BA06C
/* 803BA050 003B6F90  3C 60 80 49 */	lis r3, lbl_80495B48@ha
/* 803BA054 003B6F94  3C A0 80 49 */	lis r5, lbl_80495B58@ha
/* 803BA058 003B6F98  38 63 5B 48 */	addi r3, r3, lbl_80495B48@l
/* 803BA05C 003B6F9C  38 80 00 F4 */	li r4, 0xf4
/* 803BA060 003B6FA0  38 A5 5B 58 */	addi r5, r5, lbl_80495B58@l
/* 803BA064 003B6FA4  4C C6 31 82 */	crclr 6
/* 803BA068 003B6FA8  4B C7 05 D9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_803BA06C:
/* 803BA06C 003B6FAC  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 803BA070 003B6FB0  28 00 00 00 */	cmplwi r0, 0
/* 803BA074 003B6FB4  40 82 00 20 */	bne lbl_803BA094
/* 803BA078 003B6FB8  3C 60 80 49 */	lis r3, lbl_80495B48@ha
/* 803BA07C 003B6FBC  3C A0 80 49 */	lis r5, lbl_80495B58@ha
/* 803BA080 003B6FC0  38 63 5B 48 */	addi r3, r3, lbl_80495B48@l
/* 803BA084 003B6FC4  38 80 00 F5 */	li r4, 0xf5
/* 803BA088 003B6FC8  38 A5 5B 58 */	addi r5, r5, lbl_80495B58@l
/* 803BA08C 003B6FCC  4C C6 31 82 */	crclr 6
/* 803BA090 003B6FD0  4B C7 05 B1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_803BA094:
/* 803BA094 003B6FD4  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 803BA098 003B6FD8  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 803BA09C 003B6FDC  C0 44 00 04 */	lfs f2, 4(r4)
/* 803BA0A0 003B6FE0  C0 63 00 00 */	lfs f3, 0(r3)
/* 803BA0A4 003B6FE4  C0 83 00 04 */	lfs f4, 4(r3)
/* 803BA0A8 003B6FE8  C0 24 00 00 */	lfs f1, 0(r4)
/* 803BA0AC 003B6FEC  C0 02 13 78 */	lfs f0, lbl_8051F6D8@sda21(r2)
/* 803BA0B0 003B6FF0  D0 3F 00 A4 */	stfs f1, 0xa4(r31)
/* 803BA0B4 003B6FF4  D0 5F 00 A8 */	stfs f2, 0xa8(r31)
/* 803BA0B8 003B6FF8  D0 1F 00 AC */	stfs f0, 0xac(r31)
/* 803BA0BC 003B6FFC  D0 7F 00 18 */	stfs f3, 0x18(r31)
/* 803BA0C0 003B7000  D0 9F 00 1C */	stfs f4, 0x1c(r31)
/* 803BA0C4 003B7004  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 803BA0C8 003B7008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BA0CC 003B700C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BA0D0 003B7010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BA0D4 003B7014  7C 08 03 A6 */	mtlr r0
/* 803BA0D8 003B7018  38 21 00 10 */	addi r1, r1, 0x10
/* 803BA0DC 003B701C  4E 80 00 20 */	blr 

.global __dt__Q25efx2d12TChasePosDirFv
__dt__Q25efx2d12TChasePosDirFv:
/* 803BA0E0 003B7020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BA0E4 003B7024  7C 08 02 A6 */	mflr r0
/* 803BA0E8 003B7028  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BA0EC 003B702C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BA0F0 003B7030  7C 9F 23 78 */	mr r31, r4
/* 803BA0F4 003B7034  93 C1 00 08 */	stw r30, 8(r1)
/* 803BA0F8 003B7038  7C 7E 1B 79 */	or. r30, r3, r3
/* 803BA0FC 003B703C  41 82 00 4C */	beq lbl_803BA148
/* 803BA100 003B7040  3C 60 80 4E */	lis r3, __vt__Q25efx2d12TChasePosDir@ha
/* 803BA104 003B7044  38 63 73 90 */	addi r3, r3, __vt__Q25efx2d12TChasePosDir@l
/* 803BA108 003B7048  90 7E 00 00 */	stw r3, 0(r30)
/* 803BA10C 003B704C  38 03 00 18 */	addi r0, r3, 0x18
/* 803BA110 003B7050  90 1E 00 08 */	stw r0, 8(r30)
/* 803BA114 003B7054  41 82 00 24 */	beq lbl_803BA138
/* 803BA118 003B7058  3C 80 80 4E */	lis r4, __vt__Q25efx2d8TForever@ha
/* 803BA11C 003B705C  38 7E 00 08 */	addi r3, r30, 8
/* 803BA120 003B7060  38 A4 74 20 */	addi r5, r4, __vt__Q25efx2d8TForever@l
/* 803BA124 003B7064  38 80 00 00 */	li r4, 0
/* 803BA128 003B7068  90 BE 00 00 */	stw r5, 0(r30)
/* 803BA12C 003B706C  38 05 00 18 */	addi r0, r5, 0x18
/* 803BA130 003B7070  90 1E 00 08 */	stw r0, 8(r30)
/* 803BA134 003B7074  4B CD 5B 69 */	bl __dt__18JPAEmitterCallBackFv
lbl_803BA138:
/* 803BA138 003B7078  7F E0 07 35 */	extsh. r0, r31
/* 803BA13C 003B707C  40 81 00 0C */	ble lbl_803BA148
/* 803BA140 003B7080  7F C3 F3 78 */	mr r3, r30
/* 803BA144 003B7084  4B C6 9F 71 */	bl __dl__FPv
lbl_803BA148:
/* 803BA148 003B7088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BA14C 003B708C  7F C3 F3 78 */	mr r3, r30
/* 803BA150 003B7090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BA154 003B7094  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BA158 003B7098  7C 08 03 A6 */	mtlr r0
/* 803BA15C 003B709C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BA160 003B70A0  4E 80 00 20 */	blr 

.global "@8@__dt__Q25efx2d8TForeverFv"
"@8@__dt__Q25efx2d8TForeverFv":
/* 803BA164 003B70A4  38 63 FF F8 */	addi r3, r3, -8
/* 803BA168 003B70A8  4B F4 FF 2C */	b __dt__Q25efx2d8TForeverFv

.global "@8@execute__Q25efx2d9TChasePosFP14JPABaseEmitter"
"@8@execute__Q25efx2d9TChasePosFP14JPABaseEmitter":
/* 803BA16C 003B70AC  38 63 FF F8 */	addi r3, r3, -8
/* 803BA170 003B70B0  4B FF FD B8 */	b execute__Q25efx2d9TChasePosFP14JPABaseEmitter

.global "@8@__dt__Q25efx2d9TChasePosFv"
"@8@__dt__Q25efx2d9TChasePosFv":
/* 803BA174 003B70B4  38 63 FF F8 */	addi r3, r3, -8
/* 803BA178 003B70B8  4B F4 FE 98 */	b __dt__Q25efx2d9TChasePosFv

.global "@8@execute__Q25efx2d12TChasePosDirFP14JPABaseEmitter"
"@8@execute__Q25efx2d12TChasePosDirFP14JPABaseEmitter":
/* 803BA17C 003B70BC  38 63 FF F8 */	addi r3, r3, -8
/* 803BA180 003B70C0  4B FF FE A8 */	b execute__Q25efx2d12TChasePosDirFP14JPABaseEmitter

.global "@8@__dt__Q25efx2d12TChasePosDirFv"
"@8@__dt__Q25efx2d12TChasePosDirFv":
/* 803BA184 003B70C4  38 63 FF F8 */	addi r3, r3, -8
/* 803BA188 003B70C8  4B FF FF 58 */	b __dt__Q25efx2d12TChasePosDirFv
