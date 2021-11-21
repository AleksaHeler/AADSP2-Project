	.extern ___TIMER0_COUNT
	.extern ___TIMER1_COUNT
	.extern ___TIMER1_ENABLE
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
	.extern _cl_get_cycle_count
	.public _initialize_processing
	.extern _printf
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
	.xdata_ovly
_string_const_0
	.dw  (0x50)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x63)
	.dw  (0x65)
	.dw  (0x73)
	.dw  (0x73)
	.dw  (0x69)
	.dw  (0x6e)
	.dw  (0x67)
	.dw  (0x20)
	.dw  (0x63)
	.dw  (0x79)
	.dw  (0x63)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x73)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x25)
	.dw  (0x6c)
	.dw  (0x6c)
	.dw  (0x75)
	.dw  (0x20)
	.dw  (0xa)
	.dw  (0x0)
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
	jmp (__epilogue_250)			# LN: 23 | 
__epilogue_250:			/* LN: 23 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 23 | 
	i7 -= 1			# LN: 23 | 
	ret			# LN: 23 | 



_processing:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 26 | 
	i7 += 1			# LN: 26 | 
	i7 = i7 + (0x9)			# LN: 26 | 
	i4 = i7 - (0x1)			# LN: 26 | 
	xmem[i4] = i0			# LN: 26 | 
	i0 = i7 - (0x2)			# LN: 26 | 
	xmem[i0] = i1			# LN: 26 | 
cline_26_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	call (_cl_get_cycle_count)			# LN: 30 | 
	i0 = i7 - (0x4)			# LN: 30 | 
	xmem[i0] = a0h; i0 += 1			# LN: 30, 30 | 
	xmem[i0] = a0l			# LN: 30 | 
cline_30_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 32 | 
	i0 = xmem[i0]			# LN: 32 | 
	xmem[_p_L_channel_in + 0] = i0			# LN: 32 | 
cline_32_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 33 | 
	i0 = xmem[i0]			# LN: 33 | 
	nop #empty cycle
	i0 = i0 + (0x10)			# LN: 33 | 
	xmem[_p_R_channel_in + 0] = i0			# LN: 33 | 
cline_33_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 35 | 
	i0 = xmem[i0]			# LN: 35 | 
	xmem[_p_L_channel_out + 0] = i0			# LN: 35 | 
cline_35_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 36 | 
	i0 = xmem[i0]			# LN: 36 | 
	nop #empty cycle
	i0 = i0 + (0x10)			# LN: 36 | 
	xmem[_p_R_channel_out + 0] = i0			# LN: 36 | 
cline_36_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 37 | 
	i0 = xmem[i0]			# LN: 37 | 
	nop #empty cycle
	i0 = i0 + (0x40)			# LN: 37 | 
	xmem[_p_LS_channel_out + 0] = i0			# LN: 37 | 
cline_37_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 38 | 
	i0 = xmem[i0]			# LN: 38 | 
	nop #empty cycle
	i0 = i0 + (0x50)			# LN: 38 | 
	xmem[_p_RS_channel_out + 0] = i0			# LN: 38 | 
cline_38_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 39 | 
	i0 = xmem[i0]			# LN: 39 | 
	nop #empty cycle
	i0 = i0 + (0x20)			# LN: 39 | 
	xmem[_p_C_channel_out + 0] = i0			# LN: 39 | 
cline_39_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 40 | 
	i0 = xmem[i0]			# LN: 40 | 
	nop #empty cycle
	i0 = i0 + (0x30)			# LN: 40 | 
	xmem[_p_LFE_channel_out + 0] = i0			# LN: 40 | 
cline_40_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 42 | 
	a0 = 0			# LN: 42 | 
	xmem[i0] = a0h			# LN: 42 | 
	do (0x10), label_end_92			# LN: 42 | 
cline_42_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_L_channel_in + 0]			# LN: 45 | 
	x0 = xmem[_gain + 0]			# LN: 45 | 
	x1 = xmem[i0]			# LN: 45 | 
	i0 = (0) + (_p_L_channel_out)			# LN: 45 | 
	i0 = xmem[i0]			# LN: 45 | 
	a0 = x1 * x0			# LN: 45 | 
	xmem[i0] = a0			# LN: 45 | 
	i0 = xmem[_p_L_channel_in + 0]			# LN: 45 | 
	nop #empty cycle
	i0 += 1			# LN: 45 | 
	xmem[_p_L_channel_in + 0] = i0			# LN: 45 | 
cline_45_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_L_channel_out + 0]			# LN: 46 | 
	i1 = xmem[_p_LS_channel_out + 0]			# LN: 46 | 
	a0 = xmem[i0]			# LN: 46 | 
	a0 =- a0			# LN: 46 | 
	xmem[i1] = a0h			# LN: 46 | 
	i0 = xmem[_p_LS_channel_out + 0]			# LN: 46 | 
	nop #empty cycle
	i0 += 1			# LN: 46 | 
	xmem[_p_LS_channel_out + 0] = i0			# LN: 46 | 
cline_46_0:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_R_channel_in + 0]			# LN: 47 | 
	x0 = xmem[_gain + 0]			# LN: 47 | 
	x1 = xmem[i0]			# LN: 47 | 
	i0 = (0) + (_p_R_channel_out)			# LN: 47 | 
	i0 = xmem[i0]			# LN: 47 | 
	a0 = x1 * x0			# LN: 47 | 
	xmem[i0] = a0			# LN: 47 | 
	i0 = xmem[_p_R_channel_in + 0]			# LN: 47 | 
	nop #empty cycle
	i0 += 1			# LN: 47 | 
	xmem[_p_R_channel_in + 0] = i0			# LN: 47 | 
cline_47_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_R_channel_out + 0]			# LN: 48 | 
	i1 = xmem[_p_RS_channel_out + 0]			# LN: 48 | 
	a0 = xmem[i0]			# LN: 48 | 
	a0 =- a0			# LN: 48 | 
	xmem[i1] = a0h			# LN: 48 | 
	i0 = xmem[_p_RS_channel_out + 0]			# LN: 48 | 
	nop #empty cycle
	i0 += 1			# LN: 48 | 
	xmem[_p_RS_channel_out + 0] = i0			# LN: 48 | 
cline_48_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_L_channel_out + 0]			# LN: 51 | 
	x0 = xmem[__extractedConst_0_2 + 0]			# LN: 51 | 
	x1 = xmem[i0]			# LN: 51 | 
	a0 = x1 * x0			# LN: 51 | 
	xmem[_input_L_with_stage_two_gain + 0] = a0			# LN: 51 | 
	i0 = xmem[_p_L_channel_out + 0]			# LN: 51 | 
	nop #empty cycle
	i0 += 1			# LN: 51 | 
	xmem[_p_L_channel_out + 0] = i0			# LN: 51 | 
cline_51_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_R_channel_out + 0]			# LN: 52 | 
	x0 = xmem[__extractedConst_0_2 + 0]			# LN: 52 | 
	x1 = xmem[i0]			# LN: 52 | 
	a0 = x1 * x0			# LN: 52 | 
	xmem[_input_R_with_stage_two_gain + 0] = a0			# LN: 52 | 
	i0 = xmem[_p_R_channel_out + 0]			# LN: 52 | 
	nop #empty cycle
	i0 += 1			# LN: 52 | 
	xmem[_p_R_channel_out + 0] = i0			# LN: 52 | 
cline_52_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 55 | 
	uhalfword(a1) = (0x2)			# LN: 55 | 
	a0 - a1			# LN: 55 | 
	if (a == 0) jmp (cline_55_0)			# LN: 55 | 
	a0 = xmem[_mode + 0]			# LN: 55 | 
	uhalfword(a1) = (0x3)			# LN: 55 | 
	a0 - a1			# LN: 55 | 
	if (a != 0) jmp (else_0)			# LN: 55 | 
cline_55_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_C_channel_out + 0]			# LN: 58 | 
	a0 = xmem[_input_L_with_stage_two_gain + 0]			# LN: 58 | 
	a1 = xmem[_input_R_with_stage_two_gain + 0]			# LN: 58 | 
	a0 = a0 + a1			# LN: 58 | 
	xmem[i0] = a0h			# LN: 58 | 
	i0 = xmem[_p_C_channel_out + 0]			# LN: 58 | 
	nop #empty cycle
	i0 += 1			# LN: 58 | 
	xmem[_p_C_channel_out + 0] = i0			# LN: 58 | 
	jmp (endif_0)			# LN: 58 | 
cline_58_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 62 | 
	uhalfword(a1) = (0x1)			# LN: 62 | 
	a0 - a1			# LN: 62 | 
	if (a == 0) jmp (cline_62_0)			# LN: 62 | 
	a0 = xmem[_mode + 0]			# LN: 62 | 
	uhalfword(a1) = (0x3)			# LN: 62 | 
	a0 - a1			# LN: 62 | 
	if (a != 0) jmp (else_1)			# LN: 62 | 
cline_62_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_p_LFE_channel_out)			# LN: 64 | 
	i0 = xmem[i0]			# LN: 64 | 
	a0 = xmem[_input_R_with_stage_two_gain + 0]			# LN: 64 | 
	xmem[i0] = a0h			# LN: 64 | 
cline_64_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 67 | 
	a0 = xmem[_distorsion_threshold_1 + 0]			# LN: 67 | 
	a1 = xmem[i0]			# LN: 67 | 
	a1 - a0			# LN: 67 | 
	if (a <= 0) jmp (else_2)			# LN: 67 | 
cline_67_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 69 | 
	a0 = xmem[_distorsion_threshold_2 + 0]			# LN: 69 | 
	a1 = xmem[i0]			# LN: 69 | 
	a1 - a0			# LN: 69 | 
	if (a <= 0) jmp (else_3)			# LN: 69 | 
cline_69_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_p_LFE_channel_out)			# LN: 71 | 
	i0 = xmem[i0]			# LN: 71 | 
	a0 = xmem[__extractedConst_1_1 + 0]			# LN: 71 | 
	xmem[i0] = a0h			# LN: 71 | 
	jmp (endif_3)			# LN: 71 | 
cline_71_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 76 | 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 76 | 
	a1 = xmem[i0]; b0 =+ a0			# LN: 76, 76 | 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 76 | 
	i1 = xmem[_p_LFE_channel_out + 0]			# LN: 76 | 
	x0 = xmem[i0]; b0 = b0 + a1			# LN: 76, 76 | 
	x1 = xmem[i1]			# LN: 76 | 
	a0 = (0x6000)			# LN: 76 | 
	a1 = x0 * x1			# LN: 76 | 
	call (__mul_sat_laccum)			# LN: 76 | 
	i0 = (0) + (_p_LFE_channel_out)			# LN: 76 | 
	i0 = xmem[i0]			# LN: 76 | 
	a0 = a0 - b0			# LN: 76 | 
	a0 =- a0			# LN: 76 | 
	xmem[i0] = a0			# LN: 76 | 
cline_76_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 77 | 
	i1 = (0) + (_p_LFE_channel_out)			# LN: 77 | 
	a0 = xmem[i0]			# LN: 77 | 
	a0 = a0 << 1			# LN: 77 | 
	i0 = xmem[i1]			# LN: 77 | 
	a0 = a0 << 1			# LN: 77 | 
	xmem[i0] = a0h			# LN: 77 | 
cline_77_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	jmp (endif_2)			# LN: 69 | 
cline_69_1:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_distorsion_threshold_1 + 0]			# LN: 82 | 
	a0 =- a0			# LN: 82 | 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 82 | 
	nop #empty cycle
	a1 = xmem[i0]			# LN: 82 | 
	a1 - a0			# LN: 82 | 
	if (a >= 0) jmp (else_4)			# LN: 82 | 
cline_82_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_distorsion_threshold_2 + 0]			# LN: 84 | 
	a0 =- a0			# LN: 84 | 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 84 | 
	nop #empty cycle
	a1 = xmem[i0]			# LN: 84 | 
	a1 - a0			# LN: 84 | 
	if (a >= 0) jmp (else_5)			# LN: 84 | 
cline_84_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_p_LFE_channel_out)			# LN: 86 | 
	i0 = xmem[i0]			# LN: 86 | 
	a0 = (0x8000)			# LN: 86 | 
	xmem[i0] = a0h			# LN: 86 | 
	jmp (endif_5)			# LN: 86 | 
cline_86_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 91 | 
	a0 = xmem[__extractedConst_3_1 + 0]			# LN: 91 | 
	a1 = xmem[i0]; b0 =+ a0			# LN: 91, 91 | 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 91 | 
	i1 = xmem[_p_LFE_channel_out + 0]			# LN: 91 | 
	x0 = xmem[i0]; b0 = b0 + a1			# LN: 91, 91 | 
	x1 = xmem[i1]			# LN: 91 | 
	a0 = (0x6000)			# LN: 91 | 
	a1 = x0 * x1			# LN: 91 | 
	call (__mul_sat_laccum)			# LN: 91 | 
	i0 = (0) + (_p_LFE_channel_out)			# LN: 91 | 
	i0 = xmem[i0]			# LN: 91 | 
	a0 = a0 + b0			# LN: 91 | 
	xmem[i0] = a0			# LN: 91 | 
cline_91_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 92 | 
	i1 = (0) + (_p_LFE_channel_out)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	a0 = a0 << 1			# LN: 92 | 
	i0 = xmem[i1]			# LN: 92 | 
	a0 = a0 << 1			# LN: 92 | 
	xmem[i0] = a0h			# LN: 92 | 
cline_92_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	jmp (endif_4)			# LN: 84 | 
cline_84_1:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 98 | 
	i1 = (0) + (_p_LFE_channel_out)			# LN: 98 | 
	a0 = xmem[i0]			# LN: 98 | 
	i0 = xmem[i1]			# LN: 98 | 
	a0 = a0 << 1			# LN: 98 | 
	xmem[i0] = a0h			# LN: 98 | 
cline_98_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 102 | 
	i1 = xmem[_p_LFE_channel_out + 0]			# LN: 102 | 
	a0 = xmem[i0]			# LN: 102 | 
	a0 = a0 >> 1			# LN: 102 | 
	xmem[i1] = a0h			# LN: 102 | 
	i0 = xmem[_p_LFE_channel_out + 0]			# LN: 102 | 
	nop #empty cycle
	i0 += 1			# LN: 102 | 
	xmem[_p_LFE_channel_out + 0] = i0			# LN: 102 | 
	jmp (endif_1)			# LN: 102 | 
cline_102_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 42 | 
	a0 = xmem[i0]			# LN: 42 | 
	uhalfword(a1) = (0x1)			# LN: 42 | 
	a0 = a0 + a1			# LN: 42 | 
	i0 = i7 - (0x5)			# LN: 42 | 
label_end_92:			# LN: 42 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 42 | 
cline_42_1:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	call (_cl_get_cycle_count)			# LN: 106 | 
	i0 = i7 - (0x7)			# LN: 106 | 
	xmem[i0] = a0h; i0 += 1			# LN: 106, 106 | 
	xmem[i0] = a0l			# LN: 106 | 
cline_106_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 107 | 
	a0 = xmem[i0]; i0 += 1			# LN: 107, 107 | 
	a0l = xmem[i0]			# LN: 107 | 
	i0 = i7 - (0x4)			# LN: 107 | 
	a1 = xmem[i0]; i0 += 1			# LN: 107, 107 | 
	a1l = xmem[i0]			# LN: 107 | 
	a0 = a0 - a1			# LN: 107 | 
	i0 = i7 - (0x9)			# LN: 107 | 
	xmem[i0] = a0h; i0 += 1			# LN: 107, 107 | 
	xmem[i0] = a0l			# LN: 107 | 
cline_107_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x9)			# LN: 108 | 
	a0 = xmem[i1]; i1 += 1			# LN: 108, 108 | 
	a0l = xmem[i1]			# LN: 108 | 
	i0 = (0) + (_string_const_0)			# LN: 108 | 
	call (_printf)			# LN: 108 | 
cline_108_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_252)			# LN: 109 | 
__epilogue_252:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x9)			# LN: 109 | 
	i7 -= 1			# LN: 109 | 
	ret			# LN: 109 | 
