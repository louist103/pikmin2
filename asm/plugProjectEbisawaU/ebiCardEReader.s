.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 0x8
.global __vt__Q33ebi11CardEReader4TMgr
__vt__Q33ebi11CardEReader4TMgr:
	.4byte 0
	.4byte 0
	.4byte __dt__Q33ebi11CardEReader4TMgrFv
	.4byte 0

.section .sdata, "wa"  # 0x80514680 - 0x80514D80
.balign 0x8
.global cInitialCode__Q23ebi11CardEReader
cInitialCode__Q23ebi11CardEReader:
	.ascii "PSAJ"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global gCardEMgr_ThreadFunc__3ebiFPv
gCardEMgr_ThreadFunc__3ebiFPv:
/* 803ECB40 003E9A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ECB44 003E9A84  7C 08 02 A6 */	mflr r0
/* 803ECB48 003E9A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ECB4C 003E9A8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ECB50 003E9A90  7C 7F 1B 78 */	mr r31, r3
/* 803ECB54 003E9A94  80 0D 9A 98 */	lwz r0, gCardEMgr__3ebi@sda21(r13)
/* 803ECB58 003E9A98  28 00 00 00 */	cmplwi r0, 0
/* 803ECB5C 003E9A9C  40 82 00 20 */	bne lbl_803ECB7C
/* 803ECB60 003E9AA0  3C 60 80 49 */	lis r3, lbl_80497988@ha
/* 803ECB64 003E9AA4  3C A0 80 49 */	lis r5, lbl_8049799C@ha
/* 803ECB68 003E9AA8  38 63 79 88 */	addi r3, r3, lbl_80497988@l
/* 803ECB6C 003E9AAC  38 80 00 10 */	li r4, 0x10
/* 803ECB70 003E9AB0  38 A5 79 9C */	addi r5, r5, lbl_8049799C@l
/* 803ECB74 003E9AB4  4C C6 31 82 */	crclr 6
/* 803ECB78 003E9AB8  4B C3 DA C9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_803ECB7C:
/* 803ECB7C 003E9ABC  80 6D 9A 98 */	lwz r3, gCardEMgr__3ebi@sda21(r13)
/* 803ECB80 003E9AC0  7F E4 FB 78 */	mr r4, r31
/* 803ECB84 003E9AC4  48 00 06 4D */	bl threadProc__Q33ebi11CardEReader4TMgrFPv
/* 803ECB88 003E9AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ECB8C 003E9ACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ECB90 003E9AD0  7C 08 03 A6 */	mtlr r0
/* 803ECB94 003E9AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 803ECB98 003E9AD8  4E 80 00 20 */	blr 

