.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.obj __vt__13JASTaskThread, global
	.4byte 0
	.4byte 0
	.4byte __dt__13JASTaskThreadFv
	.4byte run__13JASTaskThreadFv
.endobj __vt__13JASTaskThread

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn __ct__13JASTaskThreadFiiUl, global
/* 800A8840 000A5780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A8844 000A5784  7C 08 02 A6 */	mflr r0
/* 800A8848 000A5788  7C 87 23 78 */	mr r7, r4
/* 800A884C 000A578C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A8850 000A5790  7C C0 33 78 */	mr r0, r6
/* 800A8854 000A5794  7C A6 2B 78 */	mr r6, r5
/* 800A8858 000A5798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A885C 000A579C  7C 7F 1B 78 */	mr r31, r3
/* 800A8860 000A57A0  7C 05 03 78 */	mr r5, r0
/* 800A8864 000A57A4  80 8D 8A B8 */	lwz r4, JASDram@sda21(r13)
/* 800A8868 000A57A8  4B F7 CE 89 */	bl __ct__9JKRThreadFP7JKRHeapUlii
/* 800A886C 000A57AC  3C 60 80 4A */	lis r3, __vt__13JASTaskThread@ha
/* 800A8870 000A57B0  38 00 00 00 */	li r0, 0
/* 800A8874 000A57B4  38 83 44 90 */	addi r4, r3, __vt__13JASTaskThread@l
/* 800A8878 000A57B8  38 7F 00 7C */	addi r3, r31, 0x7c
/* 800A887C 000A57BC  90 9F 00 00 */	stw r4, 0(r31)
/* 800A8880 000A57C0  98 1F 00 84 */	stb r0, 0x84(r31)
/* 800A8884 000A57C4  48 04 91 31 */	bl OSInitThreadQueue
/* 800A8888 000A57C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A888C 000A57CC  7F E3 FB 78 */	mr r3, r31
/* 800A8890 000A57D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A8894 000A57D4  7C 08 03 A6 */	mtlr r0
/* 800A8898 000A57D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800A889C 000A57DC  4E 80 00 20 */	blr 
.endfn __ct__13JASTaskThreadFiiUl

.fn __dt__13JASTaskThreadFv, global
/* 800A88A0 000A57E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A88A4 000A57E4  7C 08 02 A6 */	mflr r0
/* 800A88A8 000A57E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A88AC 000A57EC  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 800A88B0 000A57F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 800A88B4 000A57F4  7C 9F 23 78 */	mr r31, r4
/* 800A88B8 000A57F8  41 82 00 F8 */	beq .L_800A89B0
/* 800A88BC 000A57FC  3C 60 80 4A */	lis r3, __vt__13JASTaskThread@ha
/* 800A88C0 000A5800  38 03 44 90 */	addi r0, r3, __vt__13JASTaskThread@l
/* 800A88C4 000A5804  90 1E 00 00 */	stw r0, 0(r30)
.L_800A88C8:
/* 800A88C8 000A5808  38 7E 00 30 */	addi r3, r30, 0x30
/* 800A88CC 000A580C  38 81 00 0C */	addi r4, r1, 0xc
/* 800A88D0 000A5810  38 A0 00 00 */	li r5, 0
/* 800A88D4 000A5814  48 04 6D 11 */	bl OSReceiveMessage
/* 800A88D8 000A5818  34 01 00 10 */	addic. r0, r1, 0x10
/* 800A88DC 000A581C  41 82 00 08 */	beq .L_800A88E4
/* 800A88E0 000A5820  90 61 00 10 */	stw r3, 0x10(r1)
.L_800A88E4:
/* 800A88E4 000A5824  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800A88E8 000A5828  83 81 00 0C */	lwz r28, 0xc(r1)
/* 800A88EC 000A582C  2C 00 00 00 */	cmpwi r0, 0
/* 800A88F0 000A5830  41 82 00 A4 */	beq .L_800A8994
/* 800A88F4 000A5834  4B FF EA D1 */	bl getCommandHeap__9JASKernelFv
/* 800A88F8 000A5838  7C 7D 1B 78 */	mr r29, r3
/* 800A88FC 000A583C  38 7D 00 04 */	addi r3, r29, 4
/* 800A8900 000A5840  90 61 00 08 */	stw r3, 8(r1)
/* 800A8904 000A5844  48 04 72 65 */	bl OSLockMutex
/* 800A8908 000A5848  80 7D 00 00 */	lwz r3, 0(r29)
/* 800A890C 000A584C  3B 60 00 00 */	li r27, 0
/* 800A8910 000A5850  48 00 00 70 */	b .L_800A8980
.L_800A8914:
/* 800A8914 000A5854  38 03 00 0C */	addi r0, r3, 0xc
/* 800A8918 000A5858  38 80 00 00 */	li r4, 0
/* 800A891C 000A585C  7C 00 E0 40 */	cmplw r0, r28
/* 800A8920 000A5860  41 81 00 14 */	bgt .L_800A8934
/* 800A8924 000A5864  38 03 04 0C */	addi r0, r3, 0x40c
/* 800A8928 000A5868  7C 1C 00 40 */	cmplw r28, r0
/* 800A892C 000A586C  40 80 00 08 */	bge .L_800A8934
/* 800A8930 000A5870  38 80 00 01 */	li r4, 1
.L_800A8934:
/* 800A8934 000A5874  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 800A8938 000A5878  41 82 00 40 */	beq .L_800A8978
/* 800A893C 000A587C  80 83 00 08 */	lwz r4, 8(r3)
/* 800A8940 000A5880  38 04 FF FF */	addi r0, r4, -1
/* 800A8944 000A5884  90 03 00 08 */	stw r0, 8(r3)
/* 800A8948 000A5888  80 1D 00 00 */	lwz r0, 0(r29)
/* 800A894C 000A588C  7C 03 00 40 */	cmplw r3, r0
/* 800A8950 000A5890  41 82 00 1C */	beq .L_800A896C
/* 800A8954 000A5894  80 03 00 08 */	lwz r0, 8(r3)
/* 800A8958 000A5898  28 00 00 00 */	cmplwi r0, 0
/* 800A895C 000A589C  40 82 00 10 */	bne .L_800A896C
/* 800A8960 000A58A0  83 83 00 00 */	lwz r28, 0(r3)
/* 800A8964 000A58A4  4B F7 B7 51 */	bl __dl__FPv
/* 800A8968 000A58A8  93 9B 00 00 */	stw r28, 0(r27)
.L_800A896C:
/* 800A896C 000A58AC  80 61 00 08 */	lwz r3, 8(r1)
/* 800A8970 000A58B0  48 04 72 D5 */	bl OSUnlockMutex
/* 800A8974 000A58B4  4B FF FF 54 */	b .L_800A88C8
.L_800A8978:
/* 800A8978 000A58B8  7C 7B 1B 78 */	mr r27, r3
/* 800A897C 000A58BC  80 63 00 00 */	lwz r3, 0(r3)
.L_800A8980:
/* 800A8980 000A58C0  28 03 00 00 */	cmplwi r3, 0
/* 800A8984 000A58C4  40 82 FF 90 */	bne .L_800A8914
/* 800A8988 000A58C8  80 61 00 08 */	lwz r3, 8(r1)
/* 800A898C 000A58CC  48 04 72 B9 */	bl OSUnlockMutex
/* 800A8990 000A58D0  4B FF FF 38 */	b .L_800A88C8
.L_800A8994:
/* 800A8994 000A58D4  7F C3 F3 78 */	mr r3, r30
/* 800A8998 000A58D8  38 80 00 00 */	li r4, 0
/* 800A899C 000A58DC  4B F7 CE 9D */	bl __dt__9JKRThreadFv
/* 800A89A0 000A58E0  7F E0 07 35 */	extsh. r0, r31
/* 800A89A4 000A58E4  40 81 00 0C */	ble .L_800A89B0
/* 800A89A8 000A58E8  7F C3 F3 78 */	mr r3, r30
/* 800A89AC 000A58EC  4B F7 B7 09 */	bl __dl__FPv
.L_800A89B0:
/* 800A89B0 000A58F0  7F C3 F3 78 */	mr r3, r30
/* 800A89B4 000A58F4  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 800A89B8 000A58F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A89BC 000A58FC  7C 08 03 A6 */	mtlr r0
/* 800A89C0 000A5900  38 21 00 30 */	addi r1, r1, 0x30
/* 800A89C4 000A5904  4E 80 00 20 */	blr 
.endfn __dt__13JASTaskThreadFv

