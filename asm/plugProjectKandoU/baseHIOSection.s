.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
.4byte __sinit_baseHIOSection_cpp

.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.obj lbl_8047E2A0, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8047E2A0
.balign 4
.obj lbl_8047E2AC, local
	.asciz "baseHIOSection"
.endobj lbl_8047E2AC
.balign 4
.obj lbl_8047E2BC, local
	.asciz "BaseHIOSection"
.endobj lbl_8047E2BC
.balign 4
.obj lbl_8047E2CC, local
	.asciz "baseHIOSection.cpp"
.endobj lbl_8047E2CC
.balign 4
.obj lbl_8047E2E0, local
	.asciz "fragmentation occurred : after sound\n"
.endobj lbl_8047E2E0
.balign 4
.obj lbl_8047E308, local
	.asciz "P2Assert"
.endobj lbl_8047E308

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.obj govNAN___Q24Game5P2JST, local
	.float 0.0
	.float 0.0
	.float 0.0
.endobj govNAN___Q24Game5P2JST
.obj __vt__Q24Game11HIORootNode, weak
	.4byte 0
	.4byte 0
	.4byte __dt__Q24Game11HIORootNodeFv
	.4byte getChildCount__5CNodeFv
.endobj __vt__Q24Game11HIORootNode
.obj __vt__Q24Game14BaseHIOSection, global
	.4byte 0
	.4byte 0
	.4byte __dt__Q24Game14BaseHIOSectionFv
	.4byte run__7SectionFv
	.4byte update__7SectionFv
	.4byte draw__7SectionFR8Graphics
	.4byte init__7SectionFv
	.4byte drawInit__7SectionFR8Graphics
	.4byte drawInit__7SectionFR8GraphicsQ27Section13EDrawInitMode
	.4byte doExit__7SectionFv
	.4byte forceFinish__7SectionFv
	.4byte forceReset__7SectionFv
	.4byte getCurrentSection__7SectionFv
	.4byte doLoadingStart__7SectionFv
	.4byte doLoading__7SectionFv
	.4byte doUpdate__Q24Game14BaseHIOSectionFv
	.4byte 0
	.4byte isFinishable__7SectionFv
	.4byte initHIO__Q24Game14BaseHIOSectionFPQ24Game11HIORootNode
	.4byte refreshHIO__Q24Game14BaseHIOSectionFv
.endobj __vt__Q24Game14BaseHIOSection

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.obj gu32NAN___Q24Game5P2JST, local
	.skip 4
.endobj gu32NAN___Q24Game5P2JST
.obj gfNAN___Q24Game5P2JST, local
	.skip 4
.endobj gfNAN___Q24Game5P2JST

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.obj lbl_805188D8, local
	.asciz "system"
