.include "macros.inc"
.section .sdata, "wa"  # 0x80514680 - 0x80514D80
.balign 0x8
.global SendCount
SendCount:
	.4byte 0x80000000

.section .sbss # 0x80514D80 - 0x80516360
.balign 0x8
.global MTRCallback
MTRCallback:
	.skip 0x4
.global DBGCallback
DBGCallback:
	.skip 0x4
.global SendMailData
SendMailData:
	.skip 0x4
.global RecvDataLeng
RecvDataLeng:
	.skip 0x4
.global pEXIInputFlag
pEXIInputFlag:
	.skip 0x4
.global EXIInputFlag
EXIInputFlag:
	.skip 0x4

.section .text, "ax"  # 0x800056C0 - 0x80472F00

.global DBWrite
DBWrite:
/* 800CFD70 000CCCB0  7C 08 02 A6 */	mflr r0
/* 800CFD74 000CCCB4  90 01 00 04 */	stw r0, 4(r1)
/* 800CFD78 000CCCB8  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 800CFD7C 000CCCBC  BF 01 00 58 */	stmw r24, 0x58(r1)
/* 800CFD80 000CCCC0  3B 43 00 00 */	addi r26, r3, 0
/* 800CFD84 000CCCC4  3B 64 00 00 */	addi r27, r4, 0
/* 800CFD88 000CCCC8  48 01 EE B1 */	bl OSDisableInterrupts
/* 800CFD8C 000CCCCC  3B 83 00 00 */	addi r28, r3, 0
/* 800CFD90 000CCCD0  3F 20 CC 00 */	lis r25, 0xCC006828@ha
/* 800CFD94 000CCCD4  3F E0 40 00 */	lis r31, 0x4000
lbl_800CFD98:
/* 800CFD98 000CCCD8  80 19 68 28 */	lwz r0, 0xCC006828@l(r25)
/* 800CFD9C 000CCCDC  3B D9 68 00 */	addi r30, r25, 0x6800
/* 800CFDA0 000CCCE0  38 61 00 50 */	addi r3, r1, 0x50
/* 800CFDA4 000CCCE4  70 00 04 05 */	andi. r0, r0, 0x405
/* 800CFDA8 000CCCE8  38 80 00 02 */	li r4, 2
/* 800CFDAC 000CCCEC  38 A0 00 01 */	li r5, 1
/* 800CFDB0 000CCCF0  60 00 00 C0 */	ori r0, r0, 0xc0
/* 800CFDB4 000CCCF4  94 1E 00 28 */	stwu r0, 0x28(r30)
/* 800CFDB8 000CCCF8  93 E1 00 50 */	stw r31, 0x50(r1)
/* 800CFDBC 000CCCFC  48 00 07 95 */	bl DBGEXIImm
/* 800CFDC0 000CCD00  7C 60 00 34 */	cntlzw r0, r3
/* 800CFDC4 000CCD04  54 18 D9 7E */	srwi r24, r0, 5
lbl_800CFDC8:
/* 800CFDC8 000CCD08  3B B9 68 00 */	addi r29, r25, 0x6800
/* 800CFDCC 000CCD0C  84 1D 00 34 */	lwzu r0, 0x34(r29)
/* 800CFDD0 000CCD10  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800CFDD4 000CCD14  40 82 FF F4 */	bne lbl_800CFDC8
/* 800CFDD8 000CCD18  38 61 00 54 */	addi r3, r1, 0x54
/* 800CFDDC 000CCD1C  38 80 00 04 */	li r4, 4
/* 800CFDE0 000CCD20  38 A0 00 00 */	li r5, 0
/* 800CFDE4 000CCD24  48 00 07 6D */	bl DBGEXIImm
lbl_800CFDE8:
/* 800CFDE8 000CCD28  80 1D 00 00 */	lwz r0, 0(r29)
/* 800CFDEC 000CCD2C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800CFDF0 000CCD30  40 82 FF F8 */	bne lbl_800CFDE8
/* 800CFDF4 000CCD34  80 1E 00 00 */	lwz r0, 0(r30)
/* 800CFDF8 000CCD38  70 00 04 05 */	andi. r0, r0, 0x405
/* 800CFDFC 000CCD3C  90 1E 00 00 */	stw r0, 0(r30)
/* 800CFE00 000CCD40  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800CFE04 000CCD44  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800CFE08 000CCD48  40 82 FF 90 */	bne lbl_800CFD98
/* 800CFE0C 000CCD4C  88 6D 82 60 */	lbz r3, SendCount@sda21(r13)
/* 800CFE10 000CCD50  38 03 00 01 */	addi r0, r3, 1
/* 800CFE14 000CCD54  98 0D 82 60 */	stb r0, SendCount@sda21(r13)
/* 800CFE18 000CCD58  88 0D 82 60 */	lbz r0, SendCount@sda21(r13)
/* 800CFE1C 000CCD5C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800CFE20 000CCD60  41 82 00 0C */	beq lbl_800CFE2C
/* 800CFE24 000CCD64  38 60 10 00 */	li r3, 0x1000
/* 800CFE28 000CCD68  48 00 00 08 */	b lbl_800CFE30
lbl_800CFE2C:
/* 800CFE2C 000CCD6C  38 60 00 00 */	li r3, 0
lbl_800CFE30:
/* 800CFE30 000CCD70  38 1B 00 03 */	addi r0, r27, 3
/* 800CFE34 000CCD74  64 79 00 01 */	oris r25, r3, 1
/* 800CFE38 000CCD78  54 18 00 3A */	rlwinm r24, r0, 0, 0, 0x1d
/* 800CFE3C 000CCD7C  63 39 C0 00 */	ori r25, r25, 0xc000
lbl_800CFE40:
/* 800CFE40 000CCD80  38 79 00 00 */	addi r3, r25, 0
/* 800CFE44 000CCD84  38 9A 00 00 */	addi r4, r26, 0
/* 800CFE48 000CCD88  38 B8 00 00 */	addi r5, r24, 0
/* 800CFE4C 000CCD8C  48 00 04 A1 */	bl DBGWrite
/* 800CFE50 000CCD90  2C 03 00 00 */	cmpwi r3, 0
/* 800CFE54 000CCD94  41 82 FF EC */	beq lbl_800CFE40
/* 800CFE58 000CCD98  3F E0 40 00 */	lis r31, 0x4000
lbl_800CFE5C:
/* 800CFE5C 000CCD9C  80 1E 00 00 */	lwz r0, 0(r30)
/* 800CFE60 000CCDA0  38 61 00 4C */	addi r3, r1, 0x4c
/* 800CFE64 000CCDA4  38 80 00 02 */	li r4, 2
/* 800CFE68 000CCDA8  70 00 04 05 */	andi. r0, r0, 0x405
/* 800CFE6C 000CCDAC  38 A0 00 01 */	li r5, 1
/* 800CFE70 000CCDB0  60 00 00 C0 */	ori r0, r0, 0xc0
/* 800CFE74 000CCDB4  90 1E 00 00 */	stw r0, 0(r30)
/* 800CFE78 000CCDB8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800CFE7C 000CCDBC  48 00 06 D5 */	bl DBGEXIImm
/* 800CFE80 000CCDC0  7C 60 00 34 */	cntlzw r0, r3
/* 800CFE84 000CCDC4  54 1A D9 7E */	srwi r26, r0, 5
lbl_800CFE88:
/* 800CFE88 000CCDC8  80 1D 00 00 */	lwz r0, 0(r29)
/* 800CFE8C 000CCDCC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800CFE90 000CCDD0  40 82 FF F8 */	bne lbl_800CFE88
/* 800CFE94 000CCDD4  38 61 00 54 */	addi r3, r1, 0x54
/* 800CFE98 000CCDD8  38 80 00 04 */	li r4, 4
/* 800CFE9C 000CCDDC  38 A0 00 00 */	li r5, 0
/* 800CFEA0 000CCDE0  48 00 06 B1 */	bl DBGEXIImm
lbl_800CFEA4:
/* 800CFEA4 000CCDE4  80 1D 00 00 */	lwz r0, 0(r29)
/* 800CFEA8 000CCDE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800CFEAC 000CCDEC  40 82 FF F8 */	bne lbl_800CFEA4
/* 800CFEB0 000CCDF0  80 1E 00 00 */	lwz r0, 0(r30)
/* 800CFEB4 000CCDF4  70 00 04 05 */	andi. r0, r0, 0x405
/* 800CFEB8 000CCDF8  90 1E 00 00 */	stw r0, 0(r30)
/* 800CFEBC 000CCDFC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800CFEC0 000CCE00  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800CFEC4 000CCE04  40 82 FF 98 */	bne lbl_800CFE5C
/* 800CFEC8 000CCE08  88 0D 82 60 */	lbz r0, SendCount@sda21(r13)
/* 800CFECC 000CCE0C  54 00 80 1E */	slwi r0, r0, 0x10
/* 800CFED0 000CCE10  64 00 1F 00 */	oris r0, r0, 0x1f00
/* 800CFED4 000CCE14  7C 00 DB 78 */	or r0, r0, r27
/* 800CFED8 000CCE18  54 00 00 FE */	clrlwi r0, r0, 3
/* 800CFEDC 000CCE1C  64 18 C0 00 */	oris r24, r0, 0xc000
lbl_800CFEE0:
/* 800CFEE0 000CCE20  80 1E 00 00 */	lwz r0, 0(r30)
/* 800CFEE4 000CCE24  38 61 00 44 */	addi r3, r1, 0x44
/* 800CFEE8 000CCE28  38 80 00 04 */	li r4, 4
/* 800CFEEC 000CCE2C  70 00 04 05 */	andi. r0, r0, 0x405
/* 800CFEF0 000CCE30  38 A0 00 01 */	li r5, 1
/* 800CFEF4 000CCE34  60 00 00 C0 */	ori r0, r0, 0xc0
/* 800CFEF8 000CCE38  90 1E 00 00 */	stw r0, 0(r30)
/* 800CFEFC 000CCE3C  93 01 00 44 */	stw r24, 0x44(r1)
/* 800CFF00 000CCE40  48 00 06 51 */	bl DBGEXIImm
/* 800CFF04 000CCE44  7C 60 00 34 */	cntlzw r0, r3
/* 800CFF08 000CCE48  54 03 D9 7E */	srwi r3, r0, 5
lbl_800CFF0C:
/* 800CFF0C 000CCE4C  80 1D 00 00 */	lwz r0, 0(r29)
/* 800CFF10 000CCE50  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800CFF14 000CCE54  40 82 FF F8 */	bne lbl_800CFF0C
/* 800CFF18 000CCE58  80 1E 00 00 */	lwz r0, 0(r30)
/* 800CFF1C 000CCE5C  70 00 04 05 */	andi. r0, r0, 0x405
/* 800CFF20 000CCE60  2C 03 00 00 */	cmpwi r3, 0
/* 800CFF24 000CCE64  90 1E 00 00 */	stw r0, 0(r30)
/* 800CFF28 000CCE68  40 82 FF B8 */	bne lbl_800CFEE0
/* 800CFF2C 000CCE6C  3F 60 40 00 */	lis r27, 0x4000
lbl_800CFF30:
/* 800CFF30 000CCE70  80 1E 00 00 */	lwz r0, 0(r30)
/* 800CFF34 000CCE74  38 61 00 3C */	addi r3, r1, 0x3c
/* 800CFF38 000CCE78  38 80 00 02 */	li r4, 2
/* 800CFF3C 000CCE7C  70 00 04 05 */	andi. r0, r0, 0x405
/* 800CFF40 000CCE80  38 A0 00 01 */	li r5, 1
/* 800CFF44 000CCE84  60 00 00 C0 */	ori r0, r0, 0xc0
/* 800CFF48 000CCE88  90 1E 00 00 */	stw r0, 0(r30)
/* 800CFF4C 000CCE8C  93 61 00 3C */	stw r27, 0x3c(r1)
/* 800CFF50 000CCE90  48 00 06 01 */	bl DBGEXIImm
/* 800CFF54 000CCE94  7C 60 00 34 */	cntlzw r0, r3
/* 800CFF58 000CCE98  54 1A D9 7E */	srwi r26, r0, 5
lbl_800CFF5C:
/* 800CFF5C 000CCE9C  80 1D 00 00 */	lwz r0, 0(r29)
/* 800CFF60 000CCEA0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800CFF64 000CCEA4  40 82 FF F8 */	bne lbl_800CFF5C
/* 800CFF68 000CCEA8  38 61 00 54 */	addi r3, r1, 0x54
/* 800CFF6C 000CCEAC  38 80 00 04 */	li r4, 4
/* 800CFF70 000CCEB0  38 A0 00 00 */	li r5, 0
/* 800CFF74 000CCEB4  48 00 05 DD */	bl DBGEXIImm
/* 800CFF78 000CCEB8  7C 60 00 34 */	cntlzw r0, r3
/* 800CFF7C 000CCEBC  54 00 D9 7E */	srwi r0, r0, 5
/* 800CFF80 000CCEC0  7F 43 03 78 */	or r3, r26, r0
lbl_800CFF84:
/* 800CFF84 000CCEC4  80 1D 00 00 */	lwz r0, 0(r29)
/* 800CFF88 000CCEC8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800CFF8C 000CCECC  40 82 FF F8 */	bne lbl_800CFF84
/* 800CFF90 000CCED0  80 1E 00 00 */	lwz r0, 0(r30)
/* 800CFF94 000CCED4  70 00 04 05 */	andi. r0, r0, 0x405
/* 800CFF98 000CCED8  2C 03 00 00 */	cmpwi r3, 0
/* 800CFF9C 000CCEDC  90 1E 00 00 */	stw r0, 0(r30)
/* 800CFFA0 000CCEE0  40 82 FF 90 */	bne lbl_800CFF30
/* 800CFFA4 000CCEE4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800CFFA8 000CCEE8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800CFFAC 000CCEEC  40 82 FF 84 */	bne lbl_800CFF30
/* 800CFFB0 000CCEF0  7F 83 E3 78 */	mr r3, r28
/* 800CFFB4 000CCEF4  48 01 EC AD */	bl OSRestoreInterrupts
/* 800CFFB8 000CCEF8  BB 01 00 58 */	lmw r24, 0x58(r1)
/* 800CFFBC 000CCEFC  38 60 00 00 */	li r3, 0
/* 800CFFC0 000CCF00  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 800CFFC4 000CCF04  38 21 00 78 */	addi r1, r1, 0x78
/* 800CFFC8 000CCF08  7C 08 03 A6 */	mtlr r0
/* 800CFFCC 000CCF0C  4E 80 00 20 */	blr 

