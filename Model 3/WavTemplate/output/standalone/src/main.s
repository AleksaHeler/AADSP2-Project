	.public _sampleBuffer
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.extern _initialize_processing
	.public _main
	.extern _memset
	.extern _printf
	.extern _processing
	.extern _strcpy
	.extern __div
	.extern __mod
	.xdata_ovly
__extractedConst_0_1
	.dw  (0x4026e547)
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
	.xdata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_string_const_0
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x25)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x2f)
	.dw  (0x20)
	.dw  (0x25)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x69)
	.dw  (0x74)
	.dw  (0x65)
	.dw  (0x72)
	.dw  (0x61)
	.dw  (0x74)
	.dw  (0x69)
	.dw  (0x6f)
	.dw  (0x6e)
	.dw  (0x73)
	.dw  (0xa)
	.dw  (0x0)
	.code_ovly



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 16 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 16 | 
	i7 += 1			# LN: 16 | 
	xmem[i7] = i2; i7 += 1			# LN: 16, 16 | 
	i7 = i7 + (0x211)			# LN: 16 | 
	i1 = i7 - (0x1)			# LN: 16 | 
	xmem[i1] = a0h			# LN: 16 | 
	i1 = i7 - (0x2)			# LN: 16 | 
	xmem[i1] = i0			# LN: 16 | 
cline_16_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 30 | 
	i0 = i7 - (0x3)			# LN: 30 | 
	xmem[i0] = a0h			# LN: 30 | 
cline_30_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 31 | 
	uhalfword(a0) = (0x3)			# LN: 31 | 
	xmem[i0] = a0h			# LN: 31 | 
cline_31_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 32 | 
	a0 = 0			# LN: 32 | 
	xmem[i0] = a0h			# LN: 32 | 
cline_32_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 35 | 
	a0 = 0			# LN: 35 | 
	xmem[i0] = a0h			# LN: 35 | 
	do (0x8), label_end_92			# LN: 35 | 
cline_35_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 36 | 
	a1 = xmem[i0]; a0 = 0			# LN: 36, 36 | 
	a1 = a1 << 4			# LN: 36 | 
	i0 = a1			# LN: 36 | 
	uhalfword(a1) = (0x10)			# LN: 36 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 36 | 
	call (_memset)			# LN: 36 | 
cline_36_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 35 | 
	a0 = xmem[i0]			# LN: 35 | 
	uhalfword(a1) = (0x1)			# LN: 35 | 
	a0 = a0 + a1			# LN: 35 | 
	i0 = i7 - (0x6)			# LN: 35 | 
label_end_92:			# LN: 35 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 35 | 
cline_35_1:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 41 | 
	i0 = xmem[i0]			# LN: 41 | 
	i1 = i7 - (262 - 0)			# LN: 41 | 
	i4 = xmem[i0]			# LN: 41 | 
	i0 = i1			# LN: 41 | 
	i1 = i4			# LN: 41 | 
	call (_strcpy)			# LN: 41 | 
cline_41_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (262 - 0)			# LN: 42 | 
	call (_cl_wavread_open)			# LN: 42 | 
	AnyReg(i0, a0h)			# LN: 42 | 
	i1 = i7 - (0x107)			# LN: 42 | 
	xmem[i1] = i0			# LN: 42 | 
cline_42_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x107)			# LN: 43 | 
	a0 = xmem[i0]			# LN: 43 | 
	a0 & a0			# LN: 43 | 
	if (a != 0) jmp (else_0)			# LN: 43 | 
cline_43_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_0)			# LN: 45 | 
	call (_printf)			# LN: 45 | 
cline_45_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 46 | 
	jmp (__epilogue_240)			# LN: 46 | 
cline_46_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x107)			# LN: 53 | 
	i0 = xmem[i0]			# LN: 53 | 
	call (_cl_wavread_getnchannels)			# LN: 53 | 
	i0 = i7 - (0x108)			# LN: 53 | 
	xmem[i0] = a0h			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x107)			# LN: 54 | 
	i0 = xmem[i0]			# LN: 54 | 
	call (_cl_wavread_bits_per_sample)			# LN: 54 | 
	i0 = i7 - (0x109)			# LN: 54 | 
	xmem[i0] = a0h			# LN: 54 | 