.endobj lbl_805188D8

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.if version == 1
.fn __ct__Q24Game14BaseHIOSectionFP7JKRHeap, global
/* 80164BF0 00161B30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80164BF4 00161B34  7C 08 02 A6 */	mflr r0
/* 80164BF8 00161B38  7C 85 23 78 */	mr r5, r4
/* 80164BFC 00161B3C  3C C0 80 48 */	lis r6, lbl_8047E2A0@ha
/* 80164C00 00161B40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80164C04 00161B44  38 80 00 00 */	li r4, 0
/* 80164C08 00161B48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80164C0C 00161B4C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80164C10 00161B50  3B C6 E2 A0 */	addi r30, r6, lbl_8047E2A0@l
/* 80164C14 00161B54  38 C0 00 00 */	li r6, 0
/* 80164C18 00161B58  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80164C1C 00161B5C  7C 7D 1B 78 */	mr r29, r3
/* 80164C20 00161B60  48 2B EB 55 */	bl __ct__7SectionFP10JFWDisplayP7JKRHeapb
/* 80164C24 00161B64  3C 80 80 4B */	lis r4, __vt__Q24Game14BaseHIOSection@ha
/* 80164C28 00161B68  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80164C2C 00161B6C  38 04 1A 0C */	addi r0, r4, __vt__Q24Game14BaseHIOSection@l
/* 80164C30 00161B70  90 1D 00 00 */	stw r0, 0(r29)
/* 80164C34 00161B74  48 2B D6 AD */	bl assert_fragmentation__6SystemFPc
/* 80164C38 00161B78  38 00 00 00 */	li r0, 0
/* 80164C3C 00161B7C  90 1D 00 3C */	stw r0, 0x58(r29)
/* 80164C40 00161B80  80 6D 88 2C */	lwz r3, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80164C44 00161B84  4B EB EB 71 */	bl getFreeSize__7JKRHeapFv
/* 80164C48 00161B88  7C 7F 1B 78 */	mr r31, r3
/* 80164C4C 00161B8C  80 6D 88 2C */	lwz r3, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80164C50 00161B90  4B EB EB 91 */	bl getTotalFreeSize__7JKRHeapFv
/* 80164C54 00161B94  7C 1F 18 40 */	cmplw r31, r3
/* 80164C58 00161B98  41 82 00 18 */	beq .L_80164C70
/* 80164C5C 00161B9C  38 7E 00 2C */	addi r3, r30, 0x2c
/* 80164C60 00161BA0  38 BE 00 40 */	addi r5, r30, 0x40
/* 80164C64 00161BA4  38 80 01 3A */	li r4, 0x13a
/* 80164C68 00161BA8  4C C6 31 82 */	crclr 6
/* 80164C6C 00161BAC  4B EC 59 D5 */	bl panic_f__12JUTExceptionFPCciPCce
.L_80164C70:
/* 80164C70 00161BB0  38 60 00 B0 */	li r3, 0xb0
/* 80164C74 00161BB4  4B EB F2 31 */	bl __nw__FUl
/* 80164C78 00161BB8  7C 60 1B 79 */	or. r0, r3, r3
/* 80164C7C 00161BBC  41 82 00 10 */	beq .L_80164C8C
/* 80164C80 00161BC0  38 80 00 03 */	li r4, 3
/* 80164C84 00161BC4  48 2C 01 D1 */	bl __ct__10ControllerFQ210JUTGamePad8EPadPort
/* 80164C88 00161BC8  7C 60 1B 78 */	mr r0, r3
.L_80164C8C:
/* 80164C8C 00161BCC  90 1D 00 44 */	stw r0, 0x60(r29)
/* 80164C90 00161BD0  7F A3 EB 78 */	mr r3, r29
/* 80164C94 00161BD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80164C98 00161BD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80164C9C 00161BDC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80164CA0 00161BE0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80164CA4 00161BE4  7C 08 03 A6 */	mtlr r0
/* 80164CA8 00161BE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80164CAC 00161BEC  4E 80 00 20 */	blr 
.endfn __ct__Q24Game14BaseHIOSectionFP7JKRHeap
.else
.fn __ct__Q24Game14BaseHIOSectionFP7JKRHeap, global
/* 80164BF0 00161B30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80164BF4 00161B34  7C 08 02 A6 */	mflr r0
/* 80164BF8 00161B38  7C 85 23 78 */	mr r5, r4
/* 80164BFC 00161B3C  3C C0 80 48 */	lis r6, lbl_8047E2A0@ha
/* 80164C00 00161B40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80164C04 00161B44  38 80 00 00 */	li r4, 0
/* 80164C08 00161B48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80164C0C 00161B4C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80164C10 00161B50  3B C6 E2 A0 */	addi r30, r6, lbl_8047E2A0@l
/* 80164C14 00161B54  38 C0 00 00 */	li r6, 0
/* 80164C18 00161B58  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80164C1C 00161B5C  7C 7D 1B 78 */	mr r29, r3
/* 80164C20 00161B60  48 2B EB 55 */	bl __ct__7SectionFP10JFWDisplayP7JKRHeapb
/* 80164C24 00161B64  3C 80 80 4B */	lis r4, __vt__Q24Game14BaseHIOSection@ha
/* 80164C28 00161B68  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80164C2C 00161B6C  38 04 1A 0C */	addi r0, r4, __vt__Q24Game14BaseHIOSection@l
/* 80164C30 00161B70  90 1D 00 00 */	stw r0, 0(r29)
/* 80164C34 00161B74  48 2B D6 AD */	bl assert_fragmentation__6SystemFPc
/* 80164C38 00161B78  38 00 00 00 */	li r0, 0
/* 80164C3C 00161B7C  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 80164C40 00161B80  80 6D 88 2C */	lwz r3, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80164C44 00161B84  4B EB EB 71 */	bl getFreeSize__7JKRHeapFv
/* 80164C48 00161B88  7C 7F 1B 78 */	mr r31, r3
/* 80164C4C 00161B8C  80 6D 88 2C */	lwz r3, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80164C50 00161B90  4B EB EB 91 */	bl getTotalFreeSize__7JKRHeapFv
/* 80164C54 00161B94  7C 1F 18 40 */	cmplw r31, r3
/* 80164C58 00161B98  41 82 00 18 */	beq .L_80164C70
/* 80164C5C 00161B9C  38 7E 00 2C */	addi r3, r30, 0x2c
/* 80164C60 00161BA0  38 BE 00 40 */	addi r5, r30, 0x40
/* 80164C64 00161BA4  38 80 01 3A */	li r4, 0x13a
/* 80164C68 00161BA8  4C C6 31 82 */	crclr 6
/* 80164C6C 00161BAC  4B EC 59 D5 */	bl panic_f__12JUTExceptionFPCciPCce
.L_80164C70:
/* 80164C70 00161BB0  38 60 00 B0 */	li r3, 0xb0
/* 80164C74 00161BB4  4B EB F2 31 */	bl __nw__FUl
/* 80164C78 00161BB8  7C 60 1B 79 */	or. r0, r3, r3
/* 80164C7C 00161BBC  41 82 00 10 */	beq .L_80164C8C
/* 80164C80 00161BC0  38 80 00 03 */	li r4, 3
/* 80164C84 00161BC4  48 2C 01 D1 */	bl __ct__10ControllerFQ210JUTGamePad8EPadPort
/* 80164C88 00161BC8  7C 60 1B 78 */	mr r0, r3
.L_80164C8C:
/* 80164C8C 00161BCC  90 1D 00 44 */	stw r0, 0x44(r29)
/* 80164C90 00161BD0  7F A3 EB 78 */	mr r3, r29
/* 80164C94 00161BD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80164C98 00161BD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80164C9C 00161BDC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80164CA0 00161BE0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80164CA4 00161BE4  7C 08 03 A6 */	mtlr r0
/* 80164CA8 00161BE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80164CAC 00161BEC  4E 80 00 20 */	blr 
.endfn __ct__Q24Game14BaseHIOSectionFP7JKRHeap
.endif