.global DBRead
DBRead:
/* 800CFFD0 000CCF10  7C 08 02 A6 */	mflr r0
/* 800CFFD4 000CCF14  90 01 00 04 */	stw r0, 4(r1)
/* 800CFFD8 000CCF18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800CFFDC 000CCF1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800CFFE0 000CCF20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800CFFE4 000CCF24  3B C4 00 00 */	addi r30, r4, 0
/* 800CFFE8 000CCF28  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800CFFEC 000CCF2C  3B A3 00 00 */	addi r29, r3, 0
/* 800CFFF0 000CCF30  48 01 EC 49 */	bl OSDisableInterrupts
/* 800CFFF4 000CCF34  80 0D 8C E8 */	lwz r0, SendMailData@sda21(r13)
/* 800CFFF8 000CCF38  3B E3 00 00 */	addi r31, r3, 0
/* 800CFFFC 000CCF3C  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800D0000 000CCF40  41 82 00 0C */	beq lbl_800D000C
/* 800D0004 000CCF44  38 60 10 00 */	li r3, 0x1000
/* 800D0008 000CCF48  48 00 00 08 */	b lbl_800D0010
lbl_800D000C:
/* 800D000C 000CCF4C  38 60 00 00 */	li r3, 0
lbl_800D0010:
/* 800D0010 000CCF50  3C 63 00 02 */	addis r3, r3, 2
/* 800D0014 000CCF54  38 1E 00 03 */	addi r0, r30, 3
/* 800D0018 000CCF58  38 9D 00 00 */	addi r4, r29, 0
/* 800D001C 000CCF5C  54 05 00 3A */	rlwinm r5, r0, 0, 0, 0x1d
/* 800D0020 000CCF60  38 63 E0 00 */	addi r3, r3, -8192
/* 800D0024 000CCF64  48 00 03 A5 */	bl DBGRead
/* 800D0028 000CCF68  38 00 00 00 */	li r0, 0
/* 800D002C 000CCF6C  90 0D 8C EC */	stw r0, RecvDataLeng@sda21(r13)
/* 800D0030 000CCF70  7F E3 FB 78 */	mr r3, r31
/* 800D0034 000CCF74  98 0D 8C F4 */	stb r0, EXIInputFlag@sda21(r13)
/* 800D0038 000CCF78  48 01 EC 29 */	bl OSRestoreInterrupts
/* 800D003C 000CCF7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D0040 000CCF80  38 60 00 00 */	li r3, 0
/* 800D0044 000CCF84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D0048 000CCF88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800D004C 000CCF8C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800D0050 000CCF90  38 21 00 20 */	addi r1, r1, 0x20
/* 800D0054 000CCF94  7C 08 03 A6 */	mtlr r0
/* 800D0058 000CCF98  4E 80 00 20 */	blr 

