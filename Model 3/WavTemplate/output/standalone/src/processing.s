	.public _initialize_processing
	.public _processing
	.extern __mul_sat_laccum
	.xdata_ovly
__extractedConst_0_2
	.dw  (0x65ac8c2f)
	.xdata_ovly
__extractedConst_1_1
	.dw  (0x7fffffff)
	.xdata_ovly
__extractedConst_2_1
	.dw  (0xf555555c)
	.xdata_ovly
__extractedConst_3_1
	.dw  (0xaaaaaa4)
	.xdata_ovly
_distorsion_threshold_1
	.dw  (0x6666666)
	.xdata_ovly
_distorsion_threshold_2
	.dw  (0xccccccd)
	.xdata_ovly
_gain
	.bss (0x1)
	.xdata_ovly
_mode
	.bss (0x1)
	.code_ovly



_initialize_processing:			/* LN: 4 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 4 | 
	i7 += 1			# LN: 4 | 
	i7 = i7 + (0x2)			# LN: 4 | 
	i0 = i7 - (0x1)			# LN: 4 | 
	xmem[i0] = a0h			# LN: 4 | 
	i0 = i7 - (0x2)			# LN: 4 | 
	xmem[i0] = a1h			# LN: 4 | 
cline_4_0:			/* LN: 5 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 5 | 
	a0 = xmem[i0]			# LN: 5 | 
	xmem[_gain + 0] = a0h			# LN: 5 | 
cline_5_0:			/* LN: 6 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 6 | 
	a0 = xmem[i0]			# LN: 6 | 
	xmem[_mode + 0] = a0h			# LN: 6 | 
cline_6_0:			/* LN: 7 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_236)			# LN: 7 | 
__epilogue_236:			/* LN: 7 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 7 | 
	i7 -= 1			# LN: 7 | 
	ret			# LN: 7 | 



_processing:			/* LN: 9 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 9 | 
	i7 += 1			# LN: 9 | 
	i7 = i7 + (0xf)			# LN: 9 | 
	i4 = i7 - (0x1)			# LN: 9 | 
	xmem[i4] = i0			# LN: 9 | 
	i0 = i7 - (0x2)			# LN: 9 | 
	xmem[i0] = i1			# LN: 9 | 
cline_9_0:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 12 | 
	i0 = xmem[i0]			# LN: 12 | 
	i1 = i7 - (0x3)			# LN: 12 | 
	xmem[i1] = i0			# LN: 12 | 
cline_12_0:			/* LN: 13 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 13 | 
	i0 = xmem[i0]			# LN: 13 | 
	i1 = i7 - (0x4)			# LN: 13 | 
	i0 = i0 + (0x10)			# LN: 13 | 
	xmem[i1] = i0			# LN: 13 | 
cline_13_0:			/* LN: 15 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 15 | 
	i0 = xmem[i0]			# LN: 15 | 
	i1 = i7 - (0x5)			# LN: 15 | 
	xmem[i1] = i0			# LN: 15 | 
cline_15_0:			/* LN: 16 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 16 | 
	i0 = xmem[i0]			# LN: 16 | 
	i1 = i7 - (0x6)			# LN: 16 | 
	i0 = i0 + (0x10)			# LN: 16 | 
	xmem[i1] = i0			# LN: 16 | 
cline_16_0:			/* LN: 17 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 17 | 
	i0 = xmem[i0]			# LN: 17 | 
	i1 = i7 - (0x7)			# LN: 17 | 
	i0 = i0 + (0x40)			# LN: 17 | 
	xmem[i1] = i0			# LN: 17 | 
cline_17_0:			/* LN: 18 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 18 | 
	i0 = xmem[i0]			# LN: 18 | 
	i1 = i7 - (0x8)			# LN: 18 | 
	i0 = i0 + (0x50)			# LN: 18 | 
	xmem[i1] = i0			# LN: 18 | 
cline_18_0:			/* LN: 19 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 19 | 
	i0 = xmem[i0]			# LN: 19 | 
	i1 = i7 - (0x9)			# LN: 19 | 
	i0 = i0 + (0x20)			# LN: 19 | 
	xmem[i1] = i0			# LN: 19 | 
cline_19_0:			/* LN: 20 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 20 | 
	i0 = xmem[i0]			# LN: 20 | 
	i1 = i7 - (0xa)			# LN: 20 | 
	i0 = i0 + (0x30)			# LN: 20 | 
	xmem[i1] = i0			# LN: 20 | 
cline_20_0:			/* LN: 24 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 24 | 
	a0 = 0			# LN: 24 | 
	xmem[i0] = a0h			# LN: 24 | 
cline_24_0:			/* LN: 25 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 25 | 
	a0 = 0			# LN: 25 | 
	xmem[i0] = a0h			# LN: 25 | 
cline_25_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 27 | 
	a0 = 0			# LN: 27 | 
	xmem[i0] = a0h			# LN: 27 | 
	do (0x10), label_end_92			# LN: 27 | 
cline_27_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 30 | 
	i0 = xmem[i0]			# LN: 30 | 
	i1 = i7 - (0xe)			# LN: 30 | 
	a0 = xmem[i0]			# LN: 30 | 
	xmem[i1] = a0h			# LN: 30 | 
cline_30_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 31 | 
	i0 = xmem[i0]			# LN: 31 | 
	i1 = i7 - (0xf)			# LN: 31 | 
	a0 = xmem[i0]			# LN: 31 | 
	xmem[i1] = a0h			# LN: 31 | 
cline_31_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 34 | 
	x0 = xmem[i0]			# LN: 34 | 
	x1 = xmem[_gain + 0]			# LN: 34 | 
	i0 = i7 - (0x5)			# LN: 34 | 
	i0 = xmem[i0]			# LN: 34 | 
	a0 = x0 * x1			# LN: 34 | 
	xmem[i0] = a0			# LN: 34 | 
cline_34_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 35 | 
	i0 = xmem[i0]			# LN: 35 | 
	i1 = i7 - (0x7)			# LN: 35 | 
	a0 = xmem[i0]			# LN: 35 | 
	i0 = xmem[i1]			# LN: 35 | 
	a0 =- a0			# LN: 35 | 
	xmem[i0] = a0h			# LN: 35 | 
cline_35_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xf)			# LN: 36 | 
	x0 = xmem[i0]			# LN: 36 | 
	x1 = xmem[_gain + 0]			# LN: 36 | 
	i0 = i7 - (0x6)			# LN: 36 | 
	i0 = xmem[i0]			# LN: 36 | 
	a0 = x0 * x1			# LN: 36 | 
	xmem[i0] = a0			# LN: 36 | 
cline_36_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 37 | 
	i0 = xmem[i0]			# LN: 37 | 
	i1 = i7 - (0x8)			# LN: 37 | 
	a0 = xmem[i0]			# LN: 37 | 
	i0 = xmem[i1]			# LN: 37 | 
	a0 =- a0			# LN: 37 | 
	xmem[i0] = a0h			# LN: 37 | 
cline_37_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 40 | 
	i0 = xmem[i0]			# LN: 40 | 
	x0 = xmem[__extractedConst_0_2 + 0]			# LN: 40 | 
	x1 = xmem[i0]			# LN: 40 | 
	a0 = x1 * x0			# LN: 40 | 
	i0 = i7 - (0xb)			# LN: 40 | 
	xmem[i0] = a0			# LN: 40 | 
cline_40_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 41 | 
	i0 = xmem[i0]			# LN: 41 | 
	x0 = xmem[__extractedConst_0_2 + 0]			# LN: 41 | 
	x1 = xmem[i0]			# LN: 41 | 
	a0 = x1 * x0			# LN: 41 | 
	i0 = i7 - (0xc)			# LN: 41 | 
	xmem[i0] = a0			# LN: 41 | 
cline_41_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 44 | 
	uhalfword(a1) = (0x2)			# LN: 44 | 
	a0 - a1			# LN: 44 | 
	if (a == 0) jmp (cline_44_0)			# LN: 44 | 
	a0 = xmem[_mode + 0]			# LN: 44 | 
	uhalfword(a1) = (0x3)			# LN: 44 | 
	a0 - a1			# LN: 44 | 
	if (a != 0) jmp (else_0)			# LN: 44 | 
cline_44_0:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 47 | 
	a0 = xmem[i0]			# LN: 47 | 
	i0 = i7 - (0xc)			# LN: 47 | 
	a1 = xmem[i0]			# LN: 47 | 
	i0 = i7 - (0x9)			# LN: 47 | 
	i0 = xmem[i0]			# LN: 47 | 
	a0 = a0 + a1			# LN: 47 | 
	xmem[i0] = a0h			# LN: 47 | 
	jmp (endif_0)			# LN: 47 | 
cline_47_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 51 | 
	uhalfword(a1) = (0x1)			# LN: 51 | 
	a0 - a1			# LN: 51 | 
	if (a == 0) jmp (cline_51_0)			# LN: 51 | 
	a0 = xmem[_mode + 0]			# LN: 51 | 
	uhalfword(a1) = (0x3)			# LN: 51 | 
	a0 - a1			# LN: 51 | 
	if (a != 0) jmp (else_1)			# LN: 51 | 
cline_51_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 53 | 
	i1 = i7 - (0xa)			# LN: 53 | 
	i1 = xmem[i1]			# LN: 53 | 
	a0 = xmem[i0]			# LN: 53 | 
	xmem[i1] = a0h			# LN: 53 | 
cline_53_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 56 | 
	i0 = xmem[i0]			# LN: 56 | 
	a0 = xmem[_distorsion_threshold_1 + 0]			# LN: 56 | 
	a1 = xmem[i0]			# LN: 56 | 
	a1 - a0			# LN: 56 | 
	if (a <= 0) jmp (else_2)			# LN: 56 | 
cline_56_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 58 | 
	i0 = xmem[i0]			# LN: 58 | 
	a0 = xmem[_distorsion_threshold_2 + 0]			# LN: 58 | 
	a1 = xmem[i0]			# LN: 58 | 
	a1 - a0			# LN: 58 | 
	if (a <= 0) jmp (else_3)			# LN: 58 | 
cline_58_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 60 | 
	i0 = xmem[i0]			# LN: 60 | 
	a0 = xmem[__extractedConst_1_1 + 0]			# LN: 60 | 
	xmem[i0] = a0h			# LN: 60 | 
	jmp (endif_3)			# LN: 60 | 
cline_60_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 65 | 
	i0 = xmem[i0]			# LN: 65 | 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 65 | 
	a1 = xmem[i0]; b0 =+ a0			# LN: 65, 65 | 
	i0 = i7 - (0xa)			# LN: 65 | 
	i0 = xmem[i0]			# LN: 65 | 
	i1 = i7 - (0xa)			# LN: 65 | 
	i1 = xmem[i1]			# LN: 65 | 
	x0 = xmem[i0]; b0 = b0 + a1			# LN: 65, 65 | 
	x1 = xmem[i1]			# LN: 65 | 
	a0 = (0x6000)			# LN: 65 | 
	a1 = x0 * x1			# LN: 65 | 
	call (__mul_sat_laccum)			# LN: 65 | 
	i0 = i7 - (0xa)			# LN: 65 | 
	i0 = xmem[i0]			# LN: 65 | 
	a0 = a0 - b0			# LN: 65 | 
	a0 =- a0			# LN: 65 | 
	xmem[i0] = a0			# LN: 65 | 
cline_65_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 66 | 
	i0 = xmem[i0]			# LN: 66 | 
	i1 = i7 - (0xa)			# LN: 66 | 
	a0 = xmem[i0]			# LN: 66 | 
	a0 = a0 << 1			# LN: 66 | 
	i0 = xmem[i1]			# LN: 66 | 
	a0 = a0 << 1			# LN: 66 | 
	xmem[i0] = a0h			# LN: 66 | 
cline_66_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	jmp (endif_2)			# LN: 58 | 
cline_58_1:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_distorsion_threshold_1 + 0]			# LN: 71 | 
	a0 =- a0			# LN: 71 | 
	i0 = i7 - (0xa)			# LN: 71 | 
	i0 = xmem[i0]			# LN: 71 | 
	nop #empty cycle
	a1 = xmem[i0]			# LN: 71 | 
	a1 - a0			# LN: 71 | 
	if (a >= 0) jmp (else_4)			# LN: 71 | 
cline_71_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_distorsion_threshold_2 + 0]			# LN: 73 | 
	a0 =- a0			# LN: 73 | 
	i0 = i7 - (0xa)			# LN: 73 | 
	i0 = xmem[i0]			# LN: 73 | 
	nop #empty cycle
	a1 = xmem[i0]			# LN: 73 | 
	a1 - a0			# LN: 73 | 
	if (a >= 0) jmp (else_5)			# LN: 73 | 
cline_73_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 75 | 
	i0 = xmem[i0]			# LN: 75 | 
	a0 = (0x8000)			# LN: 75 | 
	xmem[i0] = a0h			# LN: 75 | 
	jmp (endif_5)			# LN: 75 | 
cline_75_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 80 | 
	i0 = xmem[i0]			# LN: 80 | 
	a0 = xmem[__extractedConst_3_1 + 0]			# LN: 80 | 
	a1 = xmem[i0]; b0 =+ a0			# LN: 80, 80 | 
	i0 = i7 - (0xa)			# LN: 80 | 
	i0 = xmem[i0]			# LN: 80 | 
	i1 = i7 - (0xa)			# LN: 80 | 
	i1 = xmem[i1]			# LN: 80 | 
	x0 = xmem[i0]; b0 = b0 + a1			# LN: 80, 80 | 
	x1 = xmem[i1]			# LN: 80 | 
	a0 = (0x6000)			# LN: 80 | 
	a1 = x0 * x1			# LN: 80 | 
	call (__mul_sat_laccum)			# LN: 80 | 
	i0 = i7 - (0xa)			# LN: 80 | 
	i0 = xmem[i0]			# LN: 80 | 
	a0 = a0 + b0			# LN: 80 | 
	xmem[i0] = a0			# LN: 80 | 
cline_80_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 81 | 
	i0 = xmem[i0]			# LN: 81 | 
	i1 = i7 - (0xa)			# LN: 81 | 
	a0 = xmem[i0]			# LN: 81 | 
	a0 = a0 << 1			# LN: 81 | 
	i0 = xmem[i1]			# LN: 81 | 
	a0 = a0 << 1			# LN: 81 | 
	xmem[i0] = a0h			# LN: 81 | 
cline_81_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	jmp (endif_4)			# LN: 73 | 
cline_73_1:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 87 | 
	i0 = xmem[i0]			# LN: 87 | 
	i1 = i7 - (0xa)			# LN: 87 | 
	a0 = xmem[i0]			# LN: 87 | 
	i0 = xmem[i1]			# LN: 87 | 
	a0 = a0 << 1			# LN: 87 | 
	xmem[i0] = a0h			# LN: 87 | 
cline_87_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 91 | 
	i0 = xmem[i0]			# LN: 91 | 
	i1 = i7 - (0xa)			# LN: 91 | 
	a0 = xmem[i0]			# LN: 91 | 
	i0 = xmem[i1]			# LN: 91 | 
	a0 = a0 >> 1			# LN: 91 | 
	xmem[i0] = a0h			# LN: 91 | 
	jmp (endif_1)			# LN: 91 | 
cline_91_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 95 | 
	i0 = xmem[i0]			# LN: 95 | 
	i1 = i7 - (0x3)			# LN: 95 | 
	i0 += 1			# LN: 95 | 
	xmem[i1] = i0			# LN: 95 | 
cline_95_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 96 | 
	i0 = xmem[i0]			# LN: 96 | 
	i1 = i7 - (0x4)			# LN: 96 | 
	i0 += 1			# LN: 96 | 
	xmem[i1] = i0			# LN: 96 | 
cline_96_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 97 | 
	i0 = xmem[i0]			# LN: 97 | 
	i1 = i7 - (0x5)			# LN: 97 | 
	i0 += 1			# LN: 97 | 
	xmem[i1] = i0			# LN: 97 | 
cline_97_0:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 98 | 
	i0 = xmem[i0]			# LN: 98 | 
	i1 = i7 - (0x6)			# LN: 98 | 
	i0 += 1			# LN: 98 | 
	xmem[i1] = i0			# LN: 98 | 
cline_98_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 99 | 
	i0 = xmem[i0]			# LN: 99 | 
	i1 = i7 - (0x9)			# LN: 99 | 
	i0 += 1			# LN: 99 | 
	xmem[i1] = i0			# LN: 99 | 
cline_99_0:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 100 | 
	i0 = xmem[i0]			# LN: 100 | 
	i1 = i7 - (0xa)			# LN: 100 | 
	i0 += 1			# LN: 100 | 
	xmem[i1] = i0			# LN: 100 | 
cline_100_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 101 | 
	i0 = xmem[i0]			# LN: 101 | 
	i1 = i7 - (0x7)			# LN: 101 | 
	i0 += 1			# LN: 101 | 
	xmem[i1] = i0			# LN: 101 | 
cline_101_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 102 | 
	i0 = xmem[i0]			# LN: 102 | 
	i1 = i7 - (0x8)			# LN: 102 | 
	i0 += 1			# LN: 102 | 
	xmem[i1] = i0			# LN: 102 | 
cline_102_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 27 | 
	a0 = xmem[i0]			# LN: 27 | 
	uhalfword(a1) = (0x1)			# LN: 27 | 
	a0 = a0 + a1			# LN: 27 | 
	i0 = i7 - (0xd)			# LN: 27 | 
label_end_92:			# LN: 27 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 27 | 
cline_27_1:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_238)			# LN: 104 | 
__epilogue_238:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0xf)			# LN: 104 | 
	i7 -= 1			# LN: 104 | 
	ret			# LN: 104 | 