cline_54_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x107)			# LN: 55 | 
	i0 = xmem[i0]			# LN: 55 | 
	call (_cl_wavread_frame_rate)			# LN: 55 | 
	i0 = i7 - (0x10a)			# LN: 55 | 
	xmem[i0] = a0h			# LN: 55 | 
cline_55_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x107)			# LN: 56 | 
	i0 = xmem[i0]			# LN: 56 | 
	call (_cl_wavread_number_of_frames)			# LN: 56 | 
	i0 = i7 - (0x10b)			# LN: 56 | 
	xmem[i0] = a0h			# LN: 56 | 
cline_56_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 62 | 
	a0 = xmem[i0]			# LN: 62 | 
	i0 = i7 - (0x4)			# LN: 62 | 
	a1 = xmem[i0]			# LN: 62 | 
	call (_initialize_processing)			# LN: 62 | 
cline_62_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 63 | 
	a0 = xmem[i0]			# LN: 63 | 
	a0 & a0			# LN: 63 | 
	if (a == 0) jmp (case_0)			# LN: 63 | 
	i0 = i7 - (0x4)			# LN: 63 | 
	a0 = xmem[i0]			# LN: 63 | 
	uhalfword(a1) = (0x1)			# LN: 63 | 
	a0 - a1			# LN: 63 | 
	if (a == 0) jmp (case_1)			# LN: 63 | 
	i0 = i7 - (0x4)			# LN: 63 | 
	a0 = xmem[i0]			# LN: 63 | 
	uhalfword(a1) = (0x2)			# LN: 63 | 
	a0 - a1			# LN: 63 | 
	if (a == 0) jmp (case_2)			# LN: 63 | 
	i0 = i7 - (0x4)			# LN: 63 | 
	a0 = xmem[i0]			# LN: 63 | 
	uhalfword(a1) = (0x3)			# LN: 63 | 
	a0 - a1			# LN: 63 | 
	if (a == 0) jmp (case_3)			# LN: 63 | 
	jmp (default_0)			# LN: 63 | 
cline_63_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10c)			# LN: 65 | 
	uhalfword(a0) = (0x4)			# LN: 65 | 
	xmem[i0] = a0h			# LN: 65 | 
cline_65_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 66 | 
cline_66_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
case_1:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10c)			# LN: 68 | 
	uhalfword(a0) = (0x5)			# LN: 68 | 
	xmem[i0] = a0h			# LN: 68 | 
cline_68_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 69 | 
cline_69_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
case_2:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10c)			# LN: 71 | 
	uhalfword(a0) = (0x5)			# LN: 71 | 
	xmem[i0] = a0h			# LN: 71 | 
cline_71_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 72 | 
cline_72_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
case_3:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10c)			# LN: 74 | 
	uhalfword(a0) = (0x6)			# LN: 74 | 
	xmem[i0] = a0h			# LN: 74 | 
cline_74_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 75 | 
cline_75_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
default_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10c)			# LN: 77 | 
	uhalfword(a0) = (0x2)			# LN: 77 | 
	xmem[i0] = a0h			# LN: 77 | 
cline_77_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 78 | 
cline_78_0:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
switch_end_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 85 | 
	i0 = xmem[i0]			# LN: 85 | 
	i1 = i7 - (524 - 0)			# LN: 85 | 
	i0 += 1			# LN: 85 | 
	i4 = xmem[i0]			# LN: 85 | 
	i0 = i1			# LN: 85 | 
	i1 = i4			# LN: 85 | 
	call (_strcpy)			# LN: 85 | 