.global CardE_uploadToGBA__Q23ebi11CardEReaderFlPUcUl
CardE_uploadToGBA__Q23ebi11CardEReaderFlPUcUl:
/* 803ECB9C 003E9ADC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803ECBA0 003E9AE0  7C 08 02 A6 */	mflr r0
/* 803ECBA4 003E9AE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803ECBA8 003E9AE8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803ECBAC 003E9AEC  7C BF 2B 78 */	mr r31, r5
/* 803ECBB0 003E9AF0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803ECBB4 003E9AF4  7C 9E 23 78 */	mr r30, r4
/* 803ECBB8 003E9AF8  38 81 00 08 */	addi r4, r1, 8
/* 803ECBBC 003E9AFC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803ECBC0 003E9B00  7C 7D 1B 78 */	mr r29, r3
/* 803ECBC4 003E9B04  93 81 00 20 */	stw r28, 0x20(r1)
/* 803ECBC8 003E9B08  4B D1 21 09 */	bl GBAReset
/* 803ECBCC 003E9B0C  2C 03 00 00 */	cmpwi r3, 0
/* 803ECBD0 003E9B10  41 82 00 0C */	beq lbl_803ECBDC
/* 803ECBD4 003E9B14  38 60 00 00 */	li r3, 0
/* 803ECBD8 003E9B18  48 00 02 18 */	b lbl_803ECDF0
lbl_803ECBDC:
/* 803ECBDC 003E9B1C  7F A3 EB 78 */	mr r3, r29
/* 803ECBE0 003E9B20  38 81 00 08 */	addi r4, r1, 8
/* 803ECBE4 003E9B24  4B D1 20 5D */	bl GBAGetStatus
/* 803ECBE8 003E9B28  2C 03 00 00 */	cmpwi r3, 0
/* 803ECBEC 003E9B2C  41 82 00 0C */	beq lbl_803ECBF8
/* 803ECBF0 003E9B30  38 60 00 00 */	li r3, 0
/* 803ECBF4 003E9B34  48 00 01 FC */	b lbl_803ECDF0
lbl_803ECBF8:
/* 803ECBF8 003E9B38  88 01 00 08 */	lbz r0, 8(r1)
/* 803ECBFC 003E9B3C  28 00 00 28 */	cmplwi r0, 0x28
/* 803ECC00 003E9B40  41 82 00 0C */	beq lbl_803ECC0C
/* 803ECC04 003E9B44  38 60 00 00 */	li r3, 0
/* 803ECC08 003E9B48  48 00 01 E8 */	b lbl_803ECDF0
lbl_803ECC0C:
/* 803ECC0C 003E9B4C  7F A3 EB 78 */	mr r3, r29
/* 803ECC10 003E9B50  38 81 00 14 */	addi r4, r1, 0x14
/* 803ECC14 003E9B54  38 A1 00 08 */	addi r5, r1, 8
/* 803ECC18 003E9B58  4B D1 21 B9 */	bl GBARead
/* 803ECC1C 003E9B5C  2C 03 00 00 */	cmpwi r3, 0
/* 803ECC20 003E9B60  41 82 00 0C */	beq lbl_803ECC2C
/* 803ECC24 003E9B64  38 60 00 00 */	li r3, 0
/* 803ECC28 003E9B68  48 00 01 C8 */	b lbl_803ECDF0
lbl_803ECC2C:
/* 803ECC2C 003E9B6C  38 8D 86 68 */	addi r4, r13, cInitialCode__Q23ebi11CardEReader@sda21
/* 803ECC30 003E9B70  88 61 00 14 */	lbz r3, 0x14(r1)
/* 803ECC34 003E9B74  88 0D 86 68 */	lbz r0, cInitialCode__Q23ebi11CardEReader@sda21(r13)
/* 803ECC38 003E9B78  7C 03 00 40 */	cmplw r3, r0
/* 803ECC3C 003E9B7C  41 82 00 0C */	beq lbl_803ECC48
/* 803ECC40 003E9B80  38 60 00 00 */	li r3, 0
/* 803ECC44 003E9B84  48 00 01 AC */	b lbl_803ECDF0
lbl_803ECC48:
/* 803ECC48 003E9B88  88 61 00 15 */	lbz r3, 0x15(r1)
/* 803ECC4C 003E9B8C  8C 04 00 01 */	lbzu r0, 1(r4)
/* 803ECC50 003E9B90  7C 03 00 40 */	cmplw r3, r0
/* 803ECC54 003E9B94  41 82 00 0C */	beq lbl_803ECC60
/* 803ECC58 003E9B98  38 60 00 00 */	li r3, 0
/* 803ECC5C 003E9B9C  48 00 01 94 */	b lbl_803ECDF0
lbl_803ECC60:
/* 803ECC60 003E9BA0  88 61 00 16 */	lbz r3, 0x16(r1)
/* 803ECC64 003E9BA4  8C 04 00 01 */	lbzu r0, 1(r4)
/* 803ECC68 003E9BA8  7C 03 00 40 */	cmplw r3, r0
/* 803ECC6C 003E9BAC  41 82 00 0C */	beq lbl_803ECC78
/* 803ECC70 003E9BB0  38 60 00 00 */	li r3, 0
/* 803ECC74 003E9BB4  48 00 01 7C */	b lbl_803ECDF0
lbl_803ECC78:
/* 803ECC78 003E9BB8  88 61 00 17 */	lbz r3, 0x17(r1)
/* 803ECC7C 003E9BBC  88 04 00 01 */	lbz r0, 1(r4)
/* 803ECC80 003E9BC0  7C 03 00 40 */	cmplw r3, r0
/* 803ECC84 003E9BC4  41 82 00 0C */	beq lbl_803ECC90
/* 803ECC88 003E9BC8  38 60 00 00 */	li r3, 0
/* 803ECC8C 003E9BCC  48 00 01 64 */	b lbl_803ECDF0
lbl_803ECC90:
/* 803ECC90 003E9BD0  7F A3 EB 78 */	mr r3, r29
/* 803ECC94 003E9BD4  38 81 00 08 */	addi r4, r1, 8
/* 803ECC98 003E9BD8  4B D1 1F A9 */	bl GBAGetStatus
/* 803ECC9C 003E9BDC  2C 03 00 00 */	cmpwi r3, 0
/* 803ECCA0 003E9BE0  41 82 00 0C */	beq lbl_803ECCAC
/* 803ECCA4 003E9BE4  38 60 00 00 */	li r3, 0
/* 803ECCA8 003E9BE8  48 00 01 48 */	b lbl_803ECDF0
lbl_803ECCAC:
/* 803ECCAC 003E9BEC  88 01 00 08 */	lbz r0, 8(r1)
/* 803ECCB0 003E9BF0  28 00 00 20 */	cmplwi r0, 0x20
/* 803ECCB4 003E9BF4  41 82 00 0C */	beq lbl_803ECCC0
/* 803ECCB8 003E9BF8  38 60 00 00 */	li r3, 0
/* 803ECCBC 003E9BFC  48 00 01 34 */	b lbl_803ECDF0
lbl_803ECCC0:
/* 803ECCC0 003E9C00  7F A3 EB 78 */	mr r3, r29
/* 803ECCC4 003E9C04  38 81 00 14 */	addi r4, r1, 0x14
/* 803ECCC8 003E9C08  38 A1 00 08 */	addi r5, r1, 8
/* 803ECCCC 003E9C0C  4B D1 21 C9 */	bl GBAWrite
/* 803ECCD0 003E9C10  2C 03 00 00 */	cmpwi r3, 0
/* 803ECCD4 003E9C14  41 82 00 0C */	beq lbl_803ECCE0
/* 803ECCD8 003E9C18  38 60 00 00 */	li r3, 0
/* 803ECCDC 003E9C1C  48 00 01 14 */	b lbl_803ECDF0
lbl_803ECCE0:
/* 803ECCE0 003E9C20  7F A3 EB 78 */	mr r3, r29
/* 803ECCE4 003E9C24  38 81 00 08 */	addi r4, r1, 8
/* 803ECCE8 003E9C28  4B D1 1F 59 */	bl GBAGetStatus
/* 803ECCEC 003E9C2C  2C 03 00 00 */	cmpwi r3, 0
/* 803ECCF0 003E9C30  41 82 00 0C */	beq lbl_803ECCFC
/* 803ECCF4 003E9C34  38 60 00 00 */	li r3, 0
/* 803ECCF8 003E9C38  48 00 00 F8 */	b lbl_803ECDF0
lbl_803ECCFC:
/* 803ECCFC 003E9C3C  88 01 00 08 */	lbz r0, 8(r1)
/* 803ECD00 003E9C40  28 00 00 30 */	cmplwi r0, 0x30
/* 803ECD04 003E9C44  41 82 00 0C */	beq lbl_803ECD10
/* 803ECD08 003E9C48  38 60 00 00 */	li r3, 0
/* 803ECD0C 003E9C4C  48 00 00 E4 */	b lbl_803ECDF0
lbl_803ECD10:
/* 803ECD10 003E9C50  38 01 00 10 */	addi r0, r1, 0x10
/* 803ECD14 003E9C54  7F A3 EB 78 */	mr r3, r29
/* 803ECD18 003E9C58  7F E0 05 2C */	stwbrx r31, 0, r0
/* 803ECD1C 003E9C5C  38 81 00 10 */	addi r4, r1, 0x10
/* 803ECD20 003E9C60  38 A1 00 08 */	addi r5, r1, 8
/* 803ECD24 003E9C64  4B D1 21 71 */	bl GBAWrite
/* 803ECD28 003E9C68  2C 03 00 00 */	cmpwi r3, 0
/* 803ECD2C 003E9C6C  41 82 00 0C */	beq lbl_803ECD38
/* 803ECD30 003E9C70  38 60 00 00 */	li r3, 0
/* 803ECD34 003E9C74  48 00 00 BC */	b lbl_803ECDF0
lbl_803ECD38:
/* 803ECD38 003E9C78  7F A3 EB 78 */	mr r3, r29
/* 803ECD3C 003E9C7C  38 81 00 0C */	addi r4, r1, 0xc
/* 803ECD40 003E9C80  38 A1 00 08 */	addi r5, r1, 8
/* 803ECD44 003E9C84  4B D1 20 8D */	bl GBARead
/* 803ECD48 003E9C88  2C 03 00 00 */	cmpwi r3, 0
/* 803ECD4C 003E9C8C  41 82 00 0C */	beq lbl_803ECD58
/* 803ECD50 003E9C90  38 60 00 00 */	li r3, 0
/* 803ECD54 003E9C94  48 00 00 9C */	b lbl_803ECDF0
lbl_803ECD58:
/* 803ECD58 003E9C98  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803ECD5C 003E9C9C  54 60 C4 2E */	rlwinm r0, r3, 0x18, 0x10, 0x17
/* 803ECD60 003E9CA0  50 60 46 3E */	rlwimi r0, r3, 8, 0x18, 0x1f
/* 803ECD64 003E9CA4  50 60 42 1E */	rlwimi r0, r3, 8, 8, 0xf
/* 803ECD68 003E9CA8  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 803ECD6C 003E9CAC  7C 1F 00 40 */	cmplw r31, r0
/* 803ECD70 003E9CB0  41 82 00 0C */	beq lbl_803ECD7C
/* 803ECD74 003E9CB4  38 60 00 00 */	li r3, 0
/* 803ECD78 003E9CB8  48 00 00 78 */	b lbl_803ECDF0
lbl_803ECD7C:
/* 803ECD7C 003E9CBC  3B 80 00 00 */	li r28, 0
/* 803ECD80 003E9CC0  48 00 00 64 */	b lbl_803ECDE4
lbl_803ECD84:
/* 803ECD84 003E9CC4  7F A3 EB 78 */	mr r3, r29
/* 803ECD88 003E9CC8  38 81 00 08 */	addi r4, r1, 8
/* 803ECD8C 003E9CCC  4B D1 1E B5 */	bl GBAGetStatus
/* 803ECD90 003E9CD0  2C 03 00 00 */	cmpwi r3, 0
/* 803ECD94 003E9CD4  41 82 00 0C */	beq lbl_803ECDA0
/* 803ECD98 003E9CD8  38 60 00 00 */	li r3, 0
/* 803ECD9C 003E9CDC  48 00 00 54 */	b lbl_803ECDF0
lbl_803ECDA0:
/* 803ECDA0 003E9CE0  88 61 00 08 */	lbz r3, 8(r1)
/* 803ECDA4 003E9CE4  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 803ECDA8 003E9CE8  41 82 00 18 */	beq lbl_803ECDC0
/* 803ECDAC 003E9CEC  54 60 06 B6 */	rlwinm r0, r3, 0, 0x1a, 0x1b
/* 803ECDB0 003E9CF0  2C 00 00 30 */	cmpwi r0, 0x30
/* 803ECDB4 003E9CF4  41 82 FF D0 */	beq lbl_803ECD84
/* 803ECDB8 003E9CF8  38 60 00 00 */	li r3, 0
/* 803ECDBC 003E9CFC  48 00 00 34 */	b lbl_803ECDF0
lbl_803ECDC0:
/* 803ECDC0 003E9D00  7F A3 EB 78 */	mr r3, r29
/* 803ECDC4 003E9D04  7C 9E E2 14 */	add r4, r30, r28
/* 803ECDC8 003E9D08  38 A1 00 08 */	addi r5, r1, 8
/* 803ECDCC 003E9D0C  4B D1 20 C9 */	bl GBAWrite
/* 803ECDD0 003E9D10  2C 03 00 00 */	cmpwi r3, 0
/* 803ECDD4 003E9D14  41 82 00 0C */	beq lbl_803ECDE0
/* 803ECDD8 003E9D18  38 60 00 00 */	li r3, 0
/* 803ECDDC 003E9D1C  48 00 00 14 */	b lbl_803ECDF0
lbl_803ECDE0:
/* 803ECDE0 003E9D20  3B 9C 00 04 */	addi r28, r28, 4
lbl_803ECDE4:
/* 803ECDE4 003E9D24  7C 1C F8 40 */	cmplw r28, r31
/* 803ECDE8 003E9D28  41 80 FF 9C */	blt lbl_803ECD84
/* 803ECDEC 003E9D2C  38 60 00 01 */	li r3, 1
lbl_803ECDF0:
/* 803ECDF0 003E9D30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803ECDF4 003E9D34  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803ECDF8 003E9D38  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803ECDFC 003E9D3C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803ECE00 003E9D40  83 81 00 20 */	lwz r28, 0x20(r1)
/* 803ECE04 003E9D44  7C 08 03 A6 */	mtlr r0
/* 803ECE08 003E9D48  38 21 00 30 */	addi r1, r1, 0x30
/* 803ECE0C 003E9D4C  4E 80 00 20 */	blr 