.if version == 1
.fn __dt__Q24Game14BaseHIOSectionFv, global
/* 80164CB0 00161BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80164CB4 00161BF4  7C 08 02 A6 */	mflr r0
/* 80164CB8 00161BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80164CBC 00161BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80164CC0 00161C00  7C 9F 23 78 */	mr r31, r4
/* 80164CC4 00161C04  93 C1 00 08 */	stw r30, 8(r1)
/* 80164CC8 00161C08  7C 7E 1B 79 */	or. r30, r3, r3
/* 80164CCC 00161C0C  41 82 00 8C */	beq .L_80164D58
/* 80164CD0 00161C10  3C 60 80 4B */	lis r3, __vt__Q24Game14BaseHIOSection@ha
/* 80164CD4 00161C14  38 03 1A 0C */	addi r0, r3, __vt__Q24Game14BaseHIOSection@l
/* 80164CD8 00161C18  90 1E 00 00 */	stw r0, 0(r30)
/* 80164CDC 00161C1C  80 7E 00 3C */	lwz r3, 0x58(r30)
/* 80164CE0 00161C20  28 03 00 00 */	cmplwi r3, 0
/* 80164CE4 00161C24  41 82 00 28 */	beq .L_80164D0C
/* 80164CE8 00161C28  48 2A C8 E9 */	bl del__5CNodeFv
/* 80164CEC 00161C2C  80 7E 00 3C */	lwz r3, 0x58(r30)
/* 80164CF0 00161C30  28 03 00 00 */	cmplwi r3, 0
/* 80164CF4 00161C34  41 82 00 18 */	beq .L_80164D0C
/* 80164CF8 00161C38  81 83 00 00 */	lwz r12, 0(r3)
/* 80164CFC 00161C3C  38 80 00 01 */	li r4, 1
/* 80164D00 00161C40  81 8C 00 08 */	lwz r12, 8(r12)
/* 80164D04 00161C44  7D 89 03 A6 */	mtctr r12
/* 80164D08 00161C48  4E 80 04 21 */	bctrl 
.L_80164D0C:
/* 80164D0C 00161C4C  38 00 00 00 */	li r0, 0
/* 80164D10 00161C50  90 1E 00 3C */	stw r0, 0x58(r30)
/* 80164D14 00161C54  80 7E 00 44 */	lwz r3, 0x60(r30)
/* 80164D18 00161C58  28 03 00 00 */	cmplwi r3, 0
/* 80164D1C 00161C5C  41 82 00 18 */	beq .L_80164D34
/* 80164D20 00161C60  81 83 00 00 */	lwz r12, 0(r3)
/* 80164D24 00161C64  38 80 00 01 */	li r4, 1
/* 80164D28 00161C68  81 8C 00 08 */	lwz r12, 8(r12)
/* 80164D2C 00161C6C  7D 89 03 A6 */	mtctr r12
/* 80164D30 00161C70  4E 80 04 21 */	bctrl 
.L_80164D34:
/* 80164D34 00161C74  38 00 00 00 */	li r0, 0
/* 80164D38 00161C78  7F C3 F3 78 */	mr r3, r30
/* 80164D3C 00161C7C  90 1E 00 44 */	stw r0, 0x60(r30)
/* 80164D40 00161C80  38 80 00 00 */	li r4, 0
/* 80164D44 00161C84  48 2B EC 61 */	bl __dt__7SectionFv
/* 80164D48 00161C88  7F E0 07 35 */	extsh. r0, r31
/* 80164D4C 00161C8C  40 81 00 0C */	ble .L_80164D58
/* 80164D50 00161C90  7F C3 F3 78 */	mr r3, r30
/* 80164D54 00161C94  4B EB F3 61 */	bl __dl__FPv
.L_80164D58:
/* 80164D58 00161C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80164D5C 00161C9C  7F C3 F3 78 */	mr r3, r30
/* 80164D60 00161CA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80164D64 00161CA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80164D68 00161CA8  7C 08 03 A6 */	mtlr r0
/* 80164D6C 00161CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80164D70 00161CB0  4E 80 00 20 */	blr 
.endfn __dt__Q24Game14BaseHIOSectionFv
.else
.fn __dt__Q24Game14BaseHIOSectionFv, global
/* 80164CB0 00161BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80164CB4 00161BF4  7C 08 02 A6 */	mflr r0
/* 80164CB8 00161BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80164CBC 00161BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80164CC0 00161C00  7C 9F 23 78 */	mr r31, r4
/* 80164CC4 00161C04  93 C1 00 08 */	stw r30, 8(r1)
/* 80164CC8 00161C08  7C 7E 1B 79 */	or. r30, r3, r3
/* 80164CCC 00161C0C  41 82 00 8C */	beq .L_80164D58
/* 80164CD0 00161C10  3C 60 80 4B */	lis r3, __vt__Q24Game14BaseHIOSection@ha
/* 80164CD4 00161C14  38 03 1A 0C */	addi r0, r3, __vt__Q24Game14BaseHIOSection@l
/* 80164CD8 00161C18  90 1E 00 00 */	stw r0, 0(r30)
/* 80164CDC 00161C1C  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 80164CE0 00161C20  28 03 00 00 */	cmplwi r3, 0
/* 80164CE4 00161C24  41 82 00 28 */	beq .L_80164D0C
/* 80164CE8 00161C28  48 2A C8 E9 */	bl del__5CNodeFv
/* 80164CEC 00161C2C  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 80164CF0 00161C30  28 03 00 00 */	cmplwi r3, 0
/* 80164CF4 00161C34  41 82 00 18 */	beq .L_80164D0C
/* 80164CF8 00161C38  81 83 00 00 */	lwz r12, 0(r3)
/* 80164CFC 00161C3C  38 80 00 01 */	li r4, 1
/* 80164D00 00161C40  81 8C 00 08 */	lwz r12, 8(r12)
/* 80164D04 00161C44  7D 89 03 A6 */	mtctr r12
/* 80164D08 00161C48  4E 80 04 21 */	bctrl 
.L_80164D0C:
/* 80164D0C 00161C4C  38 00 00 00 */	li r0, 0
/* 80164D10 00161C50  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80164D14 00161C54  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 80164D18 00161C58  28 03 00 00 */	cmplwi r3, 0
/* 80164D1C 00161C5C  41 82 00 18 */	beq .L_80164D34
/* 80164D20 00161C60  81 83 00 00 */	lwz r12, 0(r3)
/* 80164D24 00161C64  38 80 00 01 */	li r4, 1
/* 80164D28 00161C68  81 8C 00 08 */	lwz r12, 8(r12)
/* 80164D2C 00161C6C  7D 89 03 A6 */	mtctr r12
/* 80164D30 00161C70  4E 80 04 21 */	bctrl 
.L_80164D34:
/* 80164D34 00161C74  38 00 00 00 */	li r0, 0
/* 80164D38 00161C78  7F C3 F3 78 */	mr r3, r30
/* 80164D3C 00161C7C  90 1E 00 44 */	stw r0, 0x44(r30)
/* 80164D40 00161C80  38 80 00 00 */	li r4, 0
/* 80164D44 00161C84  48 2B EC 61 */	bl __dt__7SectionFv
/* 80164D48 00161C88  7F E0 07 35 */	extsh. r0, r31
/* 80164D4C 00161C8C  40 81 00 0C */	ble .L_80164D58
/* 80164D50 00161C90  7F C3 F3 78 */	mr r3, r30
/* 80164D54 00161C94  4B EB F3 61 */	bl __dl__FPv
.L_80164D58:
/* 80164D58 00161C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80164D5C 00161C9C  7F C3 F3 78 */	mr r3, r30
/* 80164D60 00161CA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80164D64 00161CA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80164D68 00161CA8  7C 08 03 A6 */	mtlr r0
/* 80164D6C 00161CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80164D70 00161CB0  4E 80 00 20 */	blr 
.endfn __dt__Q24Game14BaseHIOSectionFv
.endif