.global DBQueryData
DBQueryData:
/* 800D005C 000CCF9C  7C 08 02 A6 */	mflr r0
/* 800D0060 000CCFA0  38 60 00 00 */	li r3, 0
/* 800D0064 000CCFA4  90 01 00 04 */	stw r0, 4(r1)
/* 800D0068 000CCFA8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800D006C 000CCFAC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800D0070 000CCFB0  80 0D 8C EC */	lwz r0, RecvDataLeng@sda21(r13)
/* 800D0074 000CCFB4  98 6D 8C F4 */	stb r3, EXIInputFlag@sda21(r13)
/* 800D0078 000CCFB8  2C 00 00 00 */	cmpwi r0, 0
/* 800D007C 000CCFBC  40 82 00 64 */	bne lbl_800D00E0
/* 800D0080 000CCFC0  48 01 EB B9 */	bl OSDisableInterrupts
/* 800D0084 000CCFC4  3B E3 00 00 */	addi r31, r3, 0
/* 800D0088 000CCFC8  38 61 00 08 */	addi r3, r1, 8
/* 800D008C 000CCFCC  48 00 01 B5 */	bl DBGReadStatus
/* 800D0090 000CCFD0  80 01 00 08 */	lwz r0, 8(r1)
/* 800D0094 000CCFD4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D0098 000CCFD8  41 82 00 40 */	beq lbl_800D00D8
/* 800D009C 000CCFDC  38 61 00 08 */	addi r3, r1, 8
/* 800D00A0 000CCFE0  48 00 04 05 */	bl DBGReadMailbox
/* 800D00A4 000CCFE4  80 01 00 08 */	lwz r0, 8(r1)
/* 800D00A8 000CCFE8  54 00 00 FE */	clrlwi r0, r0, 3
/* 800D00AC 000CCFEC  90 01 00 08 */	stw r0, 8(r1)
/* 800D00B0 000CCFF0  80 81 00 08 */	lwz r4, 8(r1)
/* 800D00B4 000CCFF4  54 83 00 CE */	rlwinm r3, r4, 0, 3, 7
/* 800D00B8 000CCFF8  3C 03 E1 00 */	addis r0, r3, 0xe100
/* 800D00BC 000CCFFC  28 00 00 00 */	cmplwi r0, 0
/* 800D00C0 000CD000  40 82 00 18 */	bne lbl_800D00D8
/* 800D00C4 000CD004  54 83 04 7E */	clrlwi r3, r4, 0x11
/* 800D00C8 000CD008  90 8D 8C E8 */	stw r4, SendMailData@sda21(r13)
/* 800D00CC 000CD00C  38 00 00 01 */	li r0, 1
/* 800D00D0 000CD010  90 6D 8C EC */	stw r3, RecvDataLeng@sda21(r13)
/* 800D00D4 000CD014  98 0D 8C F4 */	stb r0, EXIInputFlag@sda21(r13)
lbl_800D00D8:
/* 800D00D8 000CD018  7F E3 FB 78 */	mr r3, r31
/* 800D00DC 000CD01C  48 01 EB 85 */	bl OSRestoreInterrupts
lbl_800D00E0:
/* 800D00E0 000CD020  80 6D 8C EC */	lwz r3, RecvDataLeng@sda21(r13)
/* 800D00E4 000CD024  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800D00E8 000CD028  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800D00EC 000CD02C  38 21 00 18 */	addi r1, r1, 0x18
/* 800D00F0 000CD030  7C 08 03 A6 */	mtlr r0
/* 800D00F4 000CD034  4E 80 00 20 */	blr 

.global DBInitInterrupts
DBInitInterrupts:
/* 800D00F8 000CD038  7C 08 02 A6 */	mflr r0
/* 800D00FC 000CD03C  3C 60 00 02 */	lis r3, 0x00018000@ha
/* 800D0100 000CD040  90 01 00 04 */	stw r0, 4(r1)
/* 800D0104 000CD044  38 63 80 00 */	addi r3, r3, 0x00018000@l
/* 800D0108 000CD048  94 21 FF F8 */	stwu r1, -8(r1)
/* 800D010C 000CD04C  48 01 EE F5 */	bl __OSMaskInterrupts
/* 800D0110 000CD050  38 60 00 40 */	li r3, 0x40
/* 800D0114 000CD054  48 01 EE ED */	bl __OSMaskInterrupts
/* 800D0118 000CD058  3C 60 80 0D */	lis r3, MWCallback@ha
/* 800D011C 000CD05C  38 03 02 04 */	addi r0, r3, MWCallback@l
/* 800D0120 000CD060  3C 60 80 0D */	lis r3, DBGHandler@ha
/* 800D0124 000CD064  90 0D 8C E4 */	stw r0, DBGCallback@sda21(r13)
/* 800D0128 000CD068  38 83 01 C4 */	addi r4, r3, DBGHandler@l
/* 800D012C 000CD06C  38 60 00 19 */	li r3, 0x19
/* 800D0130 000CD070  48 01 EB 55 */	bl __OSSetInterruptHandler
/* 800D0134 000CD074  38 60 00 40 */	li r3, 0x40
/* 800D0138 000CD078  48 01 EF 51 */	bl __OSUnmaskInterrupts
/* 800D013C 000CD07C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800D0140 000CD080  38 21 00 08 */	addi r1, r1, 8
/* 800D0144 000CD084  7C 08 03 A6 */	mtlr r0
/* 800D0148 000CD088  4E 80 00 20 */	blr 

