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
	.public _main
	.extern _memset
	.extern _printf
	.extern _processing
	.extern _strcpy
	.extern __div
	.extern __mod
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

_main:			/* LN: 15 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 15 | 
	i7 += 1			# LN: 15 | 
	xmem[i7] = i2; i7 += 1			# LN: 15, 15 | 
	i7 = i7 + (0x20d)			# LN: 15 | 
	i1 = i7 - (0x1)			# LN: 15 | 
	xmem[i1] = a0h			# LN: 15 | 
	i1 = i7 - (0x2)			# LN: 15 | 
	xmem[i1] = i0			# LN: 15 | 
cline_15_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 31 | 
	a0 = 0			# LN: 31 | 
	xmem[i0] = a0h			# LN: 31 | 
	do (0x8), label_end_92			# LN: 31 | 
cline_31_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 32 | 
	a1 = xmem[i0]; a0 = 0			# LN: 32, 32 | 
	a1 = a1 << 4			# LN: 32 | 
	i0 = a1			# LN: 32 | 
	uhalfword(a1) = (0x10)			# LN: 32 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 32 | 
	call (_memset)			# LN: 32 | 
cline_32_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 31 | 
	a0 = xmem[i0]			# LN: 31 | 
	uhalfword(a1) = (0x1)			# LN: 31 | 
	a0 = a0 + a1			# LN: 31 | 
	i0 = i7 - (0x3)			# LN: 31 | 
label_end_92:			# LN: 31 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 31 | 
cline_31_1:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 36 | 
	i0 = xmem[i0]			# LN: 36 | 
	i1 = i7 - (259 - 0)			# LN: 36 | 
	i4 = xmem[i0]			# LN: 36 | 
	i0 = i1			# LN: 36 | 
	i1 = i4			# LN: 36 | 
	call (_strcpy)			# LN: 36 | 
cline_36_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (259 - 0)			# LN: 37 | 
	call (_cl_wavread_open)			# LN: 37 | 
	AnyReg(i0, a0h)			# LN: 37 | 
	i1 = i7 - (0x104)			# LN: 37 | 
	xmem[i1] = i0			# LN: 37 | 
cline_37_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 38 | 
	a0 = xmem[i0]			# LN: 38 | 
	a0 & a0			# LN: 38 | 
	if (a != 0) jmp (else_0)			# LN: 38 | 
cline_38_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_0)			# LN: 40 | 
	call (_printf)			# LN: 40 | 
cline_40_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 41 | 
	jmp (__epilogue_238)			# LN: 41 | 
cline_41_0:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 47 | 
	i0 = xmem[i0]			# LN: 47 | 
	call (_cl_wavread_getnchannels)			# LN: 47 | 
	i0 = i7 - (0x105)			# LN: 47 | 
	xmem[i0] = a0h			# LN: 47 | 
cline_47_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 48 | 
	i0 = xmem[i0]			# LN: 48 | 
	call (_cl_wavread_bits_per_sample)			# LN: 48 | 
	i0 = i7 - (0x106)			# LN: 48 | 
	xmem[i0] = a0h			# LN: 48 | 
cline_48_0:			/* LN: 49 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 49 | 
	i0 = xmem[i0]			# LN: 49 | 
	call (_cl_wavread_frame_rate)			# LN: 49 | 
	i0 = i7 - (0x107)			# LN: 49 | 
	xmem[i0] = a0h			# LN: 49 | 
cline_49_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 50 | 
	i0 = xmem[i0]			# LN: 50 | 
	call (_cl_wavread_number_of_frames)			# LN: 50 | 
	i0 = i7 - (0x108)			# LN: 50 | 
	xmem[i0] = a0h			# LN: 50 | 
cline_50_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 55 | 
	i0 = xmem[i0]			# LN: 55 | 
	i1 = i7 - (520 - 0)			# LN: 55 | 
	i0 += 1			# LN: 55 | 
	i4 = xmem[i0]			# LN: 55 | 
	i0 = i1			# LN: 55 | 
	i1 = i4			# LN: 55 | 
	call (_strcpy)			# LN: 55 | 
cline_55_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (520 - 0)			# LN: 56 | 
	i1 = i7 - (0x106)			# LN: 56 | 
	a0 = xmem[i1]			# LN: 56 | 
	i1 = i7 - (0x105)			# LN: 56 | 
	a1 = xmem[i1]			# LN: 56 | 
	i1 = i7 - (0x107)			# LN: 56 | 
	b0 = xmem[i1]			# LN: 56 | 
	call (_cl_wavwrite_open)			# LN: 56 | 
	AnyReg(i0, a0h)			# LN: 56 | 
	i1 = i7 - (0x209)			# LN: 56 | 
	xmem[i1] = i0			# LN: 56 | 
cline_56_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 57 | 
	a0 = xmem[i0]			# LN: 57 | 
	a0 & a0			# LN: 57 | 
	if (a != 0) jmp (else_1)			# LN: 57 | 
cline_57_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 59 | 
	call (_printf)			# LN: 59 | 
cline_59_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 60 | 
	jmp (__epilogue_238)			# LN: 60 | 
cline_60_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 73 | 
	a0 = 0			# LN: 73 | 
	xmem[i0] = a0h			# LN: 73 | 
for_1:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x108)			# LN: 73 | 
	a0 = xmem[i0]			# LN: 73 | 
	uhalfword(a1) = (0x10)			# LN: 73 | 
	call (__div)			# LN: 73 | 
	i0 = i7 - (0x20a)			# LN: 73 | 
	a1 = xmem[i0]			# LN: 73 | 
	a1 - a0			# LN: 73 | 
	if (a >= 0) jmp (for_end_1)			# LN: 73 | 
cline_73_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 75 | 
	a0 = 0			# LN: 75 | 
	xmem[i0] = a0h			# LN: 75 | 
	do (0x10), label_end_93			# LN: 75 | 
cline_75_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 77 | 
	a0 = 0			# LN: 77 | 
	xmem[i0] = a0h			# LN: 77 | 
for_3:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 77 | 
	a0 = xmem[i0]			# LN: 77 | 
	i0 = i7 - (0x105)			# LN: 77 | 
	a1 = xmem[i0]			# LN: 77 | 
	a0 - a1			# LN: 77 | 
	if (a >= 0) jmp (for_end_3)			# LN: 77 | 
cline_77_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 79 | 
	i0 = xmem[i0]			# LN: 79 | 
	call (_cl_wavread_recvsample)			# LN: 79 | 
	i0 = i7 - (0x20d)			# LN: 79 | 
	xmem[i0] = a0h			# LN: 79 | 
cline_79_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 80 | 
	a0 = xmem[i0]			# LN: 80 | 
	a0 = a0 << 4			# LN: 80 | 
	i0 = a0			# LN: 80 | 
	i1 = i7 - (0x20b)			# LN: 80 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 80 | 
	a0 = xmem[i1]			# LN: 80 | 
	a1 = i0			# LN: 80 | 
	a0 = a1 + a0			# LN: 80 | 
	AnyReg(i0, a0h)			# LN: 80 | 
	i1 = i7 - (0x20d)			# LN: 80 | 
	a0 = xmem[i1]			# LN: 80 | 
	xmem[i0] = a0h			# LN: 80 | 
cline_80_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 77 | 
	a0 = xmem[i0]			# LN: 77 | 
	uhalfword(a1) = (0x1)			# LN: 77 | 
	a0 = a0 + a1			# LN: 77 | 
	i0 = i7 - (0x20c)			# LN: 77 | 
	xmem[i0] = a0h			# LN: 77 | 
	jmp (for_3)			# LN: 77 | 
cline_77_1:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 75 | 
	a0 = xmem[i0]			# LN: 75 | 
	uhalfword(a1) = (0x1)			# LN: 75 | 
	a0 = a0 + a1			# LN: 75 | 
	i0 = i7 - (0x20b)			# LN: 75 | 
label_end_93:			# LN: 75 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 75 | 
cline_75_1:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer)			# LN: 84 | 
	i1 = (0) + (_sampleBuffer)			# LN: 84 | 
	call (_processing)			# LN: 84 | 
cline_84_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 86 | 
	a0 = xmem[i0]			# LN: 86 | 
	uhalfword(a1) = (0x3e8)			# LN: 86 | 
	call (__mod)			# LN: 86 | 
	a0 & a0			# LN: 86 | 
	if (a != 0) jmp (else_2)			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x108)			# LN: 87 | 
	a0 = xmem[i0]			# LN: 87 | 
	uhalfword(a1) = (0x10)			# LN: 87 | 
	i2 = (0) + (_string_const_2)			# LN: 87 | 
	call (__div)			# LN: 87 | 
	i1 = i7 - (0x20a)			# LN: 87 | 
	a0 = xmem[i1]; a1 =+ a0			# LN: 87, 87 | 
	i0 = i2			# LN: 87 | 
	call (_printf)			# LN: 87 | 
	jmp (endif_2)			# LN: 87 | 
cline_87_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 90 | 
	a0 = 0			# LN: 90 | 
	xmem[i0] = a0h			# LN: 90 | 
	do (0x10), label_end_94			# LN: 90 | 
cline_90_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 92 | 
	a0 = 0			# LN: 92 | 
	xmem[i0] = a0h			# LN: 92 | 
for_5:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	i0 = i7 - (0x105)			# LN: 92 | 
	a1 = xmem[i0]			# LN: 92 | 
	a0 - a1			# LN: 92 | 
	if (a >= 0) jmp (for_end_5)			# LN: 92 | 
cline_92_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 94 | 
	a0 = xmem[i0]			# LN: 94 | 
	a0 = a0 << 4			# LN: 94 | 
	i0 = a0			# LN: 94 | 
	i1 = i7 - (0x20b)			# LN: 94 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 94 | 
	a0 = xmem[i1]			# LN: 94 | 
	a1 = i0			# LN: 94 | 
	a0 = a1 + a0			# LN: 94 | 
	AnyReg(i0, a0h)			# LN: 94 | 
	i1 = i7 - (0x20d)			# LN: 94 | 
	a0 = xmem[i0]			# LN: 94 | 
	xmem[i1] = a0h			# LN: 94 | 
cline_94_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 95 | 
	i1 = i7 - (0x20d)			# LN: 95 | 
	a0 = xmem[i1]			# LN: 95 | 
	i0 = xmem[i0]			# LN: 95 | 
	call (_cl_wavwrite_sendsample)			# LN: 95 | 
cline_95_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	uhalfword(a1) = (0x1)			# LN: 92 | 
	a0 = a0 + a1			# LN: 92 | 
	i0 = i7 - (0x20c)			# LN: 92 | 
	xmem[i0] = a0h			# LN: 92 | 
	jmp (for_5)			# LN: 92 | 
cline_92_1:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 90 | 
	a0 = xmem[i0]			# LN: 90 | 
	uhalfword(a1) = (0x1)			# LN: 90 | 
	a0 = a0 + a1			# LN: 90 | 
	i0 = i7 - (0x20b)			# LN: 90 | 
label_end_94:			# LN: 90 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 90 | 
cline_90_1:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 73 | 
	a0 = xmem[i0]			# LN: 73 | 
	uhalfword(a1) = (0x1)			# LN: 73 | 
	a0 = a0 + a1			# LN: 73 | 
	i0 = i7 - (0x20a)			# LN: 73 | 
	xmem[i0] = a0h			# LN: 73 | 
	jmp (for_1)			# LN: 73 | 
cline_73_1:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 103 | 
	i0 = xmem[i0]			# LN: 103 | 
	call (_cl_wavread_close)			# LN: 103 | 
cline_103_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 104 | 
	i0 = xmem[i0]			# LN: 104 | 
	call (_cl_wavwrite_close)			# LN: 104 | 
cline_104_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 107 | 
	jmp (__epilogue_238)			# LN: 107 | 
cline_107_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
__epilogue_238:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20d)			# LN: 108 | 
	i7 -= 1			# LN: 108 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 108, 108 | 
	ret			# LN: 108 | 