.fn __dt__Q24Game11HIORootNodeFv, weak
/* 80164D74 00161CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80164D78 00161CB8  7C 08 02 A6 */	mflr r0
/* 80164D7C 00161CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80164D80 00161CC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80164D84 00161CC4  7C 9F 23 78 */	mr r31, r4
/* 80164D88 00161CC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80164D8C 00161CCC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80164D90 00161CD0  41 82 00 28 */	beq .L_80164DB8
/* 80164D94 00161CD4  3C A0 80 4B */	lis r5, __vt__Q24Game11HIORootNode@ha
/* 80164D98 00161CD8  38 80 00 00 */	li r4, 0
/* 80164D9C 00161CDC  38 05 19 FC */	addi r0, r5, __vt__Q24Game11HIORootNode@l
/* 80164DA0 00161CE0  90 1E 00 00 */	stw r0, 0(r30)
/* 80164DA4 00161CE4  48 2A C7 E5 */	bl __dt__5CNodeFv
/* 80164DA8 00161CE8  7F E0 07 35 */	extsh. r0, r31
/* 80164DAC 00161CEC  40 81 00 0C */	ble .L_80164DB8
/* 80164DB0 00161CF0  7F C3 F3 78 */	mr r3, r30
/* 80164DB4 00161CF4  4B EB F3 01 */	bl __dl__FPv
.L_80164DB8:
/* 80164DB8 00161CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80164DBC 00161CFC  7F C3 F3 78 */	mr r3, r30
/* 80164DC0 00161D00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80164DC4 00161D04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80164DC8 00161D08  7C 08 03 A6 */	mtlr r0
/* 80164DCC 00161D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80164DD0 00161D10  4E 80 00 20 */	blr 
.endfn __dt__Q24Game11HIORootNodeFv