cline_85_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (524 - 0)			# LN: 86 | 
	i1 = i7 - (0x109)			# LN: 86 | 
	a0 = xmem[i1]			# LN: 86 | 
	i1 = i7 - (0x10c)			# LN: 86 | 
	a1 = xmem[i1]			# LN: 86 | 
	i1 = i7 - (0x10a)			# LN: 86 | 
	b0 = xmem[i1]			# LN: 86 | 
	call (_cl_wavwrite_open)			# LN: 86 | 
	AnyReg(i0, a0h)			# LN: 86 | 
	i1 = i7 - (0x20d)			# LN: 86 | 
	xmem[i1] = i0			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 87 | 
	a0 = xmem[i0]			# LN: 87 | 
	a0 & a0			# LN: 87 | 
	if (a != 0) jmp (else_1)			# LN: 87 | 
cline_87_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 89 | 
	call (_printf)			# LN: 89 | 
cline_89_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 90 | 
	jmp (__epilogue_240)			# LN: 90 | 
cline_90_0:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 103 | 
	a0 = 0			# LN: 103 | 
	xmem[i0] = a0h			# LN: 103 | 
for_1:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10b)			# LN: 103 | 
	a0 = xmem[i0]			# LN: 103 | 
	uhalfword(a1) = (0x10)			# LN: 103 | 
	call (__div)			# LN: 103 | 
	i0 = i7 - (0x20e)			# LN: 103 | 
	a1 = xmem[i0]			# LN: 103 | 
	a1 - a0			# LN: 103 | 
	if (a >= 0) jmp (for_end_1)			# LN: 103 | 
cline_103_0:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 105 | 
	a0 = 0			# LN: 105 | 
	xmem[i0] = a0h			# LN: 105 | 
	do (0x10), label_end_93			# LN: 105 | 
cline_105_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 107 | 
	a0 = 0			# LN: 107 | 
	xmem[i0] = a0h			# LN: 107 | 
for_3:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 107 | 
	a0 = xmem[i0]			# LN: 107 | 
	i0 = i7 - (0x108)			# LN: 107 | 
	a1 = xmem[i0]			# LN: 107 | 
	a0 - a1			# LN: 107 | 
	if (a >= 0) jmp (for_end_3)			# LN: 107 | 
cline_107_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x107)			# LN: 109 | 
	i0 = xmem[i0]			# LN: 109 | 
	call (_cl_wavread_recvsample)			# LN: 109 | 
	i0 = i7 - (0x211)			# LN: 109 | 
	xmem[i0] = a0h			# LN: 109 | 
cline_109_0:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 110 | 
	a0 = xmem[i0]			# LN: 110 | 
	a0 = a0 << 4			# LN: 110 | 
	i0 = a0			# LN: 110 | 
	i1 = i7 - (0x20f)			# LN: 110 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 110 | 
	a0 = xmem[i1]			# LN: 110 | 
	a1 = i0			# LN: 110 | 
	a0 = a1 + a0			# LN: 110 | 
	AnyReg(i0, a0h)			# LN: 110 | 
	i1 = i7 - (0x211)			# LN: 110 | 
	a0 = xmem[i1]			# LN: 110 | 
	xmem[i0] = a0h			# LN: 110 | 
cline_110_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 107 | 
	a0 = xmem[i0]			# LN: 107 | 
	uhalfword(a1) = (0x1)			# LN: 107 | 
	a0 = a0 + a1			# LN: 107 | 
	i0 = i7 - (0x210)			# LN: 107 | 
	xmem[i0] = a0h			# LN: 107 | 
	jmp (for_3)			# LN: 107 | 
cline_107_1:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 105 | 
	a0 = xmem[i0]			# LN: 105 | 
	uhalfword(a1) = (0x1)			# LN: 105 | 
	a0 = a0 + a1			# LN: 105 | 
	i0 = i7 - (0x20f)			# LN: 105 | 
label_end_93:			# LN: 105 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 105 | 
cline_105_1:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer)			# LN: 114 | 
	i1 = (0) + (_sampleBuffer)			# LN: 114 | 
	call (_processing)			# LN: 114 | 
cline_114_0:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 116 | 
	a0 = xmem[i0]			# LN: 116 | 
	uhalfword(a1) = (0x1f4)			# LN: 116 | 
	call (__mod)			# LN: 116 | 
	a0 & a0			# LN: 116 | 
	if (a != 0) jmp (else_2)			# LN: 116 | 