.fn sendCmdMsg__13JASTaskThreadFPFPv_vPCvUl, global
/* 800A89C8 000A5908  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A89CC 000A590C  7C 08 02 A6 */	mflr r0
/* 800A89D0 000A5910  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A89D4 000A5914  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 800A89D8 000A5918  7C DE 33 78 */	mr r30, r6
/* 800A89DC 000A591C  7C 7B 1B 78 */	mr r27, r3
/* 800A89E0 000A5920  7C 9C 23 78 */	mr r28, r4
/* 800A89E4 000A5924  7C BD 2B 78 */	mr r29, r5
/* 800A89E8 000A5928  3B 5E 00 08 */	addi r26, r30, 8
/* 800A89EC 000A592C  4B FF E9 D9 */	bl getCommandHeap__9JASKernelFv
/* 800A89F0 000A5930  7C 7F 1B 78 */	mr r31, r3
/* 800A89F4 000A5934  38 7F 00 04 */	addi r3, r31, 4
/* 800A89F8 000A5938  90 61 00 08 */	stw r3, 8(r1)
/* 800A89FC 000A593C  48 04 71 6D */	bl OSLockMutex
/* 800A8A00 000A5940  83 3F 00 00 */	lwz r25, 0(r31)
/* 800A8A04 000A5944  80 19 00 04 */	lwz r0, 4(r25)
/* 800A8A08 000A5948  20 00 04 00 */	subfic r0, r0, 0x400
/* 800A8A0C 000A594C  7C 00 D0 40 */	cmplw r0, r26
/* 800A8A10 000A5950  40 80 00 E4 */	bge .L_800A8AF4
/* 800A8A14 000A5954  28 1A 04 00 */	cmplwi r26, 0x400
/* 800A8A18 000A5958  40 81 00 14 */	ble .L_800A8A2C
/* 800A8A1C 000A595C  80 61 00 08 */	lwz r3, 8(r1)
/* 800A8A20 000A5960  48 04 72 25 */	bl OSUnlockMutex
/* 800A8A24 000A5964  3B E0 00 00 */	li r31, 0
/* 800A8A28 000A5968  48 00 00 F8 */	b .L_800A8B20
.L_800A8A2C:
/* 800A8A2C 000A596C  28 19 00 00 */	cmplwi r25, 0
/* 800A8A30 000A5970  41 82 00 20 */	beq .L_800A8A50
/* 800A8A34 000A5974  80 19 00 08 */	lwz r0, 8(r25)
/* 800A8A38 000A5978  28 00 00 00 */	cmplwi r0, 0
/* 800A8A3C 000A597C  40 82 00 14 */	bne .L_800A8A50
/* 800A8A40 000A5980  38 00 00 00 */	li r0, 0
/* 800A8A44 000A5984  38 60 00 01 */	li r3, 1
/* 800A8A48 000A5988  90 19 00 04 */	stw r0, 4(r25)
/* 800A8A4C 000A598C  48 00 00 90 */	b .L_800A8ADC
.L_800A8A50:
/* 800A8A50 000A5990  4B FF E9 6D */	bl getSystemHeap__9JASKernelFv
/* 800A8A54 000A5994  7C 64 1B 78 */	mr r4, r3
/* 800A8A58 000A5998  38 60 04 0C */	li r3, 0x40c
/* 800A8A5C 000A599C  38 A0 00 00 */	li r5, 0
/* 800A8A60 000A59A0  4B F7 B4 E1 */	bl __nw__FUlP7JKRHeapi
/* 800A8A64 000A59A4  28 03 00 00 */	cmplwi r3, 0
/* 800A8A68 000A59A8  41 82 00 14 */	beq .L_800A8A7C
/* 800A8A6C 000A59AC  93 23 00 00 */	stw r25, 0(r3)
/* 800A8A70 000A59B0  38 00 00 00 */	li r0, 0
/* 800A8A74 000A59B4  90 03 00 04 */	stw r0, 4(r3)
/* 800A8A78 000A59B8  90 03 00 08 */	stw r0, 8(r3)
.L_800A8A7C:
/* 800A8A7C 000A59BC  90 7F 00 00 */	stw r3, 0(r31)
/* 800A8A80 000A59C0  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A8A84 000A59C4  28 00 00 00 */	cmplwi r0, 0
/* 800A8A88 000A59C8  41 82 00 0C */	beq .L_800A8A94
/* 800A8A8C 000A59CC  38 60 00 01 */	li r3, 1
/* 800A8A90 000A59D0  48 00 00 4C */	b .L_800A8ADC
.L_800A8A94:
/* 800A8A94 000A59D4  80 8D 88 28 */	lwz r4, sSystemHeap__7JKRHeap@sda21(r13)
/* 800A8A98 000A59D8  38 60 04 0C */	li r3, 0x40c
/* 800A8A9C 000A59DC  38 A0 00 00 */	li r5, 0
/* 800A8AA0 000A59E0  4B F7 B4 A1 */	bl __nw__FUlP7JKRHeapi
/* 800A8AA4 000A59E4  28 03 00 00 */	cmplwi r3, 0
/* 800A8AA8 000A59E8  41 82 00 14 */	beq .L_800A8ABC
/* 800A8AAC 000A59EC  93 23 00 00 */	stw r25, 0(r3)
/* 800A8AB0 000A59F0  38 00 00 00 */	li r0, 0
/* 800A8AB4 000A59F4  90 03 00 04 */	stw r0, 4(r3)
/* 800A8AB8 000A59F8  90 03 00 08 */	stw r0, 8(r3)
.L_800A8ABC:
/* 800A8ABC 000A59FC  90 7F 00 00 */	stw r3, 0(r31)
/* 800A8AC0 000A5A00  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A8AC4 000A5A04  28 00 00 00 */	cmplwi r0, 0
/* 800A8AC8 000A5A08  41 82 00 0C */	beq .L_800A8AD4
/* 800A8ACC 000A5A0C  38 60 00 01 */	li r3, 1
/* 800A8AD0 000A5A10  48 00 00 0C */	b .L_800A8ADC
.L_800A8AD4:
/* 800A8AD4 000A5A14  93 3F 00 00 */	stw r25, 0(r31)
/* 800A8AD8 000A5A18  38 60 00 00 */	li r3, 0
.L_800A8ADC:
/* 800A8ADC 000A5A1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A8AE0 000A5A20  40 82 00 14 */	bne .L_800A8AF4
/* 800A8AE4 000A5A24  80 61 00 08 */	lwz r3, 8(r1)
/* 800A8AE8 000A5A28  48 04 71 5D */	bl OSUnlockMutex
/* 800A8AEC 000A5A2C  3B E0 00 00 */	li r31, 0
/* 800A8AF0 000A5A30  48 00 00 30 */	b .L_800A8B20
.L_800A8AF4:
/* 800A8AF4 000A5A34  80 BF 00 00 */	lwz r5, 0(r31)
/* 800A8AF8 000A5A38  80 61 00 08 */	lwz r3, 8(r1)
/* 800A8AFC 000A5A3C  80 85 00 04 */	lwz r4, 4(r5)
/* 800A8B00 000A5A40  7C 04 D2 14 */	add r0, r4, r26
/* 800A8B04 000A5A44  3B E4 00 0C */	addi r31, r4, 0xc
/* 800A8B08 000A5A48  90 05 00 04 */	stw r0, 4(r5)
/* 800A8B0C 000A5A4C  7F E5 FA 14 */	add r31, r5, r31
/* 800A8B10 000A5A50  80 85 00 08 */	lwz r4, 8(r5)
/* 800A8B14 000A5A54  38 04 00 01 */	addi r0, r4, 1
/* 800A8B18 000A5A58  90 05 00 08 */	stw r0, 8(r5)
/* 800A8B1C 000A5A5C  48 04 71 29 */	bl OSUnlockMutex
.L_800A8B20:
/* 800A8B20 000A5A60  28 1F 00 00 */	cmplwi r31, 0
/* 800A8B24 000A5A64  40 82 00 0C */	bne .L_800A8B30
/* 800A8B28 000A5A68  3B E0 00 00 */	li r31, 0
/* 800A8B2C 000A5A6C  48 00 00 20 */	b .L_800A8B4C
.L_800A8B30:
/* 800A8B30 000A5A70  38 00 00 01 */	li r0, 1
/* 800A8B34 000A5A74  7F A3 EB 78 */	mr r3, r29
/* 800A8B38 000A5A78  90 1F 00 04 */	stw r0, 4(r31)
/* 800A8B3C 000A5A7C  7F C5 F3 78 */	mr r5, r30
/* 800A8B40 000A5A80  38 9F 00 08 */	addi r4, r31, 8
/* 800A8B44 000A5A84  4B FF D4 4D */	bl bcopy__7JASCalcFPCvPvUl
/* 800A8B48 000A5A88  93 9F 00 00 */	stw r28, 0(r31)
.L_800A8B4C:
/* 800A8B4C 000A5A8C  28 1F 00 00 */	cmplwi r31, 0
/* 800A8B50 000A5A90  40 82 00 0C */	bne .L_800A8B5C
/* 800A8B54 000A5A94  38 60 00 00 */	li r3, 0
/* 800A8B58 000A5A98  48 00 00 BC */	b .L_800A8C14
.L_800A8B5C:
/* 800A8B5C 000A5A9C  7F E4 FB 78 */	mr r4, r31
/* 800A8B60 000A5AA0  38 7B 00 30 */	addi r3, r27, 0x30
/* 800A8B64 000A5AA4  38 A0 00 00 */	li r5, 0
/* 800A8B68 000A5AA8  48 04 69 B5 */	bl OSSendMessage
/* 800A8B6C 000A5AAC  7C 7C 1B 79 */	or. r28, r3, r3
/* 800A8B70 000A5AB0  40 82 00 A0 */	bne .L_800A8C10
/* 800A8B74 000A5AB4  4B FF E8 51 */	bl getCommandHeap__9JASKernelFv
/* 800A8B78 000A5AB8  7C 7B 1B 78 */	mr r27, r3
/* 800A8B7C 000A5ABC  38 7B 00 04 */	addi r3, r27, 4
/* 800A8B80 000A5AC0  90 61 00 0C */	stw r3, 0xc(r1)
/* 800A8B84 000A5AC4  48 04 6F E5 */	bl OSLockMutex
/* 800A8B88 000A5AC8  80 7B 00 00 */	lwz r3, 0(r27)
/* 800A8B8C 000A5ACC  3B 40 00 00 */	li r26, 0
/* 800A8B90 000A5AD0  48 00 00 70 */	b .L_800A8C00
.L_800A8B94:
/* 800A8B94 000A5AD4  38 03 00 0C */	addi r0, r3, 0xc
/* 800A8B98 000A5AD8  38 80 00 00 */	li r4, 0
/* 800A8B9C 000A5ADC  7C 00 F8 40 */	cmplw r0, r31
/* 800A8BA0 000A5AE0  41 81 00 14 */	bgt .L_800A8BB4
/* 800A8BA4 000A5AE4  38 03 04 0C */	addi r0, r3, 0x40c
/* 800A8BA8 000A5AE8  7C 1F 00 40 */	cmplw r31, r0
/* 800A8BAC 000A5AEC  40 80 00 08 */	bge .L_800A8BB4
/* 800A8BB0 000A5AF0  38 80 00 01 */	li r4, 1
.L_800A8BB4:
/* 800A8BB4 000A5AF4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 800A8BB8 000A5AF8  41 82 00 40 */	beq .L_800A8BF8
/* 800A8BBC 000A5AFC  80 83 00 08 */	lwz r4, 8(r3)
/* 800A8BC0 000A5B00  38 04 FF FF */	addi r0, r4, -1
/* 800A8BC4 000A5B04  90 03 00 08 */	stw r0, 8(r3)
/* 800A8BC8 000A5B08  80 1B 00 00 */	lwz r0, 0(r27)
/* 800A8BCC 000A5B0C  7C 03 00 40 */	cmplw r3, r0
/* 800A8BD0 000A5B10  41 82 00 1C */	beq .L_800A8BEC
/* 800A8BD4 000A5B14  80 03 00 08 */	lwz r0, 8(r3)
/* 800A8BD8 000A5B18  28 00 00 00 */	cmplwi r0, 0
/* 800A8BDC 000A5B1C  40 82 00 10 */	bne .L_800A8BEC
/* 800A8BE0 000A5B20  83 63 00 00 */	lwz r27, 0(r3)
/* 800A8BE4 000A5B24  4B F7 B4 D1 */	bl __dl__FPv
/* 800A8BE8 000A5B28  93 7A 00 00 */	stw r27, 0(r26)
.L_800A8BEC:
/* 800A8BEC 000A5B2C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800A8BF0 000A5B30  48 04 70 55 */	bl OSUnlockMutex
/* 800A8BF4 000A5B34  48 00 00 1C */	b .L_800A8C10
.L_800A8BF8:
/* 800A8BF8 000A5B38  7C 7A 1B 78 */	mr r26, r3
/* 800A8BFC 000A5B3C  80 63 00 00 */	lwz r3, 0(r3)
.L_800A8C00:
/* 800A8C00 000A5B40  28 03 00 00 */	cmplwi r3, 0
/* 800A8C04 000A5B44  40 82 FF 90 */	bne .L_800A8B94
/* 800A8C08 000A5B48  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800A8C0C 000A5B4C  48 04 70 39 */	bl OSUnlockMutex
.L_800A8C10:
/* 800A8C10 000A5B50  7F 83 E3 78 */	mr r3, r28
.L_800A8C14:
/* 800A8C14 000A5B54  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 800A8C18 000A5B58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A8C1C 000A5B5C  7C 08 03 A6 */	mtlr r0
/* 800A8C20 000A5B60  38 21 00 30 */	addi r1, r1, 0x30
/* 800A8C24 000A5B64  4E 80 00 20 */	blr 
.endfn sendCmdMsg__13JASTaskThreadFPFPv_vPCvUl