.global DBInitComm
DBInitComm:
/* 800D014C 000CD08C  7C 08 02 A6 */	mflr r0
/* 800D0150 000CD090  90 01 00 04 */	stw r0, 4(r1)
/* 800D0154 000CD094  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D0158 000CD098  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D015C 000CD09C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800D0160 000CD0A0  3B C4 00 00 */	addi r30, r4, 0
/* 800D0164 000CD0A4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800D0168 000CD0A8  3B A3 00 00 */	addi r29, r3, 0
/* 800D016C 000CD0AC  48 01 EA CD */	bl OSDisableInterrupts
/* 800D0170 000CD0B0  38 0D 8C F4 */	addi r0, r13, EXIInputFlag@sda21
/* 800D0174 000CD0B4  90 0D 8C F0 */	stw r0, pEXIInputFlag@sda21(r13)
/* 800D0178 000CD0B8  3C 80 00 02 */	lis r4, 0x00018000@ha
/* 800D017C 000CD0BC  3B E3 00 00 */	addi r31, r3, 0
/* 800D0180 000CD0C0  80 0D 8C F0 */	lwz r0, pEXIInputFlag@sda21(r13)
/* 800D0184 000CD0C4  38 64 80 00 */	addi r3, r4, 0x00018000@l
/* 800D0188 000CD0C8  90 1D 00 00 */	stw r0, 0(r29)
/* 800D018C 000CD0CC  93 CD 8C E0 */	stw r30, MTRCallback@sda21(r13)
/* 800D0190 000CD0D0  48 01 EE 71 */	bl __OSMaskInterrupts
/* 800D0194 000CD0D4  3C 60 CC 00 */	lis r3, 0xCC006828@ha
/* 800D0198 000CD0D8  38 00 00 00 */	li r0, 0
/* 800D019C 000CD0DC  90 03 68 28 */	stw r0, 0xCC006828@l(r3)
/* 800D01A0 000CD0E0  7F E3 FB 78 */	mr r3, r31
/* 800D01A4 000CD0E4  48 01 EA BD */	bl OSRestoreInterrupts
/* 800D01A8 000CD0E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D01AC 000CD0EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D01B0 000CD0F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800D01B4 000CD0F4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800D01B8 000CD0F8  38 21 00 20 */	addi r1, r1, 0x20
/* 800D01BC 000CD0FC  7C 08 03 A6 */	mtlr r0
/* 800D01C0 000CD100  4E 80 00 20 */	blr 

.global DBGHandler
DBGHandler:
/* 800D01C4 000CD104  7C 08 02 A6 */	mflr r0
/* 800D01C8 000CD108  3C A0 CC 00 */	lis r5, 0xCC003000@ha
/* 800D01CC 000CD10C  90 01 00 04 */	stw r0, 4(r1)
/* 800D01D0 000CD110  38 00 10 00 */	li r0, 0x1000
/* 800D01D4 000CD114  94 21 FF F8 */	stwu r1, -8(r1)
/* 800D01D8 000CD118  81 8D 8C E4 */	lwz r12, DBGCallback@sda21(r13)
/* 800D01DC 000CD11C  90 05 30 00 */	stw r0, 0xCC003000@l(r5)
/* 800D01E0 000CD120  28 0C 00 00 */	cmplwi r12, 0
/* 800D01E4 000CD124  41 82 00 10 */	beq lbl_800D01F4
/* 800D01E8 000CD128  7D 88 03 A6 */	mtlr r12
/* 800D01EC 000CD12C  7C 63 07 34 */	extsh r3, r3
/* 800D01F0 000CD130  4E 80 00 21 */	blrl 
lbl_800D01F4:
/* 800D01F4 000CD134  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800D01F8 000CD138  38 21 00 08 */	addi r1, r1, 8
/* 800D01FC 000CD13C  7C 08 03 A6 */	mtlr r0
/* 800D0200 000CD140  4E 80 00 20 */	blr 

.global MWCallback
MWCallback:
/* 800D0204 000CD144  7C 08 02 A6 */	mflr r0
/* 800D0208 000CD148  90 01 00 04 */	stw r0, 4(r1)
/* 800D020C 000CD14C  38 00 00 01 */	li r0, 1
/* 800D0210 000CD150  94 21 FF F8 */	stwu r1, -8(r1)
/* 800D0214 000CD154  81 8D 8C E0 */	lwz r12, MTRCallback@sda21(r13)
/* 800D0218 000CD158  98 0D 8C F4 */	stb r0, EXIInputFlag@sda21(r13)
/* 800D021C 000CD15C  28 0C 00 00 */	cmplwi r12, 0
/* 800D0220 000CD160  41 82 00 10 */	beq lbl_800D0230
/* 800D0224 000CD164  7D 88 03 A6 */	mtlr r12
/* 800D0228 000CD168  38 60 00 00 */	li r3, 0
/* 800D022C 000CD16C  4E 80 00 21 */	blrl 
lbl_800D0230:
/* 800D0230 000CD170  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800D0234 000CD174  38 21 00 08 */	addi r1, r1, 8
/* 800D0238 000CD178  7C 08 03 A6 */	mtlr r0
/* 800D023C 000CD17C  4E 80 00 20 */	blr 

.global DBGReadStatus
DBGReadStatus:
/* 800D0240 000CD180  7C 08 02 A6 */	mflr r0
/* 800D0244 000CD184  38 80 00 02 */	li r4, 2
/* 800D0248 000CD188  90 01 00 04 */	stw r0, 4(r1)
/* 800D024C 000CD18C  3C 00 40 00 */	lis r0, 0x4000
/* 800D0250 000CD190  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800D0254 000CD194  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 800D0258 000CD198  3F C0 CC 00 */	lis r30, 0xCC006800@ha
/* 800D025C 000CD19C  3B 63 00 00 */	addi r27, r3, 0
/* 800D0260 000CD1A0  3B BE 68 00 */	addi r29, r30, 0xCC006800@l
/* 800D0264 000CD1A4  38 61 00 18 */	addi r3, r1, 0x18
/* 800D0268 000CD1A8  80 BE 68 28 */	lwz r5, 0x6828(r30)
/* 800D026C 000CD1AC  70 A5 04 05 */	andi. r5, r5, 0x405
/* 800D0270 000CD1B0  60 A5 00 C0 */	ori r5, r5, 0xc0
/* 800D0274 000CD1B4  94 BD 00 28 */	stwu r5, 0x28(r29)
/* 800D0278 000CD1B8  38 A0 00 01 */	li r5, 1
/* 800D027C 000CD1BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 800D0280 000CD1C0  48 00 02 D1 */	bl DBGEXIImm
/* 800D0284 000CD1C4  7C 60 00 34 */	cntlzw r0, r3
/* 800D0288 000CD1C8  54 1F D9 7E */	srwi r31, r0, 5
lbl_800D028C:
/* 800D028C 000CD1CC  3B 9E 68 00 */	addi r28, r30, 0x6800
/* 800D0290 000CD1D0  84 1C 00 34 */	lwzu r0, 0x34(r28)
/* 800D0294 000CD1D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D0298 000CD1D8  40 82 FF F4 */	bne lbl_800D028C
/* 800D029C 000CD1DC  38 7B 00 00 */	addi r3, r27, 0
/* 800D02A0 000CD1E0  38 80 00 04 */	li r4, 4
/* 800D02A4 000CD1E4  38 A0 00 00 */	li r5, 0
/* 800D02A8 000CD1E8  48 00 02 A9 */	bl DBGEXIImm
/* 800D02AC 000CD1EC  7C 60 00 34 */	cntlzw r0, r3
/* 800D02B0 000CD1F0  54 00 D9 7E */	srwi r0, r0, 5
/* 800D02B4 000CD1F4  7F E3 03 78 */	or r3, r31, r0
lbl_800D02B8:
/* 800D02B8 000CD1F8  80 1C 00 00 */	lwz r0, 0(r28)
/* 800D02BC 000CD1FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D02C0 000CD200  40 82 FF F8 */	bne lbl_800D02B8
/* 800D02C4 000CD204  80 9D 00 00 */	lwz r4, 0(r29)
/* 800D02C8 000CD208  7C 60 00 34 */	cntlzw r0, r3
/* 800D02CC 000CD20C  54 03 D9 7E */	srwi r3, r0, 5
/* 800D02D0 000CD210  70 80 04 05 */	andi. r0, r4, 0x405
/* 800D02D4 000CD214  90 1D 00 00 */	stw r0, 0(r29)
/* 800D02D8 000CD218  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 800D02DC 000CD21C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800D02E0 000CD220  38 21 00 38 */	addi r1, r1, 0x38
/* 800D02E4 000CD224  7C 08 03 A6 */	mtlr r0
/* 800D02E8 000CD228  4E 80 00 20 */	blr 

