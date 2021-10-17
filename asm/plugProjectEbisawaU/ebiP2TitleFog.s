.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 0x8
.global lbl_804E9FA8
lbl_804E9FA8:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global setGX__Q33ebi5title12TTitleFogMgrFR6Camera
setGX__Q33ebi5title12TTitleFogMgrFR6Camera:
/* 803EB1A4 003E80E4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803EB1A8 003E80E8  7C 08 02 A6 */	mflr r0
/* 803EB1AC 003E80EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 803EB1B0 003E80F0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 803EB1B4 003E80F4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 803EB1B8 003E80F8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 803EB1BC 003E80FC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 803EB1C0 003E8100  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 803EB1C4 003E8104  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 803EB1C8 003E8108  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803EB1CC 003E810C  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 803EB1D0 003E8110  7C 9F 23 78 */	mr r31, r4
/* 803EB1D4 003E8114  28 00 00 00 */	cmplwi r0, 0
/* 803EB1D8 003E8118  41 82 00 94 */	beq lbl_803EB26C
/* 803EB1DC 003E811C  80 C3 00 B8 */	lwz r6, 0xb8(r3)
/* 803EB1E0 003E8120  80 A3 00 E0 */	lwz r5, 0xe0(r3)
/* 803EB1E4 003E8124  80 83 01 08 */	lwz r4, 0x108(r3)
/* 803EB1E8 003E8128  80 03 01 30 */	lwz r0, 0x130(r3)
/* 803EB1EC 003E812C  98 C1 00 08 */	stb r6, 8(r1)
/* 803EB1F0 003E8130  C3 C3 00 68 */	lfs f30, 0x68(r3)
/* 803EB1F4 003E8134  C3 A3 00 90 */	lfs f29, 0x90(r3)
/* 803EB1F8 003E8138  7F E3 FB 78 */	mr r3, r31
/* 803EB1FC 003E813C  98 A1 00 09 */	stb r5, 9(r1)
/* 803EB200 003E8140  98 81 00 0A */	stb r4, 0xa(r1)
/* 803EB204 003E8144  98 01 00 0B */	stb r0, 0xb(r1)
/* 803EB208 003E8148  80 01 00 08 */	lwz r0, 8(r1)
/* 803EB20C 003E814C  90 01 00 10 */	stw r0, 0x10(r1)
/* 803EB210 003E8150  48 02 FB 19 */	bl getFar__6CameraFv
/* 803EB214 003E8154  FF E0 08 90 */	fmr f31, f1
/* 803EB218 003E8158  7F E3 FB 78 */	mr r3, r31
/* 803EB21C 003E815C  48 02 FA F1 */	bl getNear__6CameraFv
/* 803EB220 003E8160  FC 60 08 90 */	fmr f3, f1
/* 803EB224 003E8164  38 81 00 10 */	addi r4, r1, 0x10
/* 803EB228 003E8168  FC 20 F0 90 */	fmr f1, f30
/* 803EB22C 003E816C  38 60 00 02 */	li r3, 2
/* 803EB230 003E8170  FC 40 E8 90 */	fmr f2, f29
/* 803EB234 003E8174  FC 80 F8 90 */	fmr f4, f31
/* 803EB238 003E8178  4B CF D9 A9 */	bl GXSetFog
/* 803EB23C 003E817C  48 03 7F E9 */	bl getRenderModeObj__6SystemFv
/* 803EB240 003E8180  A0 83 00 04 */	lhz r4, 4(r3)
/* 803EB244 003E8184  38 61 00 14 */	addi r3, r1, 0x14
/* 803EB248 003E8188  38 BF 00 B4 */	addi r5, r31, 0xb4
/* 803EB24C 003E818C  4B CF DB B9 */	bl GXInitFogAdjTable
/* 803EB250 003E8190  48 03 7F D5 */	bl getRenderModeObj__6SystemFv
/* 803EB254 003E8194  A0 03 00 04 */	lhz r0, 4(r3)
/* 803EB258 003E8198  38 A1 00 14 */	addi r5, r1, 0x14
/* 803EB25C 003E819C  38 60 00 01 */	li r3, 1
/* 803EB260 003E81A0  54 04 FC 7E */	rlwinm r4, r0, 0x1f, 0x11, 0x1f
/* 803EB264 003E81A4  4B CF DD 51 */	bl GXSetFogRangeAdj
/* 803EB268 003E81A8  48 00 00 28 */	b lbl_803EB290
lbl_803EB26C:
/* 803EB26C 003E81AC  C0 22 1A D0 */	lfs f1, lbl_8051FE30@sda21(r2)
/* 803EB270 003E81B0  38 81 00 0C */	addi r4, r1, 0xc
/* 803EB274 003E81B4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 803EB278 003E81B8  38 60 00 00 */	li r3, 0
/* 803EB27C 003E81BC  FC 40 08 90 */	fmr f2, f1
/* 803EB280 003E81C0  FC 60 08 90 */	fmr f3, f1
/* 803EB284 003E81C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 803EB288 003E81C8  FC 80 08 90 */	fmr f4, f1
/* 803EB28C 003E81CC  4B CF D9 55 */	bl GXSetFog
lbl_803EB290:
/* 803EB290 003E81D0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 803EB294 003E81D4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 803EB298 003E81D8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 803EB29C 003E81DC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 803EB2A0 003E81E0  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 803EB2A4 003E81E4  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 803EB2A8 003E81E8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803EB2AC 003E81EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803EB2B0 003E81F0  7C 08 03 A6 */	mtlr r0
/* 803EB2B4 003E81F4  38 21 00 60 */	addi r1, r1, 0x60
/* 803EB2B8 003E81F8  4E 80 00 20 */	blr 

