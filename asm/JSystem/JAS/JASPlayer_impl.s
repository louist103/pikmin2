.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x8
.global s_key_table
s_key_table:
	.float 1.0
	.4byte 0x3F801DD2
	.4byte 0x3F803BAC
	.4byte 0x3F80598E
	.4byte 0x3F807770
	.4byte 0x3F809564
	.4byte 0x3F80B357
	.4byte 0x3F80D152
	.4byte 0x3F80EF56
	.4byte 0x3F810D5A
	.4byte 0x3F812B6F
	.4byte 0x3F814984
	.4byte 0x3F8167A1
	.4byte 0x3F8185CF
	.4byte 0x3F81A3F4
	.4byte 0x3F81C22B
	.4byte 0x3F81E069
	.4byte 0x3F81FEA8
	.4byte 0x3F821CEF
	.4byte 0x3F823B3F
	.4byte 0x3F825996
	.4byte 0x3F8277F7
	.4byte 0x3F82965F
	.4byte 0x3F82B4C8
	.4byte 0x3F82D339
	.4byte 0x3F82F1BB
	.4byte 0x3F83103D
	.4byte 0x3F832EBE
	.4byte 0x3F834D51
	.4byte 0x3F836BEC
	.4byte 0x3F838A87
	.4byte 0x3F83A92A
	.4byte 0x3F83C7D6
	.4byte 0x3F83E68A
	.4byte 0x3F840547
	.4byte 0x3F84240B
	.4byte 0x3F8442D0
	.4byte 0x3F8461A6
	.4byte 0x3F84807C
	.4byte 0x3F849F5A
	.4byte 0x3F84BE40
	.4byte 0x3F84DD2F
	.4byte 0x3F84FC1E
	.4byte 0x3F851B1E
	.4byte 0x3F853A1D
	.4byte 0x3F855925
	.4byte 0x3F857836
	.4byte 0x3F85974E
	.4byte 0x3F85B670
	.4byte 0x3F85D599
	.4byte 0x3F85F4C3
	.4byte 0x3F8613FD
	.4byte 0x3F863337
	.4byte 0x3F86527A
	.4byte 0x3F8671C5
	.4byte 0x3F869119
	.4byte 0x3F86B075
	.4byte 0x3F86CFD1
	.4byte 0x3F86EF3D
	.4byte 0x3F870EAA
	.4byte 0x3F872E1F
	.4byte 0x3F874D9C
	.4byte 0x3F876D22
	.4byte 0x3F878CB0
.global sAdsrDef__9JASPlayer
sAdsrDef__9JASPlayer:
	.4byte 0x00000000
	.float 1.0
	.4byte 0x00000000
	.4byte 0x00000000
	.float 1.0
	.4byte 0x00000000
.global sEnvelopeDef__9JASPlayer
sEnvelopeDef__9JASPlayer:
	.4byte 0x00000000
	.float 1.0
	.4byte 0x00000000
	.4byte sRelTable__9JASPlayer
	.float 1.0
	.4byte 0x00000000
.global sVibratoDef__9JASPlayer
sVibratoDef__9JASPlayer:
	.4byte 0x00000001
	.float 0.5
	.4byte sVibTable__9JASPlayer
	.4byte sVibTable__9JASPlayer
	.4byte 0x00000000
	.float 1.0
.global sTremoroDef__9JASPlayer
sTremoroDef__9JASPlayer:
	.4byte 0x00000000
	.float 0.5
	.4byte sTreTable__9JASPlayer
	.4byte sTreTable__9JASPlayer
	.4byte 0x00000000
	.float 1.0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global extend8to16__9JASPlayerFUc
extend8to16__9JASPlayerFUc:
/* 8009C5B4 000994F4  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8009C5B8 000994F8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009C5BC 000994FC  4D 82 00 20 */	beqlr 
/* 8009C5C0 00099500  3C 63 00 01 */	addis r3, r3, 1
/* 8009C5C4 00099504  38 03 FF 00 */	addi r0, r3, -256
/* 8009C5C8 00099508  7C 03 07 34 */	extsh r3, r0
/* 8009C5CC 0009950C  4E 80 00 20 */	blr 