.global __dt__Q33ebi11CardEReader4TMgrFv
__dt__Q33ebi11CardEReader4TMgrFv:
/* 803ECE10 003E9D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ECE14 003E9D54  7C 08 02 A6 */	mflr r0
/* 803ECE18 003E9D58  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ECE1C 003E9D5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ECE20 003E9D60  7C 9F 23 78 */	mr r31, r4
/* 803ECE24 003E9D64  93 C1 00 08 */	stw r30, 8(r1)
/* 803ECE28 003E9D68  7C 7E 1B 79 */	or. r30, r3, r3
/* 803ECE2C 003E9D6C  41 82 00 30 */	beq lbl_803ECE5C
/* 803ECE30 003E9D70  3C 80 80 4F */	lis r4, __vt__Q33ebi11CardEReader4TMgr@ha
/* 803ECE34 003E9D74  38 00 00 00 */	li r0, 0
/* 803ECE38 003E9D78  38 A4 A1 88 */	addi r5, r4, __vt__Q33ebi11CardEReader4TMgr@l
/* 803ECE3C 003E9D7C  38 80 00 00 */	li r4, 0
/* 803ECE40 003E9D80  90 BE 00 00 */	stw r5, 0(r30)
/* 803ECE44 003E9D84  90 0D 9A 98 */	stw r0, gCardEMgr__3ebi@sda21(r13)
/* 803ECE48 003E9D88  4B C3 01 ED */	bl __dt__11JKRDisposerFv
/* 803ECE4C 003E9D8C  7F E0 07 35 */	extsh. r0, r31
/* 803ECE50 003E9D90  40 81 00 0C */	ble lbl_803ECE5C
/* 803ECE54 003E9D94  7F C3 F3 78 */	mr r3, r30
/* 803ECE58 003E9D98  4B C3 72 5D */	bl __dl__FPv
lbl_803ECE5C:
/* 803ECE5C 003E9D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ECE60 003E9DA0  7F C3 F3 78 */	mr r3, r30
/* 803ECE64 003E9DA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ECE68 003E9DA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803ECE6C 003E9DAC  7C 08 03 A6 */	mtlr r0
/* 803ECE70 003E9DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 803ECE74 003E9DB4  4E 80 00 20 */	blr 