cline_116_0:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10b)			# LN: 117 | 
	a0 = xmem[i0]			# LN: 117 | 
	uhalfword(a1) = (0x10)			# LN: 117 | 
	i2 = (0) + (_string_const_2)			# LN: 117 | 
	call (__div)			# LN: 117 | 
	i1 = i7 - (0x20e)			# LN: 117 | 
	a0 = xmem[i1]; a1 =+ a0			# LN: 117, 117 | 
	i0 = i2			# LN: 117 | 
	call (_printf)			# LN: 117 | 
	jmp (endif_2)			# LN: 117 | 
cline_117_0:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 120 | 
	a0 = 0			# LN: 120 | 
	xmem[i0] = a0h			# LN: 120 | 
	do (0x10), label_end_94			# LN: 120 | 
cline_120_0:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 122 | 
	a0 = 0			# LN: 122 | 
	xmem[i0] = a0h			# LN: 122 | 
for_5:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 122 | 
	a0 = xmem[i0]			# LN: 122 | 
	i0 = i7 - (0x10c)			# LN: 122 | 
	a1 = xmem[i0]			# LN: 122 | 
	a0 - a1			# LN: 122 | 
	if (a >= 0) jmp (for_end_5)			# LN: 122 | 
cline_122_0:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 124 | 
	a0 = 0			# LN: 124 | 
	xmem[i0] = a0h			# LN: 124 | 
cline_124_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
switch_1:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 125 | 
	a0 = xmem[i0]			# LN: 125 | 
	a0 & a0			# LN: 125 | 
	if (a == 0) jmp (case_4)			# LN: 125 | 
	i0 = i7 - (0x4)			# LN: 125 | 
	a0 = xmem[i0]			# LN: 125 | 
	uhalfword(a1) = (0x1)			# LN: 125 | 
	a0 - a1			# LN: 125 | 
	if (a == 0) jmp (case_5)			# LN: 125 | 
	i0 = i7 - (0x4)			# LN: 125 | 
	a0 = xmem[i0]			# LN: 125 | 
	uhalfword(a1) = (0x2)			# LN: 125 | 
	a0 - a1			# LN: 125 | 
	if (a == 0) jmp (case_6)			# LN: 125 | 
	i0 = i7 - (0x4)			# LN: 125 | 
	a0 = xmem[i0]			# LN: 125 | 
	uhalfword(a1) = (0x3)			# LN: 125 | 
	a0 - a1			# LN: 125 | 
	if (a == 0) jmp (case_7)			# LN: 125 | 
	jmp (default_1)			# LN: 125 | 
cline_125_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
case_4:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 128 | 
	a0 = xmem[i0]			# LN: 128 | 
	a0 & a0			# LN: 128 | 
	if (a != 0) jmp (else_3)			# LN: 128 | 
	i0 = i7 - (0x5)			# LN: 128 | 
	a0 = 0			# LN: 128 | 
	xmem[i0] = a0h			# LN: 128 | 
	jmp (endif_3)			# LN: 128 | 
cline_128_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 129 | 
	a0 = xmem[i0]			# LN: 129 | 
	uhalfword(a1) = (0x1)			# LN: 129 | 
	a0 - a1			# LN: 129 | 
	if (a != 0) jmp (else_4)			# LN: 129 | 
	i0 = i7 - (0x5)			# LN: 129 | 
	uhalfword(a0) = (0x1)			# LN: 129 | 
	xmem[i0] = a0h			# LN: 129 | 
	jmp (endif_4)			# LN: 129 | 
cline_129_0:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 130 | 
	a0 = xmem[i0]			# LN: 130 | 
	uhalfword(a1) = (0x2)			# LN: 130 | 
	a0 - a1			# LN: 130 | 
	if (a != 0) jmp (else_5)			# LN: 130 | 
	i0 = i7 - (0x5)			# LN: 130 | 
	uhalfword(a0) = (0x4)			# LN: 130 | 
	xmem[i0] = a0h			# LN: 130 | 
	jmp (endif_5)			# LN: 130 | 