.global DBGWrite
DBGWrite:
/* 800D02EC 000CD22C  7C 08 02 A6 */	mflr r0
/* 800D02F0 000CD230  90 01 00 04 */	stw r0, 4(r1)
/* 800D02F4 000CD234  54 60 41 EA */	rlwinm r0, r3, 8, 7, 0x15
/* 800D02F8 000CD238  64 00 A0 00 */	oris r0, r0, 0xa000
/* 800D02FC 000CD23C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800D0300 000CD240  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 800D0304 000CD244  3F A0 CC 00 */	lis r29, 0xCC006800@ha
/* 800D0308 000CD248  3B C5 00 00 */	addi r30, r5, 0
/* 800D030C 000CD24C  3B 44 00 00 */	addi r26, r4, 0
/* 800D0310 000CD250  3B FD 68 00 */	addi r31, r29, 0xCC006800@l
/* 800D0314 000CD254  38 61 00 24 */	addi r3, r1, 0x24
/* 800D0318 000CD258  38 80 00 04 */	li r4, 4
/* 800D031C 000CD25C  38 A0 00 01 */	li r5, 1
/* 800D0320 000CD260  80 DD 68 28 */	lwz r6, 0x6828(r29)
/* 800D0324 000CD264  70 C6 04 05 */	andi. r6, r6, 0x405
/* 800D0328 000CD268  60 C6 00 C0 */	ori r6, r6, 0xc0
/* 800D032C 000CD26C  94 DF 00 28 */	stwu r6, 0x28(r31)
/* 800D0330 000CD270  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D0334 000CD274  48 00 02 1D */	bl DBGEXIImm
/* 800D0338 000CD278  7C 60 00 34 */	cntlzw r0, r3
/* 800D033C 000CD27C  54 00 D9 7E */	srwi r0, r0, 5
/* 800D0340 000CD280  7C 1B 03 78 */	mr r27, r0
lbl_800D0344:
/* 800D0344 000CD284  3B 9D 68 00 */	addi r28, r29, 0x6800
/* 800D0348 000CD288  84 1C 00 34 */	lwzu r0, 0x34(r28)
/* 800D034C 000CD28C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D0350 000CD290  40 82 FF F4 */	bne lbl_800D0344
/* 800D0354 000CD294  48 00 00 44 */	b lbl_800D0398
lbl_800D0358:
/* 800D0358 000CD298  80 1A 00 00 */	lwz r0, 0(r26)
/* 800D035C 000CD29C  38 61 00 20 */	addi r3, r1, 0x20
/* 800D0360 000CD2A0  38 80 00 04 */	li r4, 4
/* 800D0364 000CD2A4  90 01 00 20 */	stw r0, 0x20(r1)
/* 800D0368 000CD2A8  38 A0 00 01 */	li r5, 1
/* 800D036C 000CD2AC  3B 5A 00 04 */	addi r26, r26, 4
/* 800D0370 000CD2B0  48 00 01 E1 */	bl DBGEXIImm
/* 800D0374 000CD2B4  7C 60 00 34 */	cntlzw r0, r3
/* 800D0378 000CD2B8  54 00 D9 7E */	srwi r0, r0, 5
/* 800D037C 000CD2BC  7F 7B 03 78 */	or r27, r27, r0
lbl_800D0380:
/* 800D0380 000CD2C0  80 1C 00 00 */	lwz r0, 0(r28)
/* 800D0384 000CD2C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D0388 000CD2C8  40 82 FF F8 */	bne lbl_800D0380
/* 800D038C 000CD2CC  37 DE FF FC */	addic. r30, r30, -4
/* 800D0390 000CD2D0  40 80 00 08 */	bge lbl_800D0398
/* 800D0394 000CD2D4  3B C0 00 00 */	li r30, 0
lbl_800D0398:
/* 800D0398 000CD2D8  2C 1E 00 00 */	cmpwi r30, 0
/* 800D039C 000CD2DC  40 82 FF BC */	bne lbl_800D0358
/* 800D03A0 000CD2E0  80 9F 00 00 */	lwz r4, 0(r31)
/* 800D03A4 000CD2E4  7F 60 00 34 */	cntlzw r0, r27
/* 800D03A8 000CD2E8  54 03 D9 7E */	srwi r3, r0, 5
/* 800D03AC 000CD2EC  70 80 04 05 */	andi. r0, r4, 0x405
/* 800D03B0 000CD2F0  90 1F 00 00 */	stw r0, 0(r31)
/* 800D03B4 000CD2F4  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 800D03B8 000CD2F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800D03BC 000CD2FC  38 21 00 40 */	addi r1, r1, 0x40
/* 800D03C0 000CD300  7C 08 03 A6 */	mtlr r0
/* 800D03C4 000CD304  4E 80 00 20 */	blr 