.global globalInstance__Q33ebi11CardEReader4TMgrFv
globalInstance__Q33ebi11CardEReader4TMgrFv:
/* 803ECE78 003E9DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ECE7C 003E9DBC  7C 08 02 A6 */	mflr r0
/* 803ECE80 003E9DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ECE84 003E9DC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ECE88 003E9DC8  80 0D 9A 98 */	lwz r0, gCardEMgr__3ebi@sda21(r13)
/* 803ECE8C 003E9DCC  28 00 00 00 */	cmplwi r0, 0
/* 803ECE90 003E9DD0  40 82 00 40 */	bne lbl_803ECED0
/* 803ECE94 003E9DD4  38 60 00 68 */	li r3, 0x68
/* 803ECE98 003E9DD8  4B C3 70 0D */	bl __nw__FUl
/* 803ECE9C 003E9DDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 803ECEA0 003E9DE0  41 82 00 2C */	beq lbl_803ECECC
/* 803ECEA4 003E9DE4  4B C3 01 29 */	bl __ct__11JKRDisposerFv
/* 803ECEA8 003E9DE8  3C 80 80 4F */	lis r4, __vt__Q33ebi11CardEReader4TMgr@ha
/* 803ECEAC 003E9DEC  38 60 00 00 */	li r3, 0
/* 803ECEB0 003E9DF0  38 84 A1 88 */	addi r4, r4, __vt__Q33ebi11CardEReader4TMgr@l
/* 803ECEB4 003E9DF4  38 00 FF FF */	li r0, -1
/* 803ECEB8 003E9DF8  90 9F 00 00 */	stw r4, 0(r31)
/* 803ECEBC 003E9DFC  90 7F 00 30 */	stw r3, 0x30(r31)
/* 803ECEC0 003E9E00  90 7F 00 34 */	stw r3, 0x34(r31)
/* 803ECEC4 003E9E04  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 803ECEC8 003E9E08  90 1F 00 40 */	stw r0, 0x40(r31)
lbl_803ECECC:
/* 803ECECC 003E9E0C  93 ED 9A 98 */	stw r31, gCardEMgr__3ebi@sda21(r13)
lbl_803ECED0:
/* 803ECED0 003E9E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ECED4 003E9E14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ECED8 003E9E18  7C 08 03 A6 */	mtlr r0
/* 803ECEDC 003E9E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 803ECEE0 003E9E20  4E 80 00 20 */	blr 