.global pitchToCent__9JASPlayerFff
pitchToCent__9JASPlayerFff:
/* 8009C5D0 00099510  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8009C5D4 00099514  7C 08 02 A6 */	mflr r0
/* 8009C5D8 00099518  90 01 00 34 */	stw r0, 0x34(r1)
/* 8009C5DC 0009951C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8009C5E0 00099520  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8009C5E4 00099524  C0 02 89 B8 */	lfs f0, lbl_80516D18@sda21(r2)
/* 8009C5E8 00099528  3C 00 43 30 */	lis r0, 0x4330
/* 8009C5EC 0009952C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8009C5F0 00099530  EC 20 00 72 */	fmuls f1, f0, f1
/* 8009C5F4 00099534  C8 62 89 C8 */	lfd f3, lbl_80516D28@sda21(r2)
/* 8009C5F8 00099538  C0 02 89 BC */	lfs f0, lbl_80516D1C@sda21(r2)
/* 8009C5FC 0009953C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8009C600 00099540  FC 20 10 1E */	fctiwz f1, f2
/* 8009C604 00099544  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8009C608 00099548  D8 21 00 08 */	stfd f1, 8(r1)
/* 8009C60C 0009954C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8009C610 00099550  7C 60 07 34 */	extsh r0, r3
/* 8009C614 00099554  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8009C618 00099558  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009C61C 0009955C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8009C620 00099560  EC 21 18 28 */	fsubs f1, f1, f3
/* 8009C624 00099564  EF E2 08 28 */	fsubs f31, f2, f1
/* 8009C628 00099568  40 80 00 18 */	bge lbl_8009C640
/* 8009C62C 0009956C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8009C630 00099570  41 82 00 10 */	beq lbl_8009C640
/* 8009C634 00099574  C0 02 89 C0 */	lfs f0, lbl_80516D20@sda21(r2)
/* 8009C638 00099578  38 63 FF FF */	addi r3, r3, -1
/* 8009C63C 0009957C  EF FF 00 2A */	fadds f31, f31, f0
lbl_8009C640:
/* 8009C640 00099580  C0 02 89 C0 */	lfs f0, lbl_80516D20@sda21(r2)
/* 8009C644 00099584  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8009C648 00099588  4C 41 13 82 */	cror 2, 1, 2
/* 8009C64C 0009958C  40 82 00 0C */	bne lbl_8009C658
/* 8009C650 00099590  EF FF 00 28 */	fsubs f31, f31, f0
/* 8009C654 00099594  38 63 00 01 */	addi r3, r3, 1
lbl_8009C658:
/* 8009C658 00099598  7C 63 07 34 */	extsh r3, r3
/* 8009C65C 0009959C  38 63 00 3C */	addi r3, r3, 0x3c
/* 8009C660 000995A0  48 00 81 79 */	bl key2pitch_c5__9JASDriverFi
/* 8009C664 000995A4  C0 02 89 C4 */	lfs f0, lbl_80516D24@sda21(r2)
/* 8009C668 000995A8  3C 60 80 48 */	lis r3, s_key_table@ha
/* 8009C66C 000995AC  38 63 8A E0 */	addi r3, r3, s_key_table@l
/* 8009C670 000995B0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8009C674 000995B4  FC 00 00 1E */	fctiwz f0, f0
/* 8009C678 000995B8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8009C67C 000995BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009C680 000995C0  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8009C684 000995C4  7C 03 04 2E */	lfsx f0, r3, r0
/* 8009C688 000995C8  EC 20 00 72 */	fmuls f1, f0, f1
/* 8009C68C 000995CC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8009C690 000995D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8009C694 000995D4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8009C698 000995D8  7C 08 03 A6 */	mtlr r0
/* 8009C69C 000995DC  38 21 00 30 */	addi r1, r1, 0x30
/* 8009C6A0 000995E0  4E 80 00 20 */	blr 

.global getRandomS32__9JASPlayerFv
getRandomS32__9JASPlayerFv:
/* 8009C6A4 000995E4  88 0D 8A 64 */	lbz r0, init$664@sda21(r13)
/* 8009C6A8 000995E8  7C 00 07 75 */	extsb. r0, r0
/* 8009C6AC 000995EC  40 82 00 14 */	bne lbl_8009C6C0
/* 8009C6B0 000995F0  38 60 10 00 */	li r3, 0x1000
/* 8009C6B4 000995F4  38 00 00 01 */	li r0, 1
/* 8009C6B8 000995F8  90 6D 8A 60 */	stw r3, sV0$663@sda21(r13)
/* 8009C6BC 000995FC  98 0D 8A 64 */	stb r0, init$664@sda21(r13)
lbl_8009C6C0:
/* 8009C6C0 00099600  88 0D 8A 6C */	lbz r0, init$667@sda21(r13)
/* 8009C6C4 00099604  7C 00 07 75 */	extsb. r0, r0
/* 8009C6C8 00099608  40 82 00 14 */	bne lbl_8009C6DC
/* 8009C6CC 0009960C  38 60 55 55 */	li r3, 0x5555
/* 8009C6D0 00099610  38 00 00 01 */	li r0, 1
/* 8009C6D4 00099614  90 6D 8A 68 */	stw r3, sV1$666@sda21(r13)
/* 8009C6D8 00099618  98 0D 8A 6C */	stb r0, init$667@sda21(r13)
lbl_8009C6DC:
/* 8009C6DC 0009961C  3C 60 13 58 */	lis r3, 0x13579BDE@ha
/* 8009C6E0 00099620  80 8D 8A 60 */	lwz r4, sV0$663@sda21(r13)
/* 8009C6E4 00099624  38 03 9B DE */	addi r0, r3, 0x13579BDE@l
/* 8009C6E8 00099628  80 AD 8A 68 */	lwz r5, sV1$666@sda21(r13)
/* 8009C6EC 0009962C  3C 60 98 76 */	lis r3, 0x98765432@ha
/* 8009C6F0 00099630  38 63 54 32 */	addi r3, r3, 0x98765432@l
/* 8009C6F4 00099634  90 AD 8A 60 */	stw r5, sV0$663@sda21(r13)
/* 8009C6F8 00099638  7C 04 01 D6 */	mullw r0, r4, r0
/* 8009C6FC 0009963C  7C 65 19 D6 */	mullw r3, r5, r3
/* 8009C700 00099640  7C 00 26 70 */	srawi r0, r0, 4
/* 8009C704 00099644  7C 63 02 14 */	add r3, r3, r0
/* 8009C708 00099648  38 63 00 01 */	addi r3, r3, 1
/* 8009C70C 0009964C  90 6D 8A 68 */	stw r3, sV1$666@sda21(r13)
/* 8009C710 00099650  4E 80 00 20 */	blr 