cline_130_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 131 | 
	a0 = xmem[i0]			# LN: 131 | 
	uhalfword(a1) = (0x3)			# LN: 131 | 
	a0 - a1			# LN: 131 | 
	if (a != 0) jmp (else_6)			# LN: 131 | 
	i0 = i7 - (0x5)			# LN: 131 | 
	uhalfword(a0) = (0x5)			# LN: 131 | 
	xmem[i0] = a0h			# LN: 131 | 
	jmp (endif_6)			# LN: 131 | 
cline_131_0:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
endif_6:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 132 | 
cline_132_0:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
case_5:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 134 | 
	a0 = xmem[i0]			# LN: 134 | 
	a0 & a0			# LN: 134 | 
	if (a != 0) jmp (else_7)			# LN: 134 | 
	i0 = i7 - (0x5)			# LN: 134 | 
	a0 = 0			# LN: 134 | 
	xmem[i0] = a0h			# LN: 134 | 
	jmp (endif_7)			# LN: 134 | 
cline_134_0:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
endif_7:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 135 | 
	a0 = xmem[i0]			# LN: 135 | 
	uhalfword(a1) = (0x1)			# LN: 135 | 
	a0 - a1			# LN: 135 | 
	if (a != 0) jmp (else_8)			# LN: 135 | 
	i0 = i7 - (0x5)			# LN: 135 | 
	uhalfword(a0) = (0x1)			# LN: 135 | 
	xmem[i0] = a0h			# LN: 135 | 
	jmp (endif_8)			# LN: 135 | 
cline_135_0:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
endif_8:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 136 | 
	a0 = xmem[i0]			# LN: 136 | 
	uhalfword(a1) = (0x2)			# LN: 136 | 
	a0 - a1			# LN: 136 | 
	if (a != 0) jmp (else_9)			# LN: 136 | 
	i0 = i7 - (0x5)			# LN: 136 | 
	uhalfword(a0) = (0x3)			# LN: 136 | 
	xmem[i0] = a0h			# LN: 136 | 
	jmp (endif_9)			# LN: 136 | 
cline_136_0:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
endif_9:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 137 | 
	a0 = xmem[i0]			# LN: 137 | 
	uhalfword(a1) = (0x3)			# LN: 137 | 
	a0 - a1			# LN: 137 | 
	if (a != 0) jmp (else_10)			# LN: 137 | 
	i0 = i7 - (0x5)			# LN: 137 | 
	uhalfword(a0) = (0x4)			# LN: 137 | 
	xmem[i0] = a0h			# LN: 137 | 
	jmp (endif_10)			# LN: 137 | 
cline_137_0:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
endif_10:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
else_10:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 138 | 
	a0 = xmem[i0]			# LN: 138 | 
	uhalfword(a1) = (0x4)			# LN: 138 | 
	a0 - a1			# LN: 138 | 
	if (a != 0) jmp (else_11)			# LN: 138 | 
	i0 = i7 - (0x5)			# LN: 138 | 
	uhalfword(a0) = (0x5)			# LN: 138 | 
	xmem[i0] = a0h			# LN: 138 | 
	jmp (endif_11)			# LN: 138 | 
cline_138_0:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
endif_11:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
else_11:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 139 | 
cline_139_0:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
case_6:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 141 | 
	a0 = xmem[i0]			# LN: 141 | 
	a0 & a0			# LN: 141 | 
	if (a != 0) jmp (else_12)			# LN: 141 | 
	i0 = i7 - (0x5)			# LN: 141 | 
	a0 = 0			# LN: 141 | 
	xmem[i0] = a0h			# LN: 141 | 
	jmp (endif_12)			# LN: 141 | 