.global loadResource__Q33ebi11CardEReader4TMgrFv
loadResource__Q33ebi11CardEReader4TMgrFv:
/* 803ECEE4 003E9E24  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 803ECEE8 003E9E28  7C 08 02 A6 */	mflr r0
/* 803ECEEC 003E9E2C  3C 80 80 49 */	lis r4, lbl_80497978@ha
/* 803ECEF0 003E9E30  90 01 01 24 */	stw r0, 0x124(r1)
/* 803ECEF4 003E9E34  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 803ECEF8 003E9E38  3B E4 79 78 */	addi r31, r4, lbl_80497978@l
/* 803ECEFC 003E9E3C  93 C1 01 18 */	stw r30, 0x118(r1)
/* 803ECF00 003E9E40  7C 7E 1B 78 */	mr r30, r3
/* 803ECF04 003E9E44  93 A1 01 14 */	stw r29, 0x114(r1)
/* 803ECF08 003E9E48  3B A0 00 00 */	li r29, 0
/* 803ECF0C 003E9E4C  93 81 01 10 */	stw r28, 0x110(r1)
lbl_803ECF10:
/* 803ECF10 003E9E50  2C 1D 00 00 */	cmpwi r29, 0
/* 803ECF14 003E9E54  3B 82 1A F8 */	addi r28, r2, lbl_8051FE58@sda21
/* 803ECF18 003E9E58  40 82 00 0C */	bne lbl_803ECF24
/* 803ECF1C 003E9E5C  3B 9F 00 30 */	addi r28, r31, 0x30
/* 803ECF20 003E9E60  48 00 00 20 */	b lbl_803ECF40
lbl_803ECF24:
/* 803ECF24 003E9E64  2C 1D 00 01 */	cmpwi r29, 1
/* 803ECF28 003E9E68  40 82 00 0C */	bne lbl_803ECF34
/* 803ECF2C 003E9E6C  3B 9F 00 54 */	addi r28, r31, 0x54
/* 803ECF30 003E9E70  48 00 00 10 */	b lbl_803ECF40
lbl_803ECF34:
/* 803ECF34 003E9E74  2C 1D 00 02 */	cmpwi r29, 2
/* 803ECF38 003E9E78  40 82 00 08 */	bne lbl_803ECF40
/* 803ECF3C 003E9E7C  3B 9F 00 78 */	addi r28, r31, 0x78
lbl_803ECF40:
/* 803ECF40 003E9E80  38 61 00 10 */	addi r3, r1, 0x10
/* 803ECF44 003E9E84  4B C3 01 75 */	bl __ct__10JKRDvdFileFv
/* 803ECF48 003E9E88  7F 84 E3 78 */	mr r4, r28
/* 803ECF4C 003E9E8C  38 61 00 10 */	addi r3, r1, 0x10
/* 803ECF50 003E9E90  4B C3 04 45 */	bl open__10JKRDvdFileFPCc
/* 803ECF54 003E9E94  38 00 00 00 */	li r0, 0
/* 803ECF58 003E9E98  38 61 00 10 */	addi r3, r1, 0x10
/* 803ECF5C 003E9E9C  90 01 00 08 */	stw r0, 8(r1)
/* 803ECF60 003E9EA0  38 80 00 00 */	li r4, 0
/* 803ECF64 003E9EA4  38 A0 00 00 */	li r5, 0
/* 803ECF68 003E9EA8  38 C0 00 00 */	li r6, 0
/* 803ECF6C 003E9EAC  38 E0 00 00 */	li r7, 0
/* 803ECF70 003E9EB0  39 00 00 02 */	li r8, 2
/* 803ECF74 003E9EB4  39 20 00 00 */	li r9, 0
/* 803ECF78 003E9EB8  39 40 00 00 */	li r10, 0
/* 803ECF7C 003E9EBC  4B C3 23 75 */	bl loadToMainRAM__12JKRDvdRipperFP10JKRDvdFilePUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 803ECF80 003E9EC0  90 7E 00 18 */	stw r3, 0x18(r30)
/* 803ECF84 003E9EC4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 803ECF88 003E9EC8  28 00 00 00 */	cmplwi r0, 0
/* 803ECF8C 003E9ECC  40 82 00 18 */	bne lbl_803ECFA4
/* 803ECF90 003E9ED0  38 7F 00 10 */	addi r3, r31, 0x10
/* 803ECF94 003E9ED4  38 BF 00 24 */	addi r5, r31, 0x24
/* 803ECF98 003E9ED8  38 80 01 CE */	li r4, 0x1ce
/* 803ECF9C 003E9EDC  4C C6 31 82 */	crclr 6
/* 803ECFA0 003E9EE0  4B C3 D6 A1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_803ECFA4:
/* 803ECFA4 003E9EE4  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 803ECFA8 003E9EE8  38 61 00 10 */	addi r3, r1, 0x10
/* 803ECFAC 003E9EEC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 803ECFB0 003E9EF0  4B C3 04 D5 */	bl close__10JKRDvdFileFv
/* 803ECFB4 003E9EF4  80 BE 00 24 */	lwz r5, 0x24(r30)
/* 803ECFB8 003E9EF8  38 61 00 10 */	addi r3, r1, 0x10
/* 803ECFBC 003E9EFC  38 80 FF FF */	li r4, -1
/* 803ECFC0 003E9F00  38 05 00 03 */	addi r0, r5, 3
/* 803ECFC4 003E9F04  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 803ECFC8 003E9F08  90 1E 00 24 */	stw r0, 0x24(r30)
/* 803ECFCC 003E9F0C  4B C3 02 C1 */	bl __dt__10JKRDvdFileFv
/* 803ECFD0 003E9F10  3B BD 00 01 */	addi r29, r29, 1
/* 803ECFD4 003E9F14  3B DE 00 04 */	addi r30, r30, 4
/* 803ECFD8 003E9F18  2C 1D 00 03 */	cmpwi r29, 3
/* 803ECFDC 003E9F1C  41 80 FF 34 */	blt lbl_803ECF10
/* 803ECFE0 003E9F20  80 01 01 24 */	lwz r0, 0x124(r1)
/* 803ECFE4 003E9F24  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 803ECFE8 003E9F28  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 803ECFEC 003E9F2C  83 A1 01 14 */	lwz r29, 0x114(r1)
/* 803ECFF0 003E9F30  83 81 01 10 */	lwz r28, 0x110(r1)
/* 803ECFF4 003E9F34  7C 08 03 A6 */	mtlr r0
/* 803ECFF8 003E9F38  38 21 01 20 */	addi r1, r1, 0x120
/* 803ECFFC 003E9F3C  4E 80 00 20 */	blr 