.fn setDisplay__Q24Game14BaseHIOSectionFP10JFWDisplayi, global
/* 80164DD4 00161D14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80164DD8 00161D18  7C 08 02 A6 */	mflr r0
/* 80164DDC 00161D1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80164DE0 00161D20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80164DE4 00161D24  7C BF 2B 78 */	mr r31, r5
/* 80164DE8 00161D28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80164DEC 00161D2C  7C 7E 1B 78 */	mr r30, r3
/* 80164DF0 00161D30  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80164DF4 00161D34  7C 9D 23 78 */	mr r29, r4
/* 80164DF8 00161D38  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80164DFC 00161D3C  38 60 00 00 */	li r3, 0
/* 80164E00 00161D40  28 00 00 00 */	cmplwi r0, 0
/* 80164E04 00161D44  40 82 00 10 */	bne .L_80164E14
/* 80164E08 00161D48  28 1D 00 00 */	cmplwi r29, 0
/* 80164E0C 00161D4C  41 82 00 08 */	beq .L_80164E14
/* 80164E10 00161D50  38 60 00 01 */	li r3, 1
.L_80164E14:
/* 80164E14 00161D54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80164E18 00161D58  40 82 00 20 */	bne .L_80164E38
/* 80164E1C 00161D5C  3C 60 80 48 */	lis r3, lbl_8047E2CC@ha
/* 80164E20 00161D60  3C A0 80 48 */	lis r5, lbl_8047E308@ha
/* 80164E24 00161D64  38 63 E2 CC */	addi r3, r3, lbl_8047E2CC@l
/* 80164E28 00161D68  38 80 01 4D */	li r4, 0x14d
/* 80164E2C 00161D6C  38 A5 E3 08 */	addi r5, r5, lbl_8047E308@l
/* 80164E30 00161D70  4C C6 31 82 */	crclr 6
/* 80164E34 00161D74  4B EC 58 0D */	bl panic_f__12JUTExceptionFPCciPCce
.L_80164E38:
/* 80164E38 00161D78  93 BE 00 24 */	stw r29, 0x24(r30)
/* 80164E3C 00161D7C  38 60 00 28 */	li r3, 0x28
/* 80164E40 00161D80  4B EB F0 65 */	bl __nw__FUl
/* 80164E44 00161D84  7C 60 1B 79 */	or. r0, r3, r3
/* 80164E48 00161D88  41 82 00 44 */	beq .L_80164E8C
/* 80164E4C 00161D8C  38 00 00 00 */	li r0, 0
/* 80164E50 00161D90  80 CD 89 20 */	lwz r6, sManager__8JUTVideo@sda21(r13)
/* 80164E54 00161D94  98 01 00 08 */	stb r0, 8(r1)
/* 80164E58 00161D98  39 01 00 0C */	addi r8, r1, 0xc
/* 80164E5C 00161D9C  38 80 00 00 */	li r4, 0
/* 80164E60 00161DA0  38 A0 00 00 */	li r5, 0
/* 80164E64 00161DA4  98 01 00 09 */	stb r0, 9(r1)
/* 80164E68 00161DA8  98 01 00 0A */	stb r0, 0xa(r1)
/* 80164E6C 00161DAC  98 01 00 0B */	stb r0, 0xb(r1)
/* 80164E70 00161DB0  80 01 00 08 */	lwz r0, 8(r1)
/* 80164E74 00161DB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80164E78 00161DB8  80 E6 00 04 */	lwz r7, 4(r6)
/* 80164E7C 00161DBC  A0 C7 00 04 */	lhz r6, 4(r7)
/* 80164E80 00161DC0  A0 E7 00 06 */	lhz r7, 6(r7)
/* 80164E84 00161DC4  4B EC 7F D9 */	bl __ct__8JUTFaderFiiiiQ28JUtility6TColor
/* 80164E88 00161DC8  7C 60 1B 78 */	mr r0, r3
.L_80164E8C:
/* 80164E8C 00161DCC  90 1E 00 28 */	stw r0, 0x28(r30)
/* 80164E90 00161DD0  38 00 00 01 */	li r0, 1
/* 80164E94 00161DD4  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 80164E98 00161DD8  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80164E9C 00161DDC  90 83 00 04 */	stw r4, 4(r3)
/* 80164EA0 00161DE0  98 1E 00 35 */	stb r0, 0x35(r30)
/* 80164EA4 00161DE4  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80164EA8 00161DE8  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 80164EAC 00161DEC  48 2B E1 C5 */	bl setCurrentDisplay__6SystemFP10JFWDisplay
/* 80164EB0 00161DF0  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80164EB4 00161DF4  7F E4 FB 78 */	mr r4, r31
/* 80164EB8 00161DF8  48 2B E6 75 */	bl setFrameRate__6SystemFi
/* 80164EBC 00161DFC  80 6D 89 E8 */	lwz r3, sManager__10JFWDisplay@sda21(r13)
/* 80164EC0 00161E00  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80164EC4 00161E04  83 C3 00 00 */	lwz r30, 0(r3)
/* 80164EC8 00161E08  4B EC F0 69 */	bl accumeXfbSize__6JUTXfbFv
/* 80164ECC 00161E0C  7C 64 1B 78 */	mr r4, r3
/* 80164ED0 00161E10  7F C3 F3 78 */	mr r3, r30
/* 80164ED4 00161E14  4B F8 78 19 */	bl DCInvalidateRange
/* 80164ED8 00161E18  80 6D 89 E8 */	lwz r3, sManager__10JFWDisplay@sda21(r13)
/* 80164EDC 00161E1C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80164EE0 00161E20  83 C3 00 04 */	lwz r30, 4(r3)
/* 80164EE4 00161E24  4B EC F0 4D */	bl accumeXfbSize__6JUTXfbFv
/* 80164EE8 00161E28  7C 64 1B 78 */	mr r4, r3
/* 80164EEC 00161E2C  7F C3 F3 78 */	mr r3, r30
/* 80164EF0 00161E30  4B F8 77 FD */	bl DCInvalidateRange
/* 80164EF4 00161E34  80 6D 88 F8 */	lwz r3, sManager__10JUTProcBar@sda21(r13)
/* 80164EF8 00161E38  38 00 00 00 */	li r0, 0
/* 80164EFC 00161E3C  98 03 01 0C */	stb r0, 0x10c(r3)
/* 80164F00 00161E40  80 6D 88 F8 */	lwz r3, sManager__10JUTProcBar@sda21(r13)
/* 80164F04 00161E44  98 03 01 30 */	stb r0, 0x130(r3)
/* 80164F08 00161E48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80164F0C 00161E4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80164F10 00161E50  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80164F14 00161E54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80164F18 00161E58  7C 08 03 A6 */	mtlr r0
/* 80164F1C 00161E5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80164F20 00161E60  4E 80 00 20 */	blr 
.endfn setDisplay__Q24Game14BaseHIOSectionFP10JFWDisplayi