cline_141_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
endif_12:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
else_12:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 142 | 
	a0 = xmem[i0]			# LN: 142 | 
	uhalfword(a1) = (0x1)			# LN: 142 | 
	a0 - a1			# LN: 142 | 
	if (a != 0) jmp (else_13)			# LN: 142 | 
	i0 = i7 - (0x5)			# LN: 142 | 
	uhalfword(a0) = (0x1)			# LN: 142 | 
	xmem[i0] = a0h			# LN: 142 | 
	jmp (endif_13)			# LN: 142 | 
cline_142_0:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
endif_13:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
else_13:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 143 | 
	a0 = xmem[i0]			# LN: 143 | 
	uhalfword(a1) = (0x2)			# LN: 143 | 
	a0 - a1			# LN: 143 | 
	if (a != 0) jmp (else_14)			# LN: 143 | 
	i0 = i7 - (0x5)			# LN: 143 | 
	uhalfword(a0) = (0x2)			# LN: 143 | 
	xmem[i0] = a0h			# LN: 143 | 
	jmp (endif_14)			# LN: 143 | 
cline_143_0:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
endif_14:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
else_14:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 144 | 
	a0 = xmem[i0]			# LN: 144 | 
	uhalfword(a1) = (0x3)			# LN: 144 | 
	a0 - a1			# LN: 144 | 
	if (a != 0) jmp (else_15)			# LN: 144 | 
	i0 = i7 - (0x5)			# LN: 144 | 
	uhalfword(a0) = (0x4)			# LN: 144 | 
	xmem[i0] = a0h			# LN: 144 | 
	jmp (endif_15)			# LN: 144 | 
cline_144_0:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
endif_15:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
else_15:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 145 | 
	a0 = xmem[i0]			# LN: 145 | 
	uhalfword(a1) = (0x4)			# LN: 145 | 
	a0 - a1			# LN: 145 | 
	if (a != 0) jmp (else_16)			# LN: 145 | 
	i0 = i7 - (0x5)			# LN: 145 | 
	uhalfword(a0) = (0x5)			# LN: 145 | 
	xmem[i0] = a0h			# LN: 145 | 
	jmp (endif_16)			# LN: 145 | 
cline_145_0:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
endif_16:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
else_16:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 146 | 
cline_146_0:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
case_7:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 148 | 
	a0 = xmem[i0]			# LN: 148 | 
	a0 & a0			# LN: 148 | 
	if (a != 0) jmp (else_17)			# LN: 148 | 
	i0 = i7 - (0x5)			# LN: 148 | 
	a0 = 0			# LN: 148 | 
	xmem[i0] = a0h			# LN: 148 | 
	jmp (endif_17)			# LN: 148 | 
cline_148_0:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
endif_17:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
else_17:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 149 | 
	a0 = xmem[i0]			# LN: 149 | 
	uhalfword(a1) = (0x1)			# LN: 149 | 
	a0 - a1			# LN: 149 | 
	if (a != 0) jmp (else_18)			# LN: 149 | 
	i0 = i7 - (0x5)			# LN: 149 | 
	uhalfword(a0) = (0x1)			# LN: 149 | 
	xmem[i0] = a0h			# LN: 149 | 
	jmp (endif_18)			# LN: 149 | 
cline_149_0:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
endif_18:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
else_18:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 150 | 
	a0 = xmem[i0]			# LN: 150 | 
	uhalfword(a1) = (0x2)			# LN: 150 | 
	a0 - a1			# LN: 150 | 
	if (a != 0) jmp (else_19)			# LN: 150 | 
	i0 = i7 - (0x5)			# LN: 150 | 
	uhalfword(a0) = (0x2)			# LN: 150 | 
	xmem[i0] = a0h			# LN: 150 | 
	jmp (endif_19)			# LN: 150 | 
cline_150_0:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
endif_19:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
else_19:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 151 | 
	a0 = xmem[i0]			# LN: 151 | 
	uhalfword(a1) = (0x3)			# LN: 151 | 
	a0 - a1			# LN: 151 | 
	if (a != 0) jmp (else_20)			# LN: 151 | 
	i0 = i7 - (0x5)			# LN: 151 | 
	uhalfword(a0) = (0x3)			# LN: 151 | 
	xmem[i0] = a0h			# LN: 151 | 
	jmp (endif_20)			# LN: 151 | 