.global init__Q33ebi11CardEReader4TMgrFv
init__Q33ebi11CardEReader4TMgrFv:
/* 803ED000 003E9F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ED004 003E9F44  7C 08 02 A6 */	mflr r0
/* 803ED008 003E9F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ED00C 003E9F4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ED010 003E9F50  7C 7F 1B 78 */	mr r31, r3
/* 803ED014 003E9F54  4B D1 1B 6D */	bl GBAInit
/* 803ED018 003E9F58  38 7F 00 48 */	addi r3, r31, 0x48
/* 803ED01C 003E9F5C  4B D0 2B 15 */	bl OSInitMutex
/* 803ED020 003E9F60  38 7F 00 60 */	addi r3, r31, 0x60
/* 803ED024 003E9F64  4B D0 2E 15 */	bl OSInitCond
/* 803ED028 003E9F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ED02C 003E9F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ED030 003E9F70  7C 08 03 A6 */	mtlr r0
/* 803ED034 003E9F74  38 21 00 10 */	addi r1, r1, 0x10
/* 803ED038 003E9F78  4E 80 00 20 */	blr 

.global uploadToGBA__Q33ebi11CardEReader4TMgrFl
uploadToGBA__Q33ebi11CardEReader4TMgrFl:
/* 803ED03C 003E9F7C  38 A0 00 01 */	li r5, 1
/* 803ED040 003E9F80  38 00 00 00 */	li r0, 0
/* 803ED044 003E9F84  90 A3 00 38 */	stw r5, 0x38(r3)
/* 803ED048 003E9F88  90 A3 00 34 */	stw r5, 0x34(r3)
/* 803ED04C 003E9F8C  90 03 00 44 */	stw r0, 0x44(r3)
/* 803ED050 003E9F90  90 83 00 30 */	stw r4, 0x30(r3)
/* 803ED054 003E9F94  4E 80 00 20 */	blr 

.global probeAGB__Q33ebi11CardEReader4TMgrFv
probeAGB__Q33ebi11CardEReader4TMgrFv:
/* 803ED058 003E9F98  38 80 00 00 */	li r4, 0
/* 803ED05C 003E9F9C  38 00 00 01 */	li r0, 1
/* 803ED060 003E9FA0  90 83 00 38 */	stw r4, 0x38(r3)
/* 803ED064 003E9FA4  90 03 00 34 */	stw r0, 0x34(r3)
/* 803ED068 003E9FA8  90 83 00 44 */	stw r4, 0x44(r3)
/* 803ED06C 003E9FAC  4E 80 00 20 */	blr 