.if version == 1
.fn initHIO__Q24Game14BaseHIOSectionFPQ24Game11HIORootNode, global
/* 80164F24 00161E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80164F28 00161E68  7C 08 02 A6 */	mflr r0
/* 80164F2C 00161E6C  28 04 00 00 */	cmplwi r4, 0
/* 80164F30 00161E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80164F34 00161E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80164F38 00161E78  7C 7F 1B 78 */	mr r31, r3
/* 80164F3C 00161E7C  40 82 00 28 */	bne .L_80164F64
/* 80164F40 00161E80  38 60 00 1C */	li r3, 0x1c
/* 80164F44 00161E84  4B EB EF 61 */	bl __nw__FUl
/* 80164F48 00161E88  7C 60 1B 79 */	or. r0, r3, r3
/* 80164F4C 00161E8C  41 82 00 10 */	beq .L_80164F5C
/* 80164F50 00161E90  7F E4 FB 78 */	mr r4, r31
/* 80164F54 00161E94  48 00 00 85 */	bl __ct__Q24Game11HIORootNodeFP7Section
/* 80164F58 00161E98  7C 60 1B 78 */	mr r0, r3
.L_80164F5C:
/* 80164F5C 00161E9C  90 1F 00 3C */	stw r0, 0x58(r31)
/* 80164F60 00161EA0  48 00 00 08 */	b .L_80164F68
.L_80164F64:
/* 80164F64 00161EA4  90 9F 00 3C */	stw r4, 0x58(r31)
.L_80164F68:
/* 80164F68 00161EA8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80164F6C 00161EAC  80 9F 00 3C */	lwz r4, 0x58(r31)
/* 80164F70 00161EB0  48 2B E5 B1 */	bl addGenNode__6SystemFP5CNode
/* 80164F74 00161EB4  80 6D 88 F8 */	lwz r3, sManager__10JUTProcBar@sda21(r13)
/* 80164F78 00161EB8  28 03 00 00 */	cmplwi r3, 0
/* 80164F7C 00161EBC  41 82 00 14 */	beq .L_80164F90
/* 80164F80 00161EC0  38 00 00 00 */	li r0, 0
/* 80164F84 00161EC4  98 03 01 0C */	stb r0, 0x10c(r3)
/* 80164F88 00161EC8  80 6D 88 F8 */	lwz r3, sManager__10JUTProcBar@sda21(r13)
/* 80164F8C 00161ECC  98 03 01 30 */	stb r0, 0x130(r3)
.L_80164F90:
/* 80164F90 00161ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80164F94 00161ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80164F98 00161ED8  7C 08 03 A6 */	mtlr r0
/* 80164F9C 00161EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80164FA0 00161EE0  4E 80 00 20 */	blr 
.endfn initHIO__Q24Game14BaseHIOSectionFPQ24Game11HIORootNode
.else
.fn initHIO__Q24Game14BaseHIOSectionFPQ24Game11HIORootNode, global
/* 80164F24 00161E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80164F28 00161E68  7C 08 02 A6 */	mflr r0
/* 80164F2C 00161E6C  28 04 00 00 */	cmplwi r4, 0
/* 80164F30 00161E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80164F34 00161E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80164F38 00161E78  7C 7F 1B 78 */	mr r31, r3
/* 80164F3C 00161E7C  40 82 00 28 */	bne .L_80164F64
/* 80164F40 00161E80  38 60 00 1C */	li r3, 0x1c
/* 80164F44 00161E84  4B EB EF 61 */	bl __nw__FUl
/* 80164F48 00161E88  7C 60 1B 79 */	or. r0, r3, r3
/* 80164F4C 00161E8C  41 82 00 10 */	beq .L_80164F5C
/* 80164F50 00161E90  7F E4 FB 78 */	mr r4, r31
/* 80164F54 00161E94  48 00 00 85 */	bl __ct__Q24Game11HIORootNodeFP7Section
/* 80164F58 00161E98  7C 60 1B 78 */	mr r0, r3
.L_80164F5C:
/* 80164F5C 00161E9C  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80164F60 00161EA0  48 00 00 08 */	b .L_80164F68
.L_80164F64:
/* 80164F64 00161EA4  90 9F 00 3C */	stw r4, 0x3c(r31)
.L_80164F68:
/* 80164F68 00161EA8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80164F6C 00161EAC  80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 80164F70 00161EB0  48 2B E5 B1 */	bl addGenNode__6SystemFP5CNode
/* 80164F74 00161EB4  80 6D 88 F8 */	lwz r3, sManager__10JUTProcBar@sda21(r13)
/* 80164F78 00161EB8  28 03 00 00 */	cmplwi r3, 0
/* 80164F7C 00161EBC  41 82 00 14 */	beq .L_80164F90
/* 80164F80 00161EC0  38 00 00 00 */	li r0, 0
/* 80164F84 00161EC4  98 03 01 0C */	stb r0, 0x10c(r3)
/* 80164F88 00161EC8  80 6D 88 F8 */	lwz r3, sManager__10JUTProcBar@sda21(r13)
/* 80164F8C 00161ECC  98 03 01 30 */	stb r0, 0x130(r3)
.L_80164F90:
/* 80164F90 00161ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80164F94 00161ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80164F98 00161ED8  7C 08 03 A6 */	mtlr r0
/* 80164F9C 00161EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80164FA0 00161EE0  4E 80 00 20 */	blr 
.endfn initHIO__Q24Game14BaseHIOSectionFPQ24Game11HIORootNode
.endif