.fn sendCmdMsg__13JASTaskThreadFPFPv_vPv, global
/* 800A8C28 000A5B68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A8C2C 000A5B6C  7C 08 02 A6 */	mflr r0
/* 800A8C30 000A5B70  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A8C34 000A5B74  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 800A8C38 000A5B78  7C 7D 1B 78 */	mr r29, r3
/* 800A8C3C 000A5B7C  7C 9E 23 78 */	mr r30, r4
/* 800A8C40 000A5B80  7C BF 2B 78 */	mr r31, r5
/* 800A8C44 000A5B84  4B FF E7 81 */	bl getCommandHeap__9JASKernelFv
/* 800A8C48 000A5B88  7C 7C 1B 78 */	mr r28, r3
/* 800A8C4C 000A5B8C  38 7C 00 04 */	addi r3, r28, 4
/* 800A8C50 000A5B90  90 61 00 08 */	stw r3, 8(r1)
/* 800A8C54 000A5B94  48 04 6F 15 */	bl OSLockMutex
/* 800A8C58 000A5B98  83 7C 00 00 */	lwz r27, 0(r28)
/* 800A8C5C 000A5B9C  80 1B 00 04 */	lwz r0, 4(r27)
/* 800A8C60 000A5BA0  20 00 04 00 */	subfic r0, r0, 0x400
/* 800A8C64 000A5BA4  28 00 00 0C */	cmplwi r0, 0xc
/* 800A8C68 000A5BA8  40 80 00 CC */	bge .L_800A8D34
/* 800A8C6C 000A5BAC  28 1B 00 00 */	cmplwi r27, 0
/* 800A8C70 000A5BB0  41 82 00 20 */	beq .L_800A8C90
/* 800A8C74 000A5BB4  80 1B 00 08 */	lwz r0, 8(r27)
/* 800A8C78 000A5BB8  28 00 00 00 */	cmplwi r0, 0
/* 800A8C7C 000A5BBC  40 82 00 14 */	bne .L_800A8C90
/* 800A8C80 000A5BC0  38 00 00 00 */	li r0, 0
/* 800A8C84 000A5BC4  38 60 00 01 */	li r3, 1
/* 800A8C88 000A5BC8  90 1B 00 04 */	stw r0, 4(r27)
/* 800A8C8C 000A5BCC  48 00 00 90 */	b .L_800A8D1C
.L_800A8C90:
/* 800A8C90 000A5BD0  4B FF E7 2D */	bl getSystemHeap__9JASKernelFv
/* 800A8C94 000A5BD4  7C 64 1B 78 */	mr r4, r3
/* 800A8C98 000A5BD8  38 60 04 0C */	li r3, 0x40c
/* 800A8C9C 000A5BDC  38 A0 00 00 */	li r5, 0
/* 800A8CA0 000A5BE0  4B F7 B2 A1 */	bl __nw__FUlP7JKRHeapi
/* 800A8CA4 000A5BE4  28 03 00 00 */	cmplwi r3, 0
/* 800A8CA8 000A5BE8  41 82 00 14 */	beq .L_800A8CBC
/* 800A8CAC 000A5BEC  93 63 00 00 */	stw r27, 0(r3)
/* 800A8CB0 000A5BF0  38 00 00 00 */	li r0, 0
/* 800A8CB4 000A5BF4  90 03 00 04 */	stw r0, 4(r3)
/* 800A8CB8 000A5BF8  90 03 00 08 */	stw r0, 8(r3)
.L_800A8CBC:
/* 800A8CBC 000A5BFC  90 7C 00 00 */	stw r3, 0(r28)
/* 800A8CC0 000A5C00  80 1C 00 00 */	lwz r0, 0(r28)
/* 800A8CC4 000A5C04  28 00 00 00 */	cmplwi r0, 0
/* 800A8CC8 000A5C08  41 82 00 0C */	beq .L_800A8CD4
/* 800A8CCC 000A5C0C  38 60 00 01 */	li r3, 1
/* 800A8CD0 000A5C10  48 00 00 4C */	b .L_800A8D1C
.L_800A8CD4:
/* 800A8CD4 000A5C14  80 8D 88 28 */	lwz r4, sSystemHeap__7JKRHeap@sda21(r13)
/* 800A8CD8 000A5C18  38 60 04 0C */	li r3, 0x40c
/* 800A8CDC 000A5C1C  38 A0 00 00 */	li r5, 0
/* 800A8CE0 000A5C20  4B F7 B2 61 */	bl __nw__FUlP7JKRHeapi
/* 800A8CE4 000A5C24  28 03 00 00 */	cmplwi r3, 0
/* 800A8CE8 000A5C28  41 82 00 14 */	beq .L_800A8CFC
/* 800A8CEC 000A5C2C  93 63 00 00 */	stw r27, 0(r3)
/* 800A8CF0 000A5C30  38 00 00 00 */	li r0, 0
/* 800A8CF4 000A5C34  90 03 00 04 */	stw r0, 4(r3)
/* 800A8CF8 000A5C38  90 03 00 08 */	stw r0, 8(r3)
.L_800A8CFC:
/* 800A8CFC 000A5C3C  90 7C 00 00 */	stw r3, 0(r28)
/* 800A8D00 000A5C40  80 1C 00 00 */	lwz r0, 0(r28)
/* 800A8D04 000A5C44  28 00 00 00 */	cmplwi r0, 0
/* 800A8D08 000A5C48  41 82 00 0C */	beq .L_800A8D14
/* 800A8D0C 000A5C4C  38 60 00 01 */	li r3, 1
/* 800A8D10 000A5C50  48 00 00 0C */	b .L_800A8D1C
.L_800A8D14:
/* 800A8D14 000A5C54  93 7C 00 00 */	stw r27, 0(r28)
/* 800A8D18 000A5C58  38 60 00 00 */	li r3, 0
.L_800A8D1C:
/* 800A8D1C 000A5C5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A8D20 000A5C60  40 82 00 14 */	bne .L_800A8D34
/* 800A8D24 000A5C64  80 61 00 08 */	lwz r3, 8(r1)
/* 800A8D28 000A5C68  48 04 6F 1D */	bl OSUnlockMutex
/* 800A8D2C 000A5C6C  3B 60 00 00 */	li r27, 0
/* 800A8D30 000A5C70  48 00 00 30 */	b .L_800A8D60
.L_800A8D34:
/* 800A8D34 000A5C74  80 BC 00 00 */	lwz r5, 0(r28)
/* 800A8D38 000A5C78  80 61 00 08 */	lwz r3, 8(r1)
/* 800A8D3C 000A5C7C  80 85 00 04 */	lwz r4, 4(r5)
/* 800A8D40 000A5C80  38 04 00 0C */	addi r0, r4, 0xc
/* 800A8D44 000A5C84  90 05 00 04 */	stw r0, 4(r5)
/* 800A8D48 000A5C88  7C 1B 03 78 */	mr r27, r0
/* 800A8D4C 000A5C8C  7F 65 DA 14 */	add r27, r5, r27
/* 800A8D50 000A5C90  80 85 00 08 */	lwz r4, 8(r5)
/* 800A8D54 000A5C94  38 04 00 01 */	addi r0, r4, 1
/* 800A8D58 000A5C98  90 05 00 08 */	stw r0, 8(r5)
/* 800A8D5C 000A5C9C  48 04 6E E9 */	bl OSUnlockMutex
.L_800A8D60:
/* 800A8D60 000A5CA0  28 1B 00 00 */	cmplwi r27, 0
/* 800A8D64 000A5CA4  40 82 00 0C */	bne .L_800A8D70
/* 800A8D68 000A5CA8  3B 60 00 00 */	li r27, 0
/* 800A8D6C 000A5CAC  48 00 00 14 */	b .L_800A8D80
.L_800A8D70:
/* 800A8D70 000A5CB0  38 00 00 00 */	li r0, 0
/* 800A8D74 000A5CB4  90 1B 00 04 */	stw r0, 4(r27)
/* 800A8D78 000A5CB8  93 FB 00 08 */	stw r31, 8(r27)
/* 800A8D7C 000A5CBC  93 DB 00 00 */	stw r30, 0(r27)
.L_800A8D80:
/* 800A8D80 000A5CC0  28 1B 00 00 */	cmplwi r27, 0
/* 800A8D84 000A5CC4  40 82 00 0C */	bne .L_800A8D90
/* 800A8D88 000A5CC8  38 60 00 00 */	li r3, 0
/* 800A8D8C 000A5CCC  48 00 00 BC */	b .L_800A8E48
.L_800A8D90:
/* 800A8D90 000A5CD0  7F 64 DB 78 */	mr r4, r27
/* 800A8D94 000A5CD4  38 7D 00 30 */	addi r3, r29, 0x30
/* 800A8D98 000A5CD8  38 A0 00 00 */	li r5, 0
/* 800A8D9C 000A5CDC  48 04 67 81 */	bl OSSendMessage
/* 800A8DA0 000A5CE0  7C 7E 1B 79 */	or. r30, r3, r3
/* 800A8DA4 000A5CE4  40 82 00 A0 */	bne .L_800A8E44
/* 800A8DA8 000A5CE8  4B FF E6 1D */	bl getCommandHeap__9JASKernelFv
/* 800A8DAC 000A5CEC  7C 7D 1B 78 */	mr r29, r3
/* 800A8DB0 000A5CF0  38 7D 00 04 */	addi r3, r29, 4
/* 800A8DB4 000A5CF4  90 61 00 0C */	stw r3, 0xc(r1)
/* 800A8DB8 000A5CF8  48 04 6D B1 */	bl OSLockMutex
/* 800A8DBC 000A5CFC  80 7D 00 00 */	lwz r3, 0(r29)
/* 800A8DC0 000A5D00  3B 80 00 00 */	li r28, 0
/* 800A8DC4 000A5D04  48 00 00 70 */	b .L_800A8E34
.L_800A8DC8:
/* 800A8DC8 000A5D08  38 03 00 0C */	addi r0, r3, 0xc
/* 800A8DCC 000A5D0C  38 80 00 00 */	li r4, 0
/* 800A8DD0 000A5D10  7C 00 D8 40 */	cmplw r0, r27
/* 800A8DD4 000A5D14  41 81 00 14 */	bgt .L_800A8DE8
/* 800A8DD8 000A5D18  38 03 04 0C */	addi r0, r3, 0x40c
/* 800A8DDC 000A5D1C  7C 1B 00 40 */	cmplw r27, r0
/* 800A8DE0 000A5D20  40 80 00 08 */	bge .L_800A8DE8
/* 800A8DE4 000A5D24  38 80 00 01 */	li r4, 1
.L_800A8DE8:
/* 800A8DE8 000A5D28  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 800A8DEC 000A5D2C  41 82 00 40 */	beq .L_800A8E2C
/* 800A8DF0 000A5D30  80 83 00 08 */	lwz r4, 8(r3)
/* 800A8DF4 000A5D34  38 04 FF FF */	addi r0, r4, -1
/* 800A8DF8 000A5D38  90 03 00 08 */	stw r0, 8(r3)
/* 800A8DFC 000A5D3C  80 1D 00 00 */	lwz r0, 0(r29)
/* 800A8E00 000A5D40  7C 03 00 40 */	cmplw r3, r0
/* 800A8E04 000A5D44  41 82 00 1C */	beq .L_800A8E20
/* 800A8E08 000A5D48  80 03 00 08 */	lwz r0, 8(r3)
/* 800A8E0C 000A5D4C  28 00 00 00 */	cmplwi r0, 0
/* 800A8E10 000A5D50  40 82 00 10 */	bne .L_800A8E20
/* 800A8E14 000A5D54  83 63 00 00 */	lwz r27, 0(r3)
/* 800A8E18 000A5D58  4B F7 B2 9D */	bl __dl__FPv
/* 800A8E1C 000A5D5C  93 7C 00 00 */	stw r27, 0(r28)
.L_800A8E20:
/* 800A8E20 000A5D60  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800A8E24 000A5D64  48 04 6E 21 */	bl OSUnlockMutex
/* 800A8E28 000A5D68  48 00 00 1C */	b .L_800A8E44
.L_800A8E2C:
/* 800A8E2C 000A5D6C  7C 7C 1B 78 */	mr r28, r3
/* 800A8E30 000A5D70  80 63 00 00 */	lwz r3, 0(r3)
.L_800A8E34:
/* 800A8E34 000A5D74  28 03 00 00 */	cmplwi r3, 0
/* 800A8E38 000A5D78  40 82 FF 90 */	bne .L_800A8DC8
/* 800A8E3C 000A5D7C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800A8E40 000A5D80  48 04 6E 05 */	bl OSUnlockMutex
.L_800A8E44:
/* 800A8E44 000A5D84  7F C3 F3 78 */	mr r3, r30
.L_800A8E48:
/* 800A8E48 000A5D88  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 800A8E4C 000A5D8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A8E50 000A5D90  7C 08 03 A6 */	mtlr r0
/* 800A8E54 000A5D94  38 21 00 30 */	addi r1, r1, 0x30
/* 800A8E58 000A5D98  4E 80 00 20 */	blr 
.endfn sendCmdMsg__13JASTaskThreadFPFPv_vPv