.global loadSettingFile__Q33ebi5title12TTitleFogMgrFP10JKRArchivePc
loadSettingFile__Q33ebi5title12TTitleFogMgrFP10JKRArchivePc:
/* 803EB2BC 003E81FC  94 21 FB D0 */	stwu r1, -0x430(r1)
/* 803EB2C0 003E8200  7C 08 02 A6 */	mflr r0
/* 803EB2C4 003E8204  90 01 04 34 */	stw r0, 0x434(r1)
/* 803EB2C8 003E8208  93 E1 04 2C */	stw r31, 0x42c(r1)
/* 803EB2CC 003E820C  7C 7F 1B 78 */	mr r31, r3
/* 803EB2D0 003E8210  7C 83 23 78 */	mr r3, r4
/* 803EB2D4 003E8214  81 84 00 00 */	lwz r12, 0(r4)
/* 803EB2D8 003E8218  7C A4 2B 78 */	mr r4, r5
/* 803EB2DC 003E821C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 803EB2E0 003E8220  7D 89 03 A6 */	mtctr r12
/* 803EB2E4 003E8224  4E 80 04 21 */	bctrl 
/* 803EB2E8 003E8228  28 03 00 00 */	cmplwi r3, 0
/* 803EB2EC 003E822C  41 82 00 38 */	beq lbl_803EB324
/* 803EB2F0 003E8230  7C 64 1B 78 */	mr r4, r3
/* 803EB2F4 003E8234  38 61 00 08 */	addi r3, r1, 8
/* 803EB2F8 003E8238  38 A0 FF FF */	li r5, -1
/* 803EB2FC 003E823C  48 02 A5 FD */	bl __ct__9RamStreamFPvi
/* 803EB300 003E8240  38 00 00 01 */	li r0, 1
/* 803EB304 003E8244  2C 00 00 01 */	cmpwi r0, 1
/* 803EB308 003E8248  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB30C 003E824C  40 82 00 0C */	bne lbl_803EB318
/* 803EB310 003E8250  38 00 00 00 */	li r0, 0
/* 803EB314 003E8254  90 01 04 1C */	stw r0, 0x41c(r1)
lbl_803EB318:
/* 803EB318 003E8258  38 7F 00 28 */	addi r3, r31, 0x28
/* 803EB31C 003E825C  38 81 00 08 */	addi r4, r1, 8
/* 803EB320 003E8260  48 02 84 D5 */	bl read__10ParametersFR6Stream
lbl_803EB324:
/* 803EB324 003E8264  80 01 04 34 */	lwz r0, 0x434(r1)
/* 803EB328 003E8268  83 E1 04 2C */	lwz r31, 0x42c(r1)
/* 803EB32C 003E826C  7C 08 03 A6 */	mtlr r0
/* 803EB330 003E8270  38 21 04 30 */	addi r1, r1, 0x430
/* 803EB334 003E8274  4E 80 00 20 */	blr 

.global __sinit_ebiP2TitleFog_cpp
__sinit_ebiP2TitleFog_cpp:
/* 803EB338 003E8278  3C 80 80 51 */	lis r4, __float_nan@ha
/* 803EB33C 003E827C  38 00 FF FF */	li r0, -1
/* 803EB340 003E8280  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 803EB344 003E8284  3C 60 80 4F */	lis r3, lbl_804E9FA8@ha
/* 803EB348 003E8288  90 0D 9A 90 */	stw r0, lbl_80516110@sda21(r13)
/* 803EB34C 003E828C  D4 03 9F A8 */	stfsu f0, lbl_804E9FA8@l(r3)
/* 803EB350 003E8290  D0 0D 9A 94 */	stfs f0, lbl_80516114@sda21(r13)
/* 803EB354 003E8294  D0 03 00 04 */	stfs f0, 4(r3)
/* 803EB358 003E8298  D0 03 00 08 */	stfs f0, 8(r3)
/* 803EB35C 003E829C  4E 80 00 20 */	blr 