.fn createScreenRootNode__Q24Game14BaseHIOSectionFv, global
/* 80164FA4 00161EE4  4E 80 00 20 */	blr 
.endfn createScreenRootNode__Q24Game14BaseHIOSectionFv

.fn doUpdate__Q24Game14BaseHIOSectionFv, global
/* 80164FA8 00161EE8  38 60 00 01 */	li r3, 1
/* 80164FAC 00161EEC  4E 80 00 20 */	blr 
.endfn doUpdate__Q24Game14BaseHIOSectionFv

.if version == 1
.fn addGenNode__Q24Game14BaseHIOSectionFP5CNode, global
/* 80164FB0 00161EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80164FB4 00161EF4  7C 08 02 A6 */	mflr r0
/* 80164FB8 00161EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80164FBC 00161EFC  80 63 00 3C */	lwz r3, 0x58(r3)
/* 80164FC0 00161F00  48 2A C4 49 */	bl add__5CNodeFP5CNode
/* 80164FC4 00161F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80164FC8 00161F08  7C 08 03 A6 */	mtlr r0
/* 80164FCC 00161F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80164FD0 00161F10  4E 80 00 20 */	blr 
.endfn addGenNode__Q24Game14BaseHIOSectionFP5CNode
.else
.fn addGenNode__Q24Game14BaseHIOSectionFP5CNode, global
/* 80164FB0 00161EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80164FB4 00161EF4  7C 08 02 A6 */	mflr r0
/* 80164FB8 00161EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80164FBC 00161EFC  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 80164FC0 00161F00  48 2A C4 49 */	bl add__5CNodeFP5CNode
/* 80164FC4 00161F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80164FC8 00161F08  7C 08 03 A6 */	mtlr r0
/* 80164FCC 00161F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80164FD0 00161F10  4E 80 00 20 */	blr 
.endfn addGenNode__Q24Game14BaseHIOSectionFP5CNode
.endif