.fn run__13JASTaskThreadFv, global
/* 800A8E5C 000A5D9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A8E60 000A5DA0  7C 08 02 A6 */	mflr r0
/* 800A8E64 000A5DA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A8E68 000A5DA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A8E6C 000A5DAC  7C 7F 1B 78 */	mr r31, r3
/* 800A8E70 000A5DB0  38 60 00 04 */	li r3, 4
/* 800A8E74 000A5DB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A8E78 000A5DB8  64 63 00 04 */	oris r3, r3, 4
/* 800A8E7C 000A5DBC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A8E80 000A5DC0  93 81 00 10 */	stw r28, 0x10(r1)
/* 800A8E84 000A5DC4  7C 72 E3 A6 */	mtspr 0x392, r3
/* 800A8E88 000A5DC8  38 60 00 05 */	li r3, 5
/* 800A8E8C 000A5DCC  64 63 00 05 */	oris r3, r3, 5
/* 800A8E90 000A5DD0  7C 73 E3 A6 */	mtspr 0x393, r3
/* 800A8E94 000A5DD4  38 60 00 06 */	li r3, 6
/* 800A8E98 000A5DD8  64 63 00 06 */	oris r3, r3, 6
/* 800A8E9C 000A5DDC  7C 74 E3 A6 */	mtspr 0x394, r3
/* 800A8EA0 000A5DE0  38 60 00 07 */	li r3, 7
/* 800A8EA4 000A5DE4  64 63 00 07 */	oris r3, r3, 7
/* 800A8EA8 000A5DE8  7C 75 E3 A6 */	mtspr 0x395, r3
.L_800A8EAC:
/* 800A8EAC 000A5DEC  38 7F 00 30 */	addi r3, r31, 0x30
/* 800A8EB0 000A5DF0  38 81 00 0C */	addi r4, r1, 0xc
/* 800A8EB4 000A5DF4  38 A0 00 01 */	li r5, 1
/* 800A8EB8 000A5DF8  48 04 67 2D */	bl OSReceiveMessage
/* 800A8EBC 000A5DFC  88 1F 00 84 */	lbz r0, 0x84(r31)
/* 800A8EC0 000A5E00  83 81 00 0C */	lwz r28, 0xc(r1)
/* 800A8EC4 000A5E04  28 00 00 00 */	cmplwi r0, 0
/* 800A8EC8 000A5E08  41 82 00 0C */	beq .L_800A8ED4
/* 800A8ECC 000A5E0C  38 7F 00 7C */	addi r3, r31, 0x7c
/* 800A8ED0 000A5E10  48 04 9A 1D */	bl OSSleepThread
.L_800A8ED4:
/* 800A8ED4 000A5E14  80 1C 00 04 */	lwz r0, 4(r28)
/* 800A8ED8 000A5E18  28 00 00 00 */	cmplwi r0, 0
/* 800A8EDC 000A5E1C  41 82 00 18 */	beq .L_800A8EF4
/* 800A8EE0 000A5E20  81 9C 00 00 */	lwz r12, 0(r28)
/* 800A8EE4 000A5E24  38 7C 00 08 */	addi r3, r28, 8
/* 800A8EE8 000A5E28  7D 89 03 A6 */	mtctr r12
/* 800A8EEC 000A5E2C  4E 80 04 21 */	bctrl 
/* 800A8EF0 000A5E30  48 00 00 14 */	b .L_800A8F04
.L_800A8EF4:
/* 800A8EF4 000A5E34  81 9C 00 00 */	lwz r12, 0(r28)
/* 800A8EF8 000A5E38  80 7C 00 08 */	lwz r3, 8(r28)
/* 800A8EFC 000A5E3C  7D 89 03 A6 */	mtctr r12
/* 800A8F00 000A5E40  4E 80 04 21 */	bctrl 
.L_800A8F04:
/* 800A8F04 000A5E44  4B FF E4 C1 */	bl getCommandHeap__9JASKernelFv
/* 800A8F08 000A5E48  7C 7E 1B 78 */	mr r30, r3
/* 800A8F0C 000A5E4C  38 7E 00 04 */	addi r3, r30, 4
/* 800A8F10 000A5E50  90 61 00 08 */	stw r3, 8(r1)
/* 800A8F14 000A5E54  48 04 6C 55 */	bl OSLockMutex
/* 800A8F18 000A5E58  80 7E 00 00 */	lwz r3, 0(r30)
/* 800A8F1C 000A5E5C  3B A0 00 00 */	li r29, 0
/* 800A8F20 000A5E60  48 00 00 70 */	b .L_800A8F90
.L_800A8F24:
/* 800A8F24 000A5E64  38 03 00 0C */	addi r0, r3, 0xc
/* 800A8F28 000A5E68  38 80 00 00 */	li r4, 0
/* 800A8F2C 000A5E6C  7C 00 E0 40 */	cmplw r0, r28
/* 800A8F30 000A5E70  41 81 00 14 */	bgt .L_800A8F44
/* 800A8F34 000A5E74  38 03 04 0C */	addi r0, r3, 0x40c
/* 800A8F38 000A5E78  7C 1C 00 40 */	cmplw r28, r0
/* 800A8F3C 000A5E7C  40 80 00 08 */	bge .L_800A8F44
/* 800A8F40 000A5E80  38 80 00 01 */	li r4, 1
.L_800A8F44:
/* 800A8F44 000A5E84  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 800A8F48 000A5E88  41 82 00 40 */	beq .L_800A8F88
/* 800A8F4C 000A5E8C  80 83 00 08 */	lwz r4, 8(r3)
/* 800A8F50 000A5E90  38 04 FF FF */	addi r0, r4, -1
/* 800A8F54 000A5E94  90 03 00 08 */	stw r0, 8(r3)
/* 800A8F58 000A5E98  80 1E 00 00 */	lwz r0, 0(r30)
/* 800A8F5C 000A5E9C  7C 03 00 40 */	cmplw r3, r0
/* 800A8F60 000A5EA0  41 82 00 1C */	beq .L_800A8F7C
/* 800A8F64 000A5EA4  80 03 00 08 */	lwz r0, 8(r3)
/* 800A8F68 000A5EA8  28 00 00 00 */	cmplwi r0, 0
/* 800A8F6C 000A5EAC  40 82 00 10 */	bne .L_800A8F7C
/* 800A8F70 000A5EB0  83 83 00 00 */	lwz r28, 0(r3)
/* 800A8F74 000A5EB4  4B F7 B1 41 */	bl __dl__FPv
/* 800A8F78 000A5EB8  93 9D 00 00 */	stw r28, 0(r29)
.L_800A8F7C:
/* 800A8F7C 000A5EBC  80 61 00 08 */	lwz r3, 8(r1)
/* 800A8F80 000A5EC0  48 04 6C C5 */	bl OSUnlockMutex
/* 800A8F84 000A5EC4  4B FF FF 28 */	b .L_800A8EAC
.L_800A8F88:
/* 800A8F88 000A5EC8  7C 7D 1B 78 */	mr r29, r3
/* 800A8F8C 000A5ECC  80 63 00 00 */	lwz r3, 0(r3)
.L_800A8F90:
/* 800A8F90 000A5ED0  28 03 00 00 */	cmplwi r3, 0
/* 800A8F94 000A5ED4  40 82 FF 90 */	bne .L_800A8F24
/* 800A8F98 000A5ED8  80 61 00 08 */	lwz r3, 8(r1)
/* 800A8F9C 000A5EDC  48 04 6C A9 */	bl OSUnlockMutex
/* 800A8FA0 000A5EE0  4B FF FF 0C */	b .L_800A8EAC
.endfn run__13JASTaskThreadFv