.global update__Q33ebi11CardEReader4TMgrFv
update__Q33ebi11CardEReader4TMgrFv:
/* 803ED070 003E9FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ED074 003E9FB4  7C 08 02 A6 */	mflr r0
/* 803ED078 003E9FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ED07C 003E9FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ED080 003E9FC0  7C 7F 1B 78 */	mr r31, r3
/* 803ED084 003E9FC4  80 03 00 34 */	lwz r0, 0x34(r3)
/* 803ED088 003E9FC8  2C 00 00 02 */	cmpwi r0, 2
/* 803ED08C 003E9FCC  41 82 00 DC */	beq lbl_803ED168
/* 803ED090 003E9FD0  40 80 01 1C */	bge lbl_803ED1AC
/* 803ED094 003E9FD4  2C 00 00 00 */	cmpwi r0, 0
/* 803ED098 003E9FD8  41 82 01 14 */	beq lbl_803ED1AC
/* 803ED09C 003E9FDC  40 80 00 0C */	bge lbl_803ED0A8
/* 803ED0A0 003E9FE0  48 00 01 0C */	b lbl_803ED1AC
/* 803ED0A4 003E9FE4  48 00 01 08 */	b lbl_803ED1AC
lbl_803ED0A8:
/* 803ED0A8 003E9FE8  38 60 00 01 */	li r3, 1
/* 803ED0AC 003E9FEC  4B D0 96 8D */	bl SIProbe
/* 803ED0B0 003E9FF0  3C 03 FF FC */	addis r0, r3, 0xfffc
/* 803ED0B4 003E9FF4  28 00 00 00 */	cmplwi r0, 0
/* 803ED0B8 003E9FF8  40 82 00 0C */	bne lbl_803ED0C4
/* 803ED0BC 003E9FFC  38 00 00 01 */	li r0, 1
/* 803ED0C0 003EA000  48 00 00 40 */	b lbl_803ED100
lbl_803ED0C4:
/* 803ED0C4 003EA004  38 60 00 02 */	li r3, 2
/* 803ED0C8 003EA008  4B D0 96 71 */	bl SIProbe
/* 803ED0CC 003EA00C  3C 03 FF FC */	addis r0, r3, 0xfffc
/* 803ED0D0 003EA010  28 00 00 00 */	cmplwi r0, 0
/* 803ED0D4 003EA014  40 82 00 0C */	bne lbl_803ED0E0
/* 803ED0D8 003EA018  38 00 00 02 */	li r0, 2
/* 803ED0DC 003EA01C  48 00 00 24 */	b lbl_803ED100
lbl_803ED0E0:
/* 803ED0E0 003EA020  38 60 00 03 */	li r3, 3
/* 803ED0E4 003EA024  4B D0 96 55 */	bl SIProbe
/* 803ED0E8 003EA028  3C 03 FF FC */	addis r0, r3, 0xfffc
/* 803ED0EC 003EA02C  28 00 00 00 */	cmplwi r0, 0
/* 803ED0F0 003EA030  40 82 00 0C */	bne lbl_803ED0FC
/* 803ED0F4 003EA034  38 00 00 03 */	li r0, 3
/* 803ED0F8 003EA038  48 00 00 08 */	b lbl_803ED100
lbl_803ED0FC:
/* 803ED0FC 003EA03C  38 00 FF FF */	li r0, -1
lbl_803ED100:
/* 803ED100 003EA040  90 1F 00 40 */	stw r0, 0x40(r31)
/* 803ED104 003EA044  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 803ED108 003EA048  38 03 00 01 */	addi r0, r3, 1
/* 803ED10C 003EA04C  90 1F 00 44 */	stw r0, 0x44(r31)
/* 803ED110 003EA050  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 803ED114 003EA054  2C 00 FF FF */	cmpwi r0, -1
/* 803ED118 003EA058  41 82 00 34 */	beq lbl_803ED14C
/* 803ED11C 003EA05C  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 803ED120 003EA060  2C 00 00 00 */	cmpwi r0, 0
/* 803ED124 003EA064  40 82 00 14 */	bne lbl_803ED138
/* 803ED128 003EA068  7F E3 FB 78 */	mr r3, r31
/* 803ED12C 003EA06C  38 80 00 00 */	li r4, 0
/* 803ED130 003EA070  48 00 01 69 */	bl goEnd___Q33ebi11CardEReader4TMgrFQ43ebi11CardEReader4TMgr7enumErr
/* 803ED134 003EA074  48 00 00 78 */	b lbl_803ED1AC
lbl_803ED138:
/* 803ED138 003EA078  38 60 00 00 */	li r3, 0
/* 803ED13C 003EA07C  38 00 00 02 */	li r0, 2
/* 803ED140 003EA080  90 7F 00 44 */	stw r3, 0x44(r31)
/* 803ED144 003EA084  90 1F 00 34 */	stw r0, 0x34(r31)
/* 803ED148 003EA088  48 00 00 64 */	b lbl_803ED1AC
lbl_803ED14C:
/* 803ED14C 003EA08C  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 803ED150 003EA090  2C 00 00 02 */	cmpwi r0, 2
/* 803ED154 003EA094  41 80 00 58 */	blt lbl_803ED1AC
/* 803ED158 003EA098  7F E3 FB 78 */	mr r3, r31
/* 803ED15C 003EA09C  38 80 00 01 */	li r4, 1
/* 803ED160 003EA0A0  48 00 01 39 */	bl goEnd___Q33ebi11CardEReader4TMgrFQ43ebi11CardEReader4TMgr7enumErr
/* 803ED164 003EA0A4  48 00 00 48 */	b lbl_803ED1AC
lbl_803ED168:
/* 803ED168 003EA0A8  48 00 00 DD */	bl tryUploadToGBA___Q33ebi11CardEReader4TMgrFv
/* 803ED16C 003EA0AC  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 803ED170 003EA0B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803ED174 003EA0B4  38 04 00 01 */	addi r0, r4, 1
/* 803ED178 003EA0B8  90 1F 00 44 */	stw r0, 0x44(r31)
/* 803ED17C 003EA0BC  41 82 00 18 */	beq lbl_803ED194
/* 803ED180 003EA0C0  38 60 00 00 */	li r3, 0
/* 803ED184 003EA0C4  38 00 00 03 */	li r0, 3
/* 803ED188 003EA0C8  90 7F 00 44 */	stw r3, 0x44(r31)
/* 803ED18C 003EA0CC  90 1F 00 34 */	stw r0, 0x34(r31)
/* 803ED190 003EA0D0  48 00 00 1C */	b lbl_803ED1AC
lbl_803ED194:
/* 803ED194 003EA0D4  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 803ED198 003EA0D8  2C 00 00 01 */	cmpwi r0, 1
/* 803ED19C 003EA0DC  41 80 00 10 */	blt lbl_803ED1AC
/* 803ED1A0 003EA0E0  7F E3 FB 78 */	mr r3, r31
/* 803ED1A4 003EA0E4  38 80 00 02 */	li r4, 2
/* 803ED1A8 003EA0E8  48 00 00 F1 */	bl goEnd___Q33ebi11CardEReader4TMgrFQ43ebi11CardEReader4TMgr7enumErr
lbl_803ED1AC:
/* 803ED1AC 003EA0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ED1B0 003EA0F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ED1B4 003EA0F4  7C 08 03 A6 */	mtlr r0
/* 803ED1B8 003EA0F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803ED1BC 003EA0FC  4E 80 00 20 */	blr 