cline_151_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
endif_20:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
else_20:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 152 | 
	a0 = xmem[i0]			# LN: 152 | 
	uhalfword(a1) = (0x4)			# LN: 152 | 
	a0 - a1			# LN: 152 | 
	if (a != 0) jmp (else_21)			# LN: 152 | 
	i0 = i7 - (0x5)			# LN: 152 | 
	uhalfword(a0) = (0x4)			# LN: 152 | 
	xmem[i0] = a0h			# LN: 152 | 
	jmp (endif_21)			# LN: 152 | 
cline_152_0:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
endif_21:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
else_21:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 153 | 
	a0 = xmem[i0]			# LN: 153 | 
	uhalfword(a1) = (0x5)			# LN: 153 | 
	a0 - a1			# LN: 153 | 
	if (a != 0) jmp (else_22)			# LN: 153 | 
	i0 = i7 - (0x5)			# LN: 153 | 
	uhalfword(a0) = (0x5)			# LN: 153 | 
	xmem[i0] = a0h			# LN: 153 | 
	jmp (endif_22)			# LN: 153 | 
cline_153_0:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
endif_22:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
else_22:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 154 | 
cline_154_0:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
default_1:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 156 | 
cline_156_0:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
switch_end_1:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 158 | 
	a0 = xmem[i0]			# LN: 158 | 
	a0 = a0 << 4			# LN: 158 | 
	i0 = a0			# LN: 158 | 
	i1 = i7 - (0x20f)			# LN: 158 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 158 | 
	a0 = xmem[i1]			# LN: 158 | 
	a1 = i0			# LN: 158 | 
	a0 = a1 + a0			# LN: 158 | 
	AnyReg(i0, a0h)			# LN: 158 | 
	i1 = i7 - (0x211)			# LN: 158 | 
	a0 = xmem[i0]			# LN: 158 | 
	xmem[i1] = a0h			# LN: 158 | 
cline_158_0:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 159 | 
	i1 = i7 - (0x211)			# LN: 159 | 
	a0 = xmem[i1]			# LN: 159 | 
	i0 = xmem[i0]			# LN: 159 | 
	call (_cl_wavwrite_sendsample)			# LN: 159 | 
cline_159_0:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 122 | 
	a0 = xmem[i0]			# LN: 122 | 
	uhalfword(a1) = (0x1)			# LN: 122 | 
	a0 = a0 + a1			# LN: 122 | 
	i0 = i7 - (0x210)			# LN: 122 | 
	xmem[i0] = a0h			# LN: 122 | 
	jmp (for_5)			# LN: 122 | 
cline_122_1:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 120 | 
	a0 = xmem[i0]			# LN: 120 | 
	uhalfword(a1) = (0x1)			# LN: 120 | 
	a0 = a0 + a1			# LN: 120 | 
	i0 = i7 - (0x20f)			# LN: 120 | 
label_end_94:			# LN: 120 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 120 | 
cline_120_1:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 162 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 103 | 
	a0 = xmem[i0]			# LN: 103 | 
	uhalfword(a1) = (0x1)			# LN: 103 | 
	a0 = a0 + a1			# LN: 103 | 
	i0 = i7 - (0x20e)			# LN: 103 | 
	xmem[i0] = a0h			# LN: 103 | 
	jmp (for_1)			# LN: 103 | 
cline_103_1:			/* LN: 167 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x107)			# LN: 167 | 
	i0 = xmem[i0]			# LN: 167 | 
	call (_cl_wavread_close)			# LN: 167 | 
cline_167_0:			/* LN: 168 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 168 | 
	i0 = xmem[i0]			# LN: 168 | 
	call (_cl_wavwrite_close)			# LN: 168 | 
cline_168_0:			/* LN: 171 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 171 | 
	jmp (__epilogue_240)			# LN: 171 | 
cline_171_0:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
__epilogue_240:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x211)			# LN: 172 | 
	i7 -= 1			# LN: 172 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 172, 172 | 
	ret			# LN: 172 | 