.global DBGRead
DBGRead:
/* 800D03C8 000CD308  7C 08 02 A6 */	mflr r0
/* 800D03CC 000CD30C  90 01 00 04 */	stw r0, 4(r1)
/* 800D03D0 000CD310  54 60 41 EA */	rlwinm r0, r3, 8, 7, 0x15
/* 800D03D4 000CD314  64 00 20 00 */	oris r0, r0, 0x2000
/* 800D03D8 000CD318  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800D03DC 000CD31C  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 800D03E0 000CD320  3F A0 CC 00 */	lis r29, 0xCC006800@ha
/* 800D03E4 000CD324  3B C5 00 00 */	addi r30, r5, 0
/* 800D03E8 000CD328  3B 44 00 00 */	addi r26, r4, 0
/* 800D03EC 000CD32C  3B FD 68 00 */	addi r31, r29, 0xCC006800@l
/* 800D03F0 000CD330  38 61 00 24 */	addi r3, r1, 0x24
/* 800D03F4 000CD334  38 80 00 04 */	li r4, 4
/* 800D03F8 000CD338  38 A0 00 01 */	li r5, 1
/* 800D03FC 000CD33C  80 DD 68 28 */	lwz r6, 0x6828(r29)
/* 800D0400 000CD340  70 C6 04 05 */	andi. r6, r6, 0x405
/* 800D0404 000CD344  60 C6 00 C0 */	ori r6, r6, 0xc0
/* 800D0408 000CD348  94 DF 00 28 */	stwu r6, 0x28(r31)
/* 800D040C 000CD34C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D0410 000CD350  48 00 01 41 */	bl DBGEXIImm
/* 800D0414 000CD354  7C 60 00 34 */	cntlzw r0, r3
/* 800D0418 000CD358  54 00 D9 7E */	srwi r0, r0, 5
/* 800D041C 000CD35C  7C 1B 03 78 */	mr r27, r0
lbl_800D0420:
/* 800D0420 000CD360  3B 9D 68 00 */	addi r28, r29, 0x6800
/* 800D0424 000CD364  84 1C 00 34 */	lwzu r0, 0x34(r28)
/* 800D0428 000CD368  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D042C 000CD36C  40 82 FF F4 */	bne lbl_800D0420
/* 800D0430 000CD370  48 00 00 44 */	b lbl_800D0474
lbl_800D0434:
/* 800D0434 000CD374  38 61 00 20 */	addi r3, r1, 0x20
/* 800D0438 000CD378  38 80 00 04 */	li r4, 4
/* 800D043C 000CD37C  38 A0 00 00 */	li r5, 0
/* 800D0440 000CD380  48 00 01 11 */	bl DBGEXIImm
/* 800D0444 000CD384  7C 60 00 34 */	cntlzw r0, r3
/* 800D0448 000CD388  54 00 D9 7E */	srwi r0, r0, 5
/* 800D044C 000CD38C  7F 7B 03 78 */	or r27, r27, r0
lbl_800D0450:
/* 800D0450 000CD390  80 1C 00 00 */	lwz r0, 0(r28)
/* 800D0454 000CD394  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D0458 000CD398  40 82 FF F8 */	bne lbl_800D0450
/* 800D045C 000CD39C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 800D0460 000CD3A0  37 DE FF FC */	addic. r30, r30, -4
/* 800D0464 000CD3A4  90 1A 00 00 */	stw r0, 0(r26)
/* 800D0468 000CD3A8  3B 5A 00 04 */	addi r26, r26, 4
/* 800D046C 000CD3AC  40 80 00 08 */	bge lbl_800D0474
/* 800D0470 000CD3B0  3B C0 00 00 */	li r30, 0
lbl_800D0474:
/* 800D0474 000CD3B4  2C 1E 00 00 */	cmpwi r30, 0
/* 800D0478 000CD3B8  40 82 FF BC */	bne lbl_800D0434
/* 800D047C 000CD3BC  80 9F 00 00 */	lwz r4, 0(r31)
/* 800D0480 000CD3C0  7F 60 00 34 */	cntlzw r0, r27
/* 800D0484 000CD3C4  54 03 D9 7E */	srwi r3, r0, 5
/* 800D0488 000CD3C8  70 80 04 05 */	andi. r0, r4, 0x405
/* 800D048C 000CD3CC  90 1F 00 00 */	stw r0, 0(r31)
/* 800D0490 000CD3D0  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 800D0494 000CD3D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800D0498 000CD3D8  38 21 00 40 */	addi r1, r1, 0x40
/* 800D049C 000CD3DC  7C 08 03 A6 */	mtlr r0
/* 800D04A0 000CD3E0  4E 80 00 20 */	blr 

.global DBGReadMailbox
DBGReadMailbox:
/* 800D04A4 000CD3E4  7C 08 02 A6 */	mflr r0
/* 800D04A8 000CD3E8  38 80 00 02 */	li r4, 2
/* 800D04AC 000CD3EC  90 01 00 04 */	stw r0, 4(r1)
/* 800D04B0 000CD3F0  3C 00 60 00 */	lis r0, 0x6000
/* 800D04B4 000CD3F4  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800D04B8 000CD3F8  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 800D04BC 000CD3FC  3F C0 CC 00 */	lis r30, 0xCC006800@ha
/* 800D04C0 000CD400  3B 63 00 00 */	addi r27, r3, 0
/* 800D04C4 000CD404  3B BE 68 00 */	addi r29, r30, 0xCC006800@l
/* 800D04C8 000CD408  38 61 00 18 */	addi r3, r1, 0x18
/* 800D04CC 000CD40C  80 BE 68 28 */	lwz r5, 0x6828(r30)
/* 800D04D0 000CD410  70 A5 04 05 */	andi. r5, r5, 0x405
/* 800D04D4 000CD414  60 A5 00 C0 */	ori r5, r5, 0xc0
/* 800D04D8 000CD418  94 BD 00 28 */	stwu r5, 0x28(r29)
/* 800D04DC 000CD41C  38 A0 00 01 */	li r5, 1
/* 800D04E0 000CD420  90 01 00 18 */	stw r0, 0x18(r1)
/* 800D04E4 000CD424  48 00 00 6D */	bl DBGEXIImm
/* 800D04E8 000CD428  7C 60 00 34 */	cntlzw r0, r3
/* 800D04EC 000CD42C  54 1F D9 7E */	srwi r31, r0, 5
lbl_800D04F0:
/* 800D04F0 000CD430  3B 9E 68 00 */	addi r28, r30, 0x6800
/* 800D04F4 000CD434  84 1C 00 34 */	lwzu r0, 0x34(r28)
/* 800D04F8 000CD438  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D04FC 000CD43C  40 82 FF F4 */	bne lbl_800D04F0
/* 800D0500 000CD440  38 7B 00 00 */	addi r3, r27, 0
/* 800D0504 000CD444  38 80 00 04 */	li r4, 4
/* 800D0508 000CD448  38 A0 00 00 */	li r5, 0
/* 800D050C 000CD44C  48 00 00 45 */	bl DBGEXIImm
/* 800D0510 000CD450  7C 60 00 34 */	cntlzw r0, r3
/* 800D0514 000CD454  54 00 D9 7E */	srwi r0, r0, 5
/* 800D0518 000CD458  7F E3 03 78 */	or r3, r31, r0
lbl_800D051C:
/* 800D051C 000CD45C  80 1C 00 00 */	lwz r0, 0(r28)
/* 800D0520 000CD460  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D0524 000CD464  40 82 FF F8 */	bne lbl_800D051C
/* 800D0528 000CD468  80 9D 00 00 */	lwz r4, 0(r29)
/* 800D052C 000CD46C  7C 60 00 34 */	cntlzw r0, r3
/* 800D0530 000CD470  54 03 D9 7E */	srwi r3, r0, 5
/* 800D0534 000CD474  70 80 04 05 */	andi. r0, r4, 0x405
/* 800D0538 000CD478  90 1D 00 00 */	stw r0, 0(r29)
/* 800D053C 000CD47C  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 800D0540 000CD480  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800D0544 000CD484  38 21 00 38 */	addi r1, r1, 0x38
/* 800D0548 000CD488  7C 08 03 A6 */	mtlr r0
/* 800D054C 000CD48C  4E 80 00 20 */	blr 