.global isFinish__Q33ebi11CardEReader4TMgrFv
isFinish__Q33ebi11CardEReader4TMgrFv:
/* 803ED1C0 003EA100  80 03 00 34 */	lwz r0, 0x34(r3)
/* 803ED1C4 003EA104  7C 00 00 34 */	cntlzw r0, r0
/* 803ED1C8 003EA108  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 803ED1CC 003EA10C  4E 80 00 20 */	blr 

.global threadProc__Q33ebi11CardEReader4TMgrFPv
threadProc__Q33ebi11CardEReader4TMgrFPv:
/* 803ED1D0 003EA110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ED1D4 003EA114  7C 08 02 A6 */	mflr r0
/* 803ED1D8 003EA118  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ED1DC 003EA11C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ED1E0 003EA120  7C 7F 1B 78 */	mr r31, r3
lbl_803ED1E4:
/* 803ED1E4 003EA124  38 7F 00 48 */	addi r3, r31, 0x48
/* 803ED1E8 003EA128  4B D0 29 81 */	bl OSLockMutex
/* 803ED1EC 003EA12C  38 7F 00 60 */	addi r3, r31, 0x60
/* 803ED1F0 003EA130  38 9F 00 48 */	addi r4, r31, 0x48
/* 803ED1F4 003EA134  4B D0 2C 65 */	bl OSWaitCond
/* 803ED1F8 003EA138  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 803ED1FC 003EA13C  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 803ED200 003EA140  54 00 10 3A */	slwi r0, r0, 2
/* 803ED204 003EA144  7C BF 02 14 */	add r5, r31, r0
/* 803ED208 003EA148  80 85 00 18 */	lwz r4, 0x18(r5)
/* 803ED20C 003EA14C  80 A5 00 24 */	lwz r5, 0x24(r5)
/* 803ED210 003EA150  4B FF F9 8D */	bl CardE_uploadToGBA__Q23ebi11CardEReaderFlPUcUl
/* 803ED214 003EA154  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803ED218 003EA158  41 82 00 14 */	beq lbl_803ED22C
/* 803ED21C 003EA15C  7F E3 FB 78 */	mr r3, r31
/* 803ED220 003EA160  38 80 00 00 */	li r4, 0
/* 803ED224 003EA164  48 00 00 75 */	bl goEnd___Q33ebi11CardEReader4TMgrFQ43ebi11CardEReader4TMgr7enumErr
/* 803ED228 003EA168  48 00 00 10 */	b lbl_803ED238
lbl_803ED22C:
/* 803ED22C 003EA16C  7F E3 FB 78 */	mr r3, r31
/* 803ED230 003EA170  38 80 00 02 */	li r4, 2
/* 803ED234 003EA174  48 00 00 65 */	bl goEnd___Q33ebi11CardEReader4TMgrFQ43ebi11CardEReader4TMgr7enumErr
lbl_803ED238:
/* 803ED238 003EA178  38 7F 00 48 */	addi r3, r31, 0x48
/* 803ED23C 003EA17C  4B D0 2A 09 */	bl OSUnlockMutex
/* 803ED240 003EA180  4B FF FF A4 */	b lbl_803ED1E4

.global tryUploadToGBA___Q33ebi11CardEReader4TMgrFv
tryUploadToGBA___Q33ebi11CardEReader4TMgrFv:
/* 803ED244 003EA184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ED248 003EA188  7C 08 02 A6 */	mflr r0
/* 803ED24C 003EA18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ED250 003EA190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ED254 003EA194  7C 7F 1B 78 */	mr r31, r3
/* 803ED258 003EA198  38 7F 00 48 */	addi r3, r31, 0x48
/* 803ED25C 003EA19C  4B D0 2B 21 */	bl OSTryLockMutex
/* 803ED260 003EA1A0  2C 03 00 00 */	cmpwi r3, 0
/* 803ED264 003EA1A4  41 82 00 1C */	beq lbl_803ED280
/* 803ED268 003EA1A8  38 7F 00 48 */	addi r3, r31, 0x48
/* 803ED26C 003EA1AC  4B D0 29 D9 */	bl OSUnlockMutex
/* 803ED270 003EA1B0  38 7F 00 60 */	addi r3, r31, 0x60
/* 803ED274 003EA1B4  4B D0 2C B9 */	bl OSSignalCond
/* 803ED278 003EA1B8  38 60 00 01 */	li r3, 1
/* 803ED27C 003EA1BC  48 00 00 08 */	b lbl_803ED284
lbl_803ED280:
/* 803ED280 003EA1C0  38 60 00 00 */	li r3, 0
lbl_803ED284:
/* 803ED284 003EA1C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ED288 003EA1C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ED28C 003EA1CC  7C 08 03 A6 */	mtlr r0
/* 803ED290 003EA1D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803ED294 003EA1D4  4E 80 00 20 */	blr 

.global goEnd___Q33ebi11CardEReader4TMgrFQ43ebi11CardEReader4TMgr7enumErr
goEnd___Q33ebi11CardEReader4TMgrFQ43ebi11CardEReader4TMgr7enumErr:
/* 803ED298 003EA1D8  90 83 00 3C */	stw r4, 0x3c(r3)
/* 803ED29C 003EA1DC  38 00 00 00 */	li r0, 0
/* 803ED2A0 003EA1E0  90 03 00 34 */	stw r0, 0x34(r3)
/* 803ED2A4 003EA1E4  4E 80 00 20 */	blr 