.fn refreshHIO__Q24Game14BaseHIOSectionFv, global
/* 80164FD4 00161F14  4E 80 00 20 */	blr 
.endfn refreshHIO__Q24Game14BaseHIOSectionFv

.fn __ct__Q24Game11HIORootNodeFP7Section, global
/* 80164FD8 00161F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80164FDC 00161F1C  7C 08 02 A6 */	mflr r0
/* 80164FE0 00161F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80164FE4 00161F24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80164FE8 00161F28  7C 9F 23 78 */	mr r31, r4
/* 80164FEC 00161F2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80164FF0 00161F30  7C 7E 1B 78 */	mr r30, r3
/* 80164FF4 00161F34  48 2A C3 9D */	bl __ct__5CNodeFv
/* 80164FF8 00161F38  3C 60 80 4B */	lis r3, __vt__Q24Game11HIORootNode@ha
/* 80164FFC 00161F3C  38 02 A5 78 */	addi r0, r2, lbl_805188D8@sda21
/* 80165000 00161F40  38 83 19 FC */	addi r4, r3, __vt__Q24Game11HIORootNode@l
/* 80165004 00161F44  7F C3 F3 78 */	mr r3, r30
/* 80165008 00161F48  90 9E 00 00 */	stw r4, 0(r30)
/* 8016500C 00161F4C  93 FE 00 18 */	stw r31, 0x18(r30)
/* 80165010 00161F50  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80165014 00161F54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80165018 00161F58  83 C1 00 08 */	lwz r30, 8(r1)
/* 8016501C 00161F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80165020 00161F60  7C 08 03 A6 */	mtlr r0
/* 80165024 00161F64  38 21 00 10 */	addi r1, r1, 0x10
/* 80165028 00161F68  4E 80 00 20 */	blr 
.endfn __ct__Q24Game11HIORootNodeFP7Section

.fn drawInit__7SectionFR8GraphicsQ27Section13EDrawInitMode, weak
/* 8016502C 00161F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80165030 00161F70  7C 08 02 A6 */	mflr r0
/* 80165034 00161F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80165038 00161F78  81 83 00 00 */	lwz r12, 0(r3)
/* 8016503C 00161F7C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80165040 00161F80  7D 89 03 A6 */	mtctr r12
/* 80165044 00161F84  4E 80 04 21 */	bctrl 
/* 80165048 00161F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016504C 00161F8C  7C 08 03 A6 */	mtlr r0
/* 80165050 00161F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80165054 00161F94  4E 80 00 20 */	blr 
.endfn drawInit__7SectionFR8GraphicsQ27Section13EDrawInitMode

.fn forceFinish__7SectionFv, weak
/* 80165058 00161F98  38 60 00 00 */	li r3, 0
/* 8016505C 00161F9C  4E 80 00 20 */	blr 
.endfn forceFinish__7SectionFv

.fn __sinit_baseHIOSection_cpp, local
/* 80165060 00161FA0  3C 80 80 51 */	lis r4, __float_nan@ha
/* 80165064 00161FA4  38 00 FF FF */	li r0, -1
/* 80165068 00161FA8  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 8016506C 00161FAC  3C 60 80 4B */	lis r3, govNAN___Q24Game5P2JST@ha
/* 80165070 00161FB0  90 0D 93 10 */	stw r0, gu32NAN___Q24Game5P2JST@sda21(r13)
/* 80165074 00161FB4  D4 03 19 F0 */	stfsu f0, govNAN___Q24Game5P2JST@l(r3)
/* 80165078 00161FB8  D0 0D 93 14 */	stfs f0, gfNAN___Q24Game5P2JST@sda21(r13)
/* 8016507C 00161FBC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80165080 00161FC0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80165084 00161FC4  4E 80 00 20 */	blr 
.endfn __sinit_baseHIOSection_cpp