.global DBGEXIImm
DBGEXIImm:
/* 800D0550 000CD490  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 800D0554 000CD494  28 05 00 00 */	cmplwi r5, 0
/* 800D0558 000CD498  BE C1 00 20 */	stmw r22, 0x20(r1)
/* 800D055C 000CD49C  41 82 01 38 */	beq lbl_800D0694
/* 800D0560 000CD4A0  3B A0 00 00 */	li r29, 0
/* 800D0564 000CD4A4  7C 1D 20 00 */	cmpw r29, r4
/* 800D0568 000CD4A8  3B C0 00 00 */	li r30, 0
/* 800D056C 000CD4AC  40 80 01 20 */	bge lbl_800D068C
/* 800D0570 000CD4B0  2C 04 00 08 */	cmpwi r4, 8
/* 800D0574 000CD4B4  38 C4 FF F8 */	addi r6, r4, -8
/* 800D0578 000CD4B8  40 81 02 5C */	ble lbl_800D07D4
/* 800D057C 000CD4BC  38 06 00 07 */	addi r0, r6, 7
/* 800D0580 000CD4C0  54 00 E8 FE */	srwi r0, r0, 3
/* 800D0584 000CD4C4  2C 06 00 00 */	cmpwi r6, 0
/* 800D0588 000CD4C8  7C 09 03 A6 */	mtctr r0
/* 800D058C 000CD4CC  3B E3 00 00 */	addi r31, r3, 0
/* 800D0590 000CD4D0  40 81 02 44 */	ble lbl_800D07D4
lbl_800D0594:
/* 800D0594 000CD4D4  20 DD 00 03 */	subfic r6, r29, 3
/* 800D0598 000CD4D8  89 9F 00 00 */	lbz r12, 0(r31)
/* 800D059C 000CD4DC  38 1D 00 01 */	addi r0, r29, 1
/* 800D05A0 000CD4E0  89 7F 00 01 */	lbz r11, 1(r31)
/* 800D05A4 000CD4E4  54 CA 18 38 */	slwi r10, r6, 3
/* 800D05A8 000CD4E8  89 3F 00 02 */	lbz r9, 2(r31)
/* 800D05AC 000CD4EC  21 00 00 03 */	subfic r8, r0, 3
/* 800D05B0 000CD4F0  88 FF 00 03 */	lbz r7, 3(r31)
/* 800D05B4 000CD4F4  38 DD 00 02 */	addi r6, r29, 2
/* 800D05B8 000CD4F8  88 1F 00 04 */	lbz r0, 4(r31)
/* 800D05BC 000CD4FC  7D 8C 50 30 */	slw r12, r12, r10
/* 800D05C0 000CD500  8A FF 00 05 */	lbz r23, 5(r31)
/* 800D05C4 000CD504  55 0A 18 38 */	slwi r10, r8, 3
/* 800D05C8 000CD508  8B 3F 00 06 */	lbz r25, 6(r31)
/* 800D05CC 000CD50C  20 C6 00 03 */	subfic r6, r6, 3
/* 800D05D0 000CD510  8B 7F 00 07 */	lbz r27, 7(r31)
/* 800D05D4 000CD514  54 C8 18 38 */	slwi r8, r6, 3
/* 800D05D8 000CD518  7C DD 00 D0 */	neg r6, r29
/* 800D05DC 000CD51C  3A DD 00 04 */	addi r22, r29, 4
/* 800D05E0 000CD520  54 C6 18 38 */	slwi r6, r6, 3
/* 800D05E4 000CD524  22 D6 00 03 */	subfic r22, r22, 3
/* 800D05E8 000CD528  3B 1D 00 05 */	addi r24, r29, 5
/* 800D05EC 000CD52C  56 D6 18 38 */	slwi r22, r22, 3
/* 800D05F0 000CD530  23 18 00 03 */	subfic r24, r24, 3
/* 800D05F4 000CD534  3B 5D 00 06 */	addi r26, r29, 6
/* 800D05F8 000CD538  57 18 18 38 */	slwi r24, r24, 3
/* 800D05FC 000CD53C  23 5A 00 03 */	subfic r26, r26, 3
/* 800D0600 000CD540  3B 9D 00 07 */	addi r28, r29, 7
/* 800D0604 000CD544  57 5A 18 38 */	slwi r26, r26, 3
/* 800D0608 000CD548  23 9C 00 03 */	subfic r28, r28, 3
/* 800D060C 000CD54C  57 9C 18 38 */	slwi r28, r28, 3
/* 800D0610 000CD550  7F DE 63 78 */	or r30, r30, r12
/* 800D0614 000CD554  7D 6A 50 30 */	slw r10, r11, r10
/* 800D0618 000CD558  7F DE 53 78 */	or r30, r30, r10
/* 800D061C 000CD55C  7D 28 40 30 */	slw r8, r9, r8
/* 800D0620 000CD560  7F DE 43 78 */	or r30, r30, r8
/* 800D0624 000CD564  7C E6 30 30 */	slw r6, r7, r6
/* 800D0628 000CD568  7F DE 33 78 */	or r30, r30, r6
/* 800D062C 000CD56C  7C 00 B0 30 */	slw r0, r0, r22
/* 800D0630 000CD570  7F DE 03 78 */	or r30, r30, r0
/* 800D0634 000CD574  7E E0 C0 30 */	slw r0, r23, r24
/* 800D0638 000CD578  7F DE 03 78 */	or r30, r30, r0
/* 800D063C 000CD57C  7F 20 D0 30 */	slw r0, r25, r26
/* 800D0640 000CD580  7F DE 03 78 */	or r30, r30, r0
/* 800D0644 000CD584  7F 60 E0 30 */	slw r0, r27, r28
/* 800D0648 000CD588  7F DE 03 78 */	or r30, r30, r0
/* 800D064C 000CD58C  3B FF 00 08 */	addi r31, r31, 8
/* 800D0650 000CD590  3B BD 00 08 */	addi r29, r29, 8
/* 800D0654 000CD594  42 00 FF 40 */	bdnz lbl_800D0594
/* 800D0658 000CD598  48 00 01 7C */	b lbl_800D07D4
lbl_800D065C:
/* 800D065C 000CD59C  7C 1D 20 50 */	subf r0, r29, r4
/* 800D0660 000CD5A0  7C 1D 20 00 */	cmpw r29, r4
/* 800D0664 000CD5A4  7C 09 03 A6 */	mtctr r0
/* 800D0668 000CD5A8  40 80 00 24 */	bge lbl_800D068C
lbl_800D066C:
/* 800D066C 000CD5AC  20 1D 00 03 */	subfic r0, r29, 3
/* 800D0670 000CD5B0  88 C7 00 00 */	lbz r6, 0(r7)
/* 800D0674 000CD5B4  54 00 18 38 */	slwi r0, r0, 3
/* 800D0678 000CD5B8  7C C0 00 30 */	slw r0, r6, r0
/* 800D067C 000CD5BC  7F DE 03 78 */	or r30, r30, r0
/* 800D0680 000CD5C0  38 E7 00 01 */	addi r7, r7, 1
/* 800D0684 000CD5C4  3B BD 00 01 */	addi r29, r29, 1
/* 800D0688 000CD5C8  42 00 FF E4 */	bdnz lbl_800D066C
lbl_800D068C:
/* 800D068C 000CD5CC  3C C0 CC 00 */	lis r6, 0xCC006838@ha
/* 800D0690 000CD5D0  93 C6 68 38 */	stw r30, 0xCC006838@l(r6)
lbl_800D0694:
/* 800D0694 000CD5D4  38 04 FF FF */	addi r0, r4, -1
/* 800D0698 000CD5D8  3C C0 CC 00 */	lis r6, 0xCC006800@ha
/* 800D069C 000CD5DC  54 A7 10 3A */	slwi r7, r5, 2
/* 800D06A0 000CD5E0  39 06 68 00 */	addi r8, r6, 0xCC006800@l
/* 800D06A4 000CD5E4  60 E6 00 01 */	ori r6, r7, 1
/* 800D06A8 000CD5E8  54 00 20 36 */	slwi r0, r0, 4
/* 800D06AC 000CD5EC  7C C0 03 78 */	or r0, r6, r0
/* 800D06B0 000CD5F0  94 08 00 34 */	stwu r0, 0x34(r8)
lbl_800D06B4:
/* 800D06B4 000CD5F4  80 08 00 00 */	lwz r0, 0(r8)
/* 800D06B8 000CD5F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D06BC 000CD5FC  40 82 FF F8 */	bne lbl_800D06B4
/* 800D06C0 000CD600  28 05 00 00 */	cmplwi r5, 0
/* 800D06C4 000CD604  40 82 01 08 */	bne lbl_800D07CC
/* 800D06C8 000CD608  38 A0 00 00 */	li r5, 0
/* 800D06CC 000CD60C  3C C0 CC 00 */	lis r6, 0xCC006838@ha
/* 800D06D0 000CD610  7C 05 20 00 */	cmpw r5, r4
/* 800D06D4 000CD614  80 06 68 38 */	lwz r0, 0xCC006838@l(r6)
/* 800D06D8 000CD618  40 80 00 F4 */	bge lbl_800D07CC
/* 800D06DC 000CD61C  2C 04 00 08 */	cmpwi r4, 8
/* 800D06E0 000CD620  38 E4 FF F8 */	addi r7, r4, -8
/* 800D06E4 000CD624  40 81 00 BC */	ble lbl_800D07A0
/* 800D06E8 000CD628  38 C7 00 07 */	addi r6, r7, 7
/* 800D06EC 000CD62C  54 C6 E8 FE */	srwi r6, r6, 3
/* 800D06F0 000CD630  2C 07 00 00 */	cmpwi r7, 0
/* 800D06F4 000CD634  7C C9 03 A6 */	mtctr r6
/* 800D06F8 000CD638  40 81 00 A8 */	ble lbl_800D07A0
lbl_800D06FC:
/* 800D06FC 000CD63C  20 C5 00 03 */	subfic r6, r5, 3
/* 800D0700 000CD640  54 C7 18 38 */	slwi r7, r6, 3
/* 800D0704 000CD644  38 C5 00 01 */	addi r6, r5, 1
/* 800D0708 000CD648  7C 08 3C 30 */	srw r8, r0, r7
/* 800D070C 000CD64C  20 C6 00 03 */	subfic r6, r6, 3
/* 800D0710 000CD650  99 03 00 00 */	stb r8, 0(r3)
/* 800D0714 000CD654  54 C7 18 38 */	slwi r7, r6, 3
/* 800D0718 000CD658  38 C5 00 02 */	addi r6, r5, 2
/* 800D071C 000CD65C  7C 0C 3C 30 */	srw r12, r0, r7
/* 800D0720 000CD660  20 C6 00 03 */	subfic r6, r6, 3
/* 800D0724 000CD664  99 83 00 01 */	stb r12, 1(r3)
/* 800D0728 000CD668  54 C6 18 38 */	slwi r6, r6, 3
/* 800D072C 000CD66C  7C 0B 34 30 */	srw r11, r0, r6
/* 800D0730 000CD670  7C C5 00 D0 */	neg r6, r5
/* 800D0734 000CD674  99 63 00 02 */	stb r11, 2(r3)
/* 800D0738 000CD678  54 C7 18 38 */	slwi r7, r6, 3
/* 800D073C 000CD67C  38 C5 00 04 */	addi r6, r5, 4
/* 800D0740 000CD680  7C 0A 3C 30 */	srw r10, r0, r7
/* 800D0744 000CD684  20 C6 00 03 */	subfic r6, r6, 3
/* 800D0748 000CD688  99 43 00 03 */	stb r10, 3(r3)
/* 800D074C 000CD68C  54 C7 18 38 */	slwi r7, r6, 3
/* 800D0750 000CD690  38 C5 00 05 */	addi r6, r5, 5
/* 800D0754 000CD694  7C 09 3C 30 */	srw r9, r0, r7
/* 800D0758 000CD698  20 C6 00 03 */	subfic r6, r6, 3
/* 800D075C 000CD69C  99 23 00 04 */	stb r9, 4(r3)
/* 800D0760 000CD6A0  54 C7 18 38 */	slwi r7, r6, 3
/* 800D0764 000CD6A4  7C 08 3C 30 */	srw r8, r0, r7
/* 800D0768 000CD6A8  38 C5 00 06 */	addi r6, r5, 6
/* 800D076C 000CD6AC  99 03 00 05 */	stb r8, 5(r3)
/* 800D0770 000CD6B0  20 E6 00 03 */	subfic r7, r6, 3
/* 800D0774 000CD6B4  38 C5 00 07 */	addi r6, r5, 7
/* 800D0778 000CD6B8  54 E7 18 38 */	slwi r7, r7, 3
/* 800D077C 000CD6BC  7C 07 3C 30 */	srw r7, r0, r7
/* 800D0780 000CD6C0  20 C6 00 03 */	subfic r6, r6, 3
/* 800D0784 000CD6C4  98 E3 00 06 */	stb r7, 6(r3)
/* 800D0788 000CD6C8  54 C6 18 38 */	slwi r6, r6, 3
/* 800D078C 000CD6CC  7C 06 34 30 */	srw r6, r0, r6
/* 800D0790 000CD6D0  98 C3 00 07 */	stb r6, 7(r3)
/* 800D0794 000CD6D4  38 63 00 08 */	addi r3, r3, 8
/* 800D0798 000CD6D8  38 A5 00 08 */	addi r5, r5, 8
/* 800D079C 000CD6DC  42 00 FF 60 */	bdnz lbl_800D06FC
lbl_800D07A0:
/* 800D07A0 000CD6E0  7C C5 20 50 */	subf r6, r5, r4
/* 800D07A4 000CD6E4  7C 05 20 00 */	cmpw r5, r4
/* 800D07A8 000CD6E8  7C C9 03 A6 */	mtctr r6
/* 800D07AC 000CD6EC  40 80 00 20 */	bge lbl_800D07CC
lbl_800D07B0:
/* 800D07B0 000CD6F0  20 85 00 03 */	subfic r4, r5, 3
/* 800D07B4 000CD6F4  54 84 18 38 */	slwi r4, r4, 3
/* 800D07B8 000CD6F8  7C 04 24 30 */	srw r4, r0, r4
/* 800D07BC 000CD6FC  98 83 00 00 */	stb r4, 0(r3)
/* 800D07C0 000CD700  38 63 00 01 */	addi r3, r3, 1
/* 800D07C4 000CD704  38 A5 00 01 */	addi r5, r5, 1
/* 800D07C8 000CD708  42 00 FF E8 */	bdnz lbl_800D07B0
lbl_800D07CC:
/* 800D07CC 000CD70C  38 60 00 01 */	li r3, 1
/* 800D07D0 000CD710  48 00 00 0C */	b lbl_800D07DC
lbl_800D07D4:
/* 800D07D4 000CD714  7C E3 EA 14 */	add r7, r3, r29
/* 800D07D8 000CD718  4B FF FE 84 */	b lbl_800D065C
lbl_800D07DC:
/* 800D07DC 000CD71C  BA C1 00 20 */	lmw r22, 0x20(r1)
/* 800D07E0 000CD720  38 21 00 48 */	addi r1, r1, 0x48
/* 800D07E4 000CD724  4E 80 00 20 */	blr 
