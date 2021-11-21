	.public _input_L_with_stage_two_gain
	.public _input_R_with_stage_two_gain
	.public _p_C_channel_out
	.public _p_LFE_channel_out
	.public _p_LS_channel_out
	.public _p_L_channel_in
	.public _p_L_channel_out
	.public _p_RS_channel_out
	.public _p_R_channel_in
	.public _p_R_channel_out
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
_input_L_with_stage_two_gain
	.dw  (0x0)
	.xdata_ovly
_input_R_with_stage_two_gain
	.dw  (0x0)
	.xdata_ovly
_mode
	.bss (0x1)
	.xdata_ovly
_p_C_channel_out
	.bss (0x1)
	.xdata_ovly
_p_LFE_channel_out
	.bss (0x1)
	.xdata_ovly
_p_LS_channel_out
	.bss (0x1)
	.xdata_ovly
_p_L_channel_in
	.bss (0x1)
	.xdata_ovly
_p_L_channel_out
	.bss (0x1)
	.xdata_ovly
_p_RS_channel_out
	.bss (0x1)
	.xdata_ovly
_p_R_channel_in
	.bss (0x1)
	.xdata_ovly
_p_R_channel_out
	.bss (0x1)
	.code_ovly



_initialize_processing:			/* LN: 20 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 20 | 
	i7 += 1			# LN: 20 | 
	i7 = i7 + (0x2)			# LN: 20 | 
	i0 = i7 - (0x1)			# LN: 20 | 
	xmem[i0] = a0h			# LN: 20 | 
	i0 = i7 - (0x2)			# LN: 20 | 
	xmem[i0] = a1h			# LN: 20 | 
cline_20_0:			/* LN: 21 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 21 | 
	a0 = xmem[i0]			# LN: 21 | 
	xmem[_gain + 0] = a0h			# LN: 21 | 
cline_21_0:			/* LN: 22 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 22 | 
	a0 = xmem[i0]			# LN: 22 | 
	xmem[_mode + 0] = a0h			# LN: 22 | 
cline_22_0:			/* LN: 23 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_236)			# LN: 23 | 
__epilogue_236:			/* LN: 23 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 23 | 
	i7 -= 1			# LN: 23 | 
	ret			# LN: 23 | 



_processing:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 26 | 
	i7 += 1			# LN: 26 | 
	i7 = i7 + (0x3)			# LN: 26 | 
	i4 = i7 - (0x1)			# LN: 26 | 
	xmem[i4] = i0			# LN: 26 | 
	i0 = i7 - (0x2)			# LN: 26 | 
	xmem[i0] = i1			# LN: 26 | 
cline_26_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 29 | 
	i0 = xmem[i0]			# LN: 29 | 
	xmem[_p_L_channel_in + 0] = i0			# LN: 29 | 
cline_29_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 30 | 
	i0 = xmem[i0]			# LN: 30 | 
	nop #empty cycle
	i0 = i0 + (0x10)			# LN: 30 | 
	xmem[_p_R_channel_in + 0] = i0			# LN: 30 | 
cline_30_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 32 | 
	i0 = xmem[i0]			# LN: 32 | 
	xmem[_p_L_channel_out + 0] = i0			# LN: 32 | 
cline_32_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 33 | 
	i0 = xmem[i0]			# LN: 33 | 
	nop #empty cycle
	i0 = i0 + (0x10)			# LN: 33 | 
	xmem[_p_R_channel_out + 0] = i0			# LN: 33 | 
cline_33_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 34 | 
	i0 = xmem[i0]			# LN: 34 | 
	nop #empty cycle
	i0 = i0 + (0x40)			# LN: 34 | 
	xmem[_p_LS_channel_out + 0] = i0			# LN: 34 | 
cline_34_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 35 | 
	i0 = xmem[i0]			# LN: 35 | 
	nop #empty cycle
	i0 = i0 + (0x50)			# LN: 35 | 
	xmem[_p_RS_channel_out + 0] = i0			# LN: 35 | 
cline_35_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 36 | 
	i0 = xmem[i0]			# LN: 36 | 
	nop #empty cycle
	i0 = i0 + (0x20)			# LN: 36 | 
	xmem[_p_C_channel_out + 0] = i0			# LN: 36 | 
cline_36_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 37 | 
	i0 = xmem[i0]			# LN: 37 | 
	nop #empty cycle
	i0 = i0 + (0x30)			# LN: 37 | 
	xmem[_p_LFE_channel_out + 0] = i0			# LN: 37 | 
cline_37_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 39 | 
	a0 = 0			# LN: 39 | 
	xmem[i0] = a0h			# LN: 39 | 
	do (0x10), label_end_92			# LN: 39 | 
cline_39_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_L_channel_in + 0]			# LN: 42 | 
	x0 = xmem[_gain + 0]			# LN: 42 | 
	x1 = xmem[i0]			# LN: 42 | 
	i0 = (0) + (_p_L_channel_out)			# LN: 42 | 
	i0 = xmem[i0]			# LN: 42 | 
	a0 = x1 * x0			# LN: 42 | 
	xmem[i0] = a0			# LN: 42 | 
	i0 = xmem[_p_L_channel_in + 0]			# LN: 42 | 
	nop #empty cycle
	i0 += 1			# LN: 42 | 
	xmem[_p_L_channel_in + 0] = i0			# LN: 42 | 
cline_42_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_L_channel_out + 0]			# LN: 43 | 
	i1 = xmem[_p_LS_channel_out + 0]			# LN: 43 | 
	a0 = xmem[i0]			# LN: 43 | 
	a0 =- a0			# LN: 43 | 
	xmem[i1] = a0h			# LN: 43 | 
	i0 = xmem[_p_LS_channel_out + 0]			# LN: 43 | 
	nop #empty cycle
	i0 += 1			# LN: 43 | 
	xmem[_p_LS_channel_out + 0] = i0			# LN: 43 | 
cline_43_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_R_channel_in + 0]			# LN: 44 | 
	x0 = xmem[_gain + 0]			# LN: 44 | 
	x1 = xmem[i0]			# LN: 44 | 
	i0 = (0) + (_p_R_channel_out)			# LN: 44 | 
	i0 = xmem[i0]			# LN: 44 | 
	a0 = x1 * x0			# LN: 44 | 
	xmem[i0] = a0			# LN: 44 | 
	i0 = xmem[_p_R_channel_in + 0]			# LN: 44 | 
	nop #empty cycle
	i0 += 1			# LN: 44 | 
	xmem[_p_R_channel_in + 0] = i0			# LN: 44 | 
cline_44_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_R_channel_out + 0]			# LN: 45 | 
	i1 = xmem[_p_RS_channel_out + 0]			# LN: 45 | 
	a0 = xmem[i0]			# LN: 45 | 
	a0 =- a0			# LN: 45 | 
	xmem[i1] = a0h			# LN: 45 | 
	i0 = xmem[_p_RS_channel_out + 0]			# LN: 45 | 
	nop #empty cycle
	i0 += 1			# LN: 45 | 
	xmem[_p_RS_channel_out + 0] = i0			# LN: 45 | 
cline_45_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_L_channel_out + 0]			# LN: 48 | 
	x0 = xmem[__extractedConst_0_2 + 0]			# LN: 48 | 
	x1 = xmem[i0]			# LN: 48 | 
	a0 = x1 * x0			# LN: 48 | 
	xmem[_input_L_with_stage_two_gain + 0] = a0			# LN: 48 | 
	i0 = xmem[_p_L_channel_out + 0]			# LN: 48 | 
	nop #empty cycle
	i0 += 1			# LN: 48 | 
	xmem[_p_L_channel_out + 0] = i0			# LN: 48 | 
cline_48_0:			/* LN: 49 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_R_channel_out + 0]			# LN: 49 | 
	x0 = xmem[__extractedConst_0_2 + 0]			# LN: 49 | 
	x1 = xmem[i0]			# LN: 49 | 
	a0 = x1 * x0			# LN: 49 | 
	xmem[_input_R_with_stage_two_gain + 0] = a0			# LN: 49 | 
	i0 = xmem[_p_R_channel_out + 0]			# LN: 49 | 
	nop #empty cycle
	i0 += 1			# LN: 49 | 
	xmem[_p_R_channel_out + 0] = i0			# LN: 49 | 
cline_49_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 52 | 
	uhalfword(a1) = (0x2)			# LN: 52 | 
	a0 - a1			# LN: 52 | 
	if (a == 0) jmp (cline_52_0)			# LN: 52 | 
	a0 = xmem[_mode + 0]			# LN: 52 | 
	uhalfword(a1) = (0x3)			# LN: 52 | 
	a0 - a1			# LN: 52 | 
	if (a != 0) jmp (else_0)			# LN: 52 | 
cline_52_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_C_channel_out + 0]			# LN: 55 | 
	a0 = xmem[_input_L_with_stage_two_gain + 0]			# LN: 55 | 
	a1 = xmem[_input_R_with_stage_two_gain + 0]			# LN: 55 | 
	a0 = a0 + a1			# LN: 55 | 
	xmem[i0] = a0h			# LN: 55 | 
	i0 = xmem[_p_C_channel_out + 0]			# LN: 55 | 
	nop #empty cycle
	i0 += 1			# LN: 55 | 
	xmem[_p_C_channel_out + 0] = i0			# LN: 55 | 
	jmp (endif_0)			# LN: 55 | 
cline_55_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 59 | 
	uhalfword(a1) = (0x1)			# LN: 59 | 
	a0 - a1			# LN: 59 | 
	if (a == 0) jmp (cline_59_0)			# LN: 59 | 
	a0 = xmem[_mode + 0]			# LN: 59 | 
	uhalfword(a1) = (0x3)			# LN: 59 | 
	a0 - a1			# LN: 59 | 
	if (a != 0) jmp (else_1)			# LN: 59 | 
cline_59_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_p_LFE_channel_out)			# LN: 61 | 
	i0 = xmem[i0]			# LN: 61 | 
	a0 = xmem[_input_R_with_stage_two_gain + 0]			# LN: 61 | 
	xmem[i0] = a0h			# LN: 61 | 
cline_61_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 64 | 
	a0 = xmem[_distorsion_threshold_1 + 0]			# LN: 64 | 
	a1 = xmem[i0]			# LN: 64 | 
	a1 - a0			# LN: 64 | 
	if (a <= 0) jmp (else_2)			# LN: 64 | 
cline_64_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 66 | 
	a0 = xmem[_distorsion_threshold_2 + 0]			# LN: 66 | 
	a1 = xmem[i0]			# LN: 66 | 
	a1 - a0			# LN: 66 | 
	if (a <= 0) jmp (else_3)			# LN: 66 | 
cline_66_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_p_LFE_channel_out)			# LN: 68 | 
	i0 = xmem[i0]			# LN: 68 | 
	a0 = xmem[__extractedConst_1_1 + 0]			# LN: 68 | 
	xmem[i0] = a0h			# LN: 68 | 
	jmp (endif_3)			# LN: 68 | 
cline_68_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 73 | 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 73 | 
	a1 = xmem[i0]; b0 =+ a0			# LN: 73, 73 | 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 73 | 
	i1 = xmem[_p_LFE_channel_out + 0]			# LN: 73 | 
	x0 = xmem[i0]; b0 = b0 + a1			# LN: 73, 73 | 
	x1 = xmem[i1]			# LN: 73 | 
	a0 = (0x6000)			# LN: 73 | 
	a1 = x0 * x1			# LN: 73 | 
	call (__mul_sat_laccum)			# LN: 73 | 
	i0 = (0) + (_p_LFE_channel_out)			# LN: 73 | 
	i0 = xmem[i0]			# LN: 73 | 
	a0 = a0 - b0			# LN: 73 | 
	a0 =- a0			# LN: 73 | 
	xmem[i0] = a0			# LN: 73 | 
cline_73_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 74 | 
	i1 = (0) + (_p_LFE_channel_out)			# LN: 74 | 
	a0 = xmem[i0]			# LN: 74 | 
	a0 = a0 << 1			# LN: 74 | 
	i0 = xmem[i1]			# LN: 74 | 
	a0 = a0 << 1			# LN: 74 | 
	xmem[i0] = a0h			# LN: 74 | 
cline_74_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	jmp (endif_2)			# LN: 66 | 
cline_66_1:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_distorsion_threshold_1 + 0]			# LN: 79 | 
	a0 =- a0			# LN: 79 | 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 79 | 
	nop #empty cycle
	a1 = xmem[i0]			# LN: 79 | 
	a1 - a0			# LN: 79 | 
	if (a >= 0) jmp (else_4)			# LN: 79 | 
cline_79_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_distorsion_threshold_2 + 0]			# LN: 81 | 
	a0 =- a0			# LN: 81 | 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 81 | 
	nop #empty cycle
	a1 = xmem[i0]			# LN: 81 | 
	a1 - a0			# LN: 81 | 
	if (a >= 0) jmp (else_5)			# LN: 81 | 
cline_81_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_p_LFE_channel_out)			# LN: 83 | 
	i0 = xmem[i0]			# LN: 83 | 
	a0 = (0x8000)			# LN: 83 | 
	xmem[i0] = a0h			# LN: 83 | 
	jmp (endif_5)			# LN: 83 | 
cline_83_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 88 | 
	a0 = xmem[__extractedConst_3_1 + 0]			# LN: 88 | 
	a1 = xmem[i0]; b0 =+ a0			# LN: 88, 88 | 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 88 | 
	i1 = xmem[_p_LFE_channel_out + 0]			# LN: 88 | 
	x0 = xmem[i0]; b0 = b0 + a1			# LN: 88, 88 | 
	x1 = xmem[i1]			# LN: 88 | 
	a0 = (0x6000)			# LN: 88 | 
	a1 = x0 * x1			# LN: 88 | 
	call (__mul_sat_laccum)			# LN: 88 | 
	i0 = (0) + (_p_LFE_channel_out)			# LN: 88 | 
	i0 = xmem[i0]			# LN: 88 | 
	a0 = a0 + b0			# LN: 88 | 
	xmem[i0] = a0			# LN: 88 | 
cline_88_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 89 | 
	i1 = (0) + (_p_LFE_channel_out)			# LN: 89 | 
	a0 = xmem[i0]			# LN: 89 | 
	a0 = a0 << 1			# LN: 89 | 
	i0 = xmem[i1]			# LN: 89 | 
	a0 = a0 << 1			# LN: 89 | 
	xmem[i0] = a0h			# LN: 89 | 
cline_89_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	jmp (endif_4)			# LN: 81 | 
cline_81_1:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 95 | 
	i1 = (0) + (_p_LFE_channel_out)			# LN: 95 | 
	a0 = xmem[i0]			# LN: 95 | 
	i0 = xmem[i1]			# LN: 95 | 
	a0 = a0 << 1			# LN: 95 | 
	xmem[i0] = a0h			# LN: 95 | 
cline_95_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 99 | 
	i1 = xmem[_p_LFE_channel_out + 0]			# LN: 99 | 
	a0 = xmem[i0]			# LN: 99 | 
	a0 = a0 >> 1			# LN: 99 | 
	xmem[i1] = a0h			# LN: 99 | 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 99 | 
	nop #empty cycle
	i0 += 1			# LN: 99 | 
	xmem[_p_LFE_channel_out + 0] = i0			# LN: 99 | 
	jmp (endif_1)			# LN: 99 | 
cline_99_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 39 | 
	a0 = xmem[i0]			# LN: 39 | 
	uhalfword(a1) = (0x1)			# LN: 39 | 
	a0 = a0 + a1			# LN: 39 | 
	i0 = i7 - (0x3)			# LN: 39 | 
label_end_92:			# LN: 39 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 39 | 
cline_39_1:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_238)			# LN: 102 | 
__epilogue_238:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x3)			# LN: 102 | 
	i7 -= 1			# LN: 102 | 
	ret			# LN: 102 | 
