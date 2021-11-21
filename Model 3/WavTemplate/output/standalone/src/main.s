	.public _WavInputName
	.public _WavOutputName
	.public _bitsPerSample
	.public _channel
	.public _gain
	.public _i
	.public _iNumSamples
	.public _mode
	.public _nChannelsIn
	.public _nChannelsOut
	.public _sampleBuffer
	.public _sampleRate
	.public _wav_in
	.public _wav_out
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
_WavInputName
	.bss (0x100)
	.ydata_ovly
_WavOutputName
	.bss (0x100)
	.xdata_ovly
_bitsPerSample
	.bss (0x1)
	.xdata_ovly
_channel
	.dw  (0x0)
	.xdata_ovly
_distorsion_threshold_1
	.dw  (0x6666666)
	.xdata_ovly
_distorsion_threshold_2
	.dw  (0xccccccd)
	.xdata_ovly
_gain
	.dw  (0x4026e547)
	.xdata_ovly
_i
	.bss (0x1)
	.xdata_ovly
_iNumSamples
	.bss (0x1)
	.xdata_ovly
_mode
	.dw  (0x3)
	.xdata_ovly
_nChannelsIn
	.bss (0x1)
	.xdata_ovly
_nChannelsOut
	.bss (0x1)
	.xdata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_sampleRate
	.bss (0x1)
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
	.xdata_ovly
_wav_in
	.bss (0x1)
	.xdata_ovly
_wav_out
	.bss (0x1)
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

_main:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 31 | 
	i7 += 1			# LN: 31 | 
	xmem[i7] = i2; i7 += 1			# LN: 31, 31 | 
	i7 = i7 + (0x6)			# LN: 31 | 
	i1 = i7 - (0x1)			# LN: 31 | 
	xmem[i1] = a0h			# LN: 31 | 
	i1 = i7 - (0x2)			# LN: 31 | 
	xmem[i1] = i0			# LN: 31 | 
cline_31_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 34 | 
	xmem[_i + 0] = a0h			# LN: 34 | 
for_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 34 | 
	uhalfword(a1) = (0x8)			# LN: 34 | 
	a0 - a1			# LN: 34 | 
	if (a >= 0) jmp (for_end_0)			# LN: 34 | 
cline_34_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 35 | 
	a0 = a0 << 4			# LN: 35 | 
	i0 = a0; a0 = 0			# LN: 35, 35 | 
	uhalfword(a1) = (0x10)			# LN: 35 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 35 | 
	call (_memset)			# LN: 35 | 
cline_35_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 34 | 
	uhalfword(a1) = (0x1)			# LN: 34 | 
	a0 = a0 + a1			# LN: 34 | 
	xmem[_i + 0] = a0h			# LN: 34 | 
	jmp (for_0)			# LN: 34 | 
cline_34_1:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 40 | 
	i0 = xmem[i0]			# LN: 40 | 
	i1 = (0) + (_WavInputName)			# LN: 40 | 
	i4 = xmem[i0]			# LN: 40 | 
	i0 = i1			# LN: 40 | 
	i1 = i4			# LN: 40 | 
	call (_strcpy)			# LN: 40 | 
cline_40_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_WavInputName)			# LN: 41 | 
	call (_cl_wavread_open)			# LN: 41 | 
	AnyReg(i0, a0h)			# LN: 41 | 
	xmem[_wav_in + 0] = i0			# LN: 41 | 
cline_41_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_wav_in + 0]			# LN: 42 | 
	a0 & a0			# LN: 42 | 
	if (a != 0) jmp (else_0)			# LN: 42 | 
cline_42_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_0)			# LN: 44 | 
	call (_printf)			# LN: 44 | 
cline_44_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 45 | 
	jmp (__epilogue_240)			# LN: 45 | 
cline_45_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_wav_in + 0]			# LN: 52 | 
	call (_cl_wavread_getnchannels)			# LN: 52 | 
	xmem[_nChannelsIn + 0] = a0h			# LN: 52 | 
cline_52_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_wav_in + 0]			# LN: 53 | 
	call (_cl_wavread_bits_per_sample)			# LN: 53 | 
	xmem[_bitsPerSample + 0] = a0h			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_wav_in + 0]			# LN: 54 | 
	call (_cl_wavread_frame_rate)			# LN: 54 | 
	xmem[_sampleRate + 0] = a0h			# LN: 54 | 
cline_54_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_wav_in + 0]			# LN: 55 | 
	call (_cl_wavread_number_of_frames)			# LN: 55 | 
	xmem[_iNumSamples + 0] = a0h			# LN: 55 | 
cline_55_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_gain + 0]			# LN: 61 | 
	a1 = xmem[_mode + 0]			# LN: 61 | 
	call (_initialize_processing)			# LN: 61 | 
cline_61_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 62 | 
	a0 & a0			# LN: 62 | 
	if (a == 0) jmp (case_0)			# LN: 62 | 
	a0 = xmem[_mode + 0]			# LN: 62 | 
	uhalfword(a1) = (0x1)			# LN: 62 | 
	a0 - a1			# LN: 62 | 
	if (a == 0) jmp (case_1)			# LN: 62 | 
	a0 = xmem[_mode + 0]			# LN: 62 | 
	uhalfword(a1) = (0x2)			# LN: 62 | 
	a0 - a1			# LN: 62 | 
	if (a == 0) jmp (case_2)			# LN: 62 | 
	a0 = xmem[_mode + 0]			# LN: 62 | 
	uhalfword(a1) = (0x3)			# LN: 62 | 
	a0 - a1			# LN: 62 | 
	if (a == 0) jmp (case_3)			# LN: 62 | 
	jmp (default_0)			# LN: 62 | 
cline_62_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x4)			# LN: 64 | 
	xmem[_nChannelsOut + 0] = a0h			# LN: 64 | 
cline_64_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 65 | 
cline_65_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
case_1:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x5)			# LN: 67 | 
	xmem[_nChannelsOut + 0] = a0h			# LN: 67 | 
cline_67_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 68 | 
cline_68_0:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
case_2:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x5)			# LN: 70 | 
	xmem[_nChannelsOut + 0] = a0h			# LN: 70 | 
cline_70_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 71 | 
cline_71_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
case_3:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x6)			# LN: 73 | 
	xmem[_nChannelsOut + 0] = a0h			# LN: 73 | 
cline_73_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 74 | 
cline_74_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
default_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x2)			# LN: 76 | 
	xmem[_nChannelsOut + 0] = a0h			# LN: 76 | 
cline_76_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 77 | 
cline_77_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
switch_end_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 84 | 
	i0 = xmem[i0]			# LN: 84 | 
	i1 = (0) + (_WavOutputName)			# LN: 84 | 
	i0 += 1			# LN: 84 | 
	i4 = xmem[i0]			# LN: 84 | 
	i0 = i1			# LN: 84 | 
	i1 = i4			# LN: 84 | 
	call (_strcpy)			# LN: 84 | 
cline_84_0:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_WavOutputName)			# LN: 85 | 
	a0 = xmem[_bitsPerSample + 0]			# LN: 85 | 
	a1 = xmem[_nChannelsOut + 0]			# LN: 85 | 
	b0 = xmem[_sampleRate + 0]			# LN: 85 | 
	call (_cl_wavwrite_open)			# LN: 85 | 
	AnyReg(i0, a0h)			# LN: 85 | 
	xmem[_wav_out + 0] = i0			# LN: 85 | 
cline_85_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_wav_out + 0]			# LN: 86 | 
	a0 & a0			# LN: 86 | 
	if (a != 0) jmp (else_1)			# LN: 86 | 
cline_86_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 88 | 
	call (_printf)			# LN: 88 | 
cline_88_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 89 | 
	jmp (__epilogue_240)			# LN: 89 | 
cline_89_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 102 | 
	a0 = 0			# LN: 102 | 
	xmem[i0] = a0h			# LN: 102 | 
for_1:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_iNumSamples + 0]			# LN: 102 | 
	uhalfword(a1) = (0x10)			# LN: 102 | 
	call (__div)			# LN: 102 | 
	i0 = i7 - (0x3)			# LN: 102 | 
	a1 = xmem[i0]			# LN: 102 | 
	a1 - a0			# LN: 102 | 
	if (a >= 0) jmp (for_end_1)			# LN: 102 | 
cline_102_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 104 | 
	a0 = 0			# LN: 104 | 
	xmem[i0] = a0h			# LN: 104 | 
	do (0x10), label_end_92			# LN: 104 | 
cline_104_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 106 | 
	a0 = 0			# LN: 106 | 
	xmem[i0] = a0h			# LN: 106 | 
for_3:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 106 | 
	a0 = xmem[i0]			# LN: 106 | 
	a1 = xmem[_nChannelsIn + 0]			# LN: 106 | 
	a0 - a1			# LN: 106 | 
	if (a >= 0) jmp (for_end_3)			# LN: 106 | 
cline_106_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_wav_in + 0]			# LN: 108 | 
	call (_cl_wavread_recvsample)			# LN: 108 | 
	i0 = i7 - (0x6)			# LN: 108 | 
	xmem[i0] = a0h			# LN: 108 | 
cline_108_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 109 | 
	a0 = xmem[i0]			# LN: 109 | 
	a0 = a0 << 4			# LN: 109 | 
	i0 = a0			# LN: 109 | 
	i1 = i7 - (0x4)			# LN: 109 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 109 | 
	a0 = xmem[i1]			# LN: 109 | 
	a1 = i0			# LN: 109 | 
	a0 = a1 + a0			# LN: 109 | 
	AnyReg(i0, a0h)			# LN: 109 | 
	i1 = i7 - (0x6)			# LN: 109 | 
	a0 = xmem[i1]			# LN: 109 | 
	xmem[i0] = a0h			# LN: 109 | 
cline_109_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 106 | 
	a0 = xmem[i0]			# LN: 106 | 
	uhalfword(a1) = (0x1)			# LN: 106 | 
	a0 = a0 + a1			# LN: 106 | 
	i0 = i7 - (0x5)			# LN: 106 | 
	xmem[i0] = a0h			# LN: 106 | 
	jmp (for_3)			# LN: 106 | 
cline_106_1:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 104 | 
	a0 = xmem[i0]			# LN: 104 | 
	uhalfword(a1) = (0x1)			# LN: 104 | 
	a0 = a0 + a1			# LN: 104 | 
	i0 = i7 - (0x4)			# LN: 104 | 
label_end_92:			# LN: 104 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 104 | 
cline_104_1:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer)			# LN: 113 | 
	i1 = (0) + (_sampleBuffer)			# LN: 113 | 
	call (_processing)			# LN: 113 | 
cline_113_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 115 | 
	a0 = xmem[i0]			# LN: 115 | 
	uhalfword(a1) = (0x1f4)			# LN: 115 | 
	call (__mod)			# LN: 115 | 
	a0 & a0			# LN: 115 | 
	if (a != 0) jmp (else_2)			# LN: 115 | 
cline_115_0:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_iNumSamples + 0]			# LN: 116 | 
	uhalfword(a1) = (0x10)			# LN: 116 | 
	i2 = (0) + (_string_const_2)			# LN: 116 | 
	call (__div)			# LN: 116 | 
	i1 = i7 - (0x3)			# LN: 116 | 
	a0 = xmem[i1]; a1 =+ a0			# LN: 116, 116 | 
	i0 = i2			# LN: 116 | 
	call (_printf)			# LN: 116 | 
	jmp (endif_2)			# LN: 116 | 
cline_116_0:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 119 | 
	a0 = 0			# LN: 119 | 
	xmem[i0] = a0h			# LN: 119 | 
	do (0x10), label_end_93			# LN: 119 | 
cline_119_0:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 121 | 
	a0 = 0			# LN: 121 | 
	xmem[i0] = a0h			# LN: 121 | 
for_5:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 121 | 
	a0 = xmem[i0]			# LN: 121 | 
	a1 = xmem[_nChannelsOut + 0]			# LN: 121 | 
	a0 - a1			# LN: 121 | 
	if (a >= 0) jmp (for_end_5)			# LN: 121 | 
cline_121_0:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 123 | 
	xmem[_channel + 0] = a0h			# LN: 123 | 
cline_123_0:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
switch_1:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 124 | 
	a0 & a0			# LN: 124 | 
	if (a == 0) jmp (case_4)			# LN: 124 | 
	a0 = xmem[_mode + 0]			# LN: 124 | 
	uhalfword(a1) = (0x1)			# LN: 124 | 
	a0 - a1			# LN: 124 | 
	if (a == 0) jmp (case_5)			# LN: 124 | 
	a0 = xmem[_mode + 0]			# LN: 124 | 
	uhalfword(a1) = (0x2)			# LN: 124 | 
	a0 - a1			# LN: 124 | 
	if (a == 0) jmp (case_6)			# LN: 124 | 
	a0 = xmem[_mode + 0]			# LN: 124 | 
	uhalfword(a1) = (0x3)			# LN: 124 | 
	a0 - a1			# LN: 124 | 
	if (a == 0) jmp (case_7)			# LN: 124 | 
	jmp (default_1)			# LN: 124 | 
cline_124_0:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
case_4:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 127 | 
	a0 = xmem[i0]			# LN: 127 | 
	a0 & a0			# LN: 127 | 
	if (a != 0) jmp (else_3)			# LN: 127 | 
	a0 = 0			# LN: 127 | 
	xmem[_channel + 0] = a0h			# LN: 127 | 
	jmp (endif_3)			# LN: 127 | 
cline_127_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 128 | 
	a0 = xmem[i0]			# LN: 128 | 
	uhalfword(a1) = (0x1)			# LN: 128 | 
	a0 - a1			# LN: 128 | 
	if (a != 0) jmp (else_4)			# LN: 128 | 
	uhalfword(a0) = (0x1)			# LN: 128 | 
	xmem[_channel + 0] = a0h			# LN: 128 | 
	jmp (endif_4)			# LN: 128 | 
cline_128_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 129 | 
	a0 = xmem[i0]			# LN: 129 | 
	uhalfword(a1) = (0x2)			# LN: 129 | 
	a0 - a1			# LN: 129 | 
	if (a != 0) jmp (else_5)			# LN: 129 | 
	uhalfword(a0) = (0x4)			# LN: 129 | 
	xmem[_channel + 0] = a0h			# LN: 129 | 
	jmp (endif_5)			# LN: 129 | 
cline_129_0:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 130 | 
	a0 = xmem[i0]			# LN: 130 | 
	uhalfword(a1) = (0x3)			# LN: 130 | 
	a0 - a1			# LN: 130 | 
	if (a != 0) jmp (else_6)			# LN: 130 | 
	uhalfword(a0) = (0x5)			# LN: 130 | 
	xmem[_channel + 0] = a0h			# LN: 130 | 
	jmp (endif_6)			# LN: 130 | 
cline_130_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
endif_6:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 131 | 
cline_131_0:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
case_5:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 133 | 
	a0 = xmem[i0]			# LN: 133 | 
	a0 & a0			# LN: 133 | 
	if (a != 0) jmp (else_7)			# LN: 133 | 
	a0 = 0			# LN: 133 | 
	xmem[_channel + 0] = a0h			# LN: 133 | 
	jmp (endif_7)			# LN: 133 | 
cline_133_0:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
endif_7:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 134 | 
	a0 = xmem[i0]			# LN: 134 | 
	uhalfword(a1) = (0x1)			# LN: 134 | 
	a0 - a1			# LN: 134 | 
	if (a != 0) jmp (else_8)			# LN: 134 | 
	uhalfword(a0) = (0x1)			# LN: 134 | 
	xmem[_channel + 0] = a0h			# LN: 134 | 
	jmp (endif_8)			# LN: 134 | 
cline_134_0:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
endif_8:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 135 | 
	a0 = xmem[i0]			# LN: 135 | 
	uhalfword(a1) = (0x2)			# LN: 135 | 
	a0 - a1			# LN: 135 | 
	if (a != 0) jmp (else_9)			# LN: 135 | 
	uhalfword(a0) = (0x3)			# LN: 135 | 
	xmem[_channel + 0] = a0h			# LN: 135 | 
	jmp (endif_9)			# LN: 135 | 
cline_135_0:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
endif_9:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 136 | 
	a0 = xmem[i0]			# LN: 136 | 
	uhalfword(a1) = (0x3)			# LN: 136 | 
	a0 - a1			# LN: 136 | 
	if (a != 0) jmp (else_10)			# LN: 136 | 
	uhalfword(a0) = (0x4)			# LN: 136 | 
	xmem[_channel + 0] = a0h			# LN: 136 | 
	jmp (endif_10)			# LN: 136 | 
cline_136_0:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
endif_10:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
else_10:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 137 | 
	a0 = xmem[i0]			# LN: 137 | 
	uhalfword(a1) = (0x4)			# LN: 137 | 
	a0 - a1			# LN: 137 | 
	if (a != 0) jmp (else_11)			# LN: 137 | 
	uhalfword(a0) = (0x5)			# LN: 137 | 
	xmem[_channel + 0] = a0h			# LN: 137 | 
	jmp (endif_11)			# LN: 137 | 
cline_137_0:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
endif_11:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
else_11:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 138 | 
cline_138_0:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
case_6:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 140 | 
	a0 = xmem[i0]			# LN: 140 | 
	a0 & a0			# LN: 140 | 
	if (a != 0) jmp (else_12)			# LN: 140 | 
	a0 = 0			# LN: 140 | 
	xmem[_channel + 0] = a0h			# LN: 140 | 
	jmp (endif_12)			# LN: 140 | 
cline_140_0:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
endif_12:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
else_12:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 141 | 
	a0 = xmem[i0]			# LN: 141 | 
	uhalfword(a1) = (0x1)			# LN: 141 | 
	a0 - a1			# LN: 141 | 
	if (a != 0) jmp (else_13)			# LN: 141 | 
	uhalfword(a0) = (0x1)			# LN: 141 | 
	xmem[_channel + 0] = a0h			# LN: 141 | 
	jmp (endif_13)			# LN: 141 | 
cline_141_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
endif_13:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
else_13:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 142 | 
	a0 = xmem[i0]			# LN: 142 | 
	uhalfword(a1) = (0x2)			# LN: 142 | 
	a0 - a1			# LN: 142 | 
	if (a != 0) jmp (else_14)			# LN: 142 | 
	uhalfword(a0) = (0x2)			# LN: 142 | 
	xmem[_channel + 0] = a0h			# LN: 142 | 
	jmp (endif_14)			# LN: 142 | 
cline_142_0:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
endif_14:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
else_14:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 143 | 
	a0 = xmem[i0]			# LN: 143 | 
	uhalfword(a1) = (0x3)			# LN: 143 | 
	a0 - a1			# LN: 143 | 
	if (a != 0) jmp (else_15)			# LN: 143 | 
	uhalfword(a0) = (0x4)			# LN: 143 | 
	xmem[_channel + 0] = a0h			# LN: 143 | 
	jmp (endif_15)			# LN: 143 | 
cline_143_0:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
endif_15:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
else_15:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 144 | 
	a0 = xmem[i0]			# LN: 144 | 
	uhalfword(a1) = (0x4)			# LN: 144 | 
	a0 - a1			# LN: 144 | 
	if (a != 0) jmp (else_16)			# LN: 144 | 
	uhalfword(a0) = (0x5)			# LN: 144 | 
	xmem[_channel + 0] = a0h			# LN: 144 | 
	jmp (endif_16)			# LN: 144 | 
cline_144_0:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
endif_16:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
else_16:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 145 | 
cline_145_0:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
case_7:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 147 | 
	a0 = xmem[i0]			# LN: 147 | 
	a0 & a0			# LN: 147 | 
	if (a != 0) jmp (else_17)			# LN: 147 | 
	a0 = 0			# LN: 147 | 
	xmem[_channel + 0] = a0h			# LN: 147 | 
	jmp (endif_17)			# LN: 147 | 
cline_147_0:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
endif_17:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
else_17:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 148 | 
	a0 = xmem[i0]			# LN: 148 | 
	uhalfword(a1) = (0x1)			# LN: 148 | 
	a0 - a1			# LN: 148 | 
	if (a != 0) jmp (else_18)			# LN: 148 | 
	uhalfword(a0) = (0x1)			# LN: 148 | 
	xmem[_channel + 0] = a0h			# LN: 148 | 
	jmp (endif_18)			# LN: 148 | 
cline_148_0:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
endif_18:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
else_18:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 149 | 
	a0 = xmem[i0]			# LN: 149 | 
	uhalfword(a1) = (0x2)			# LN: 149 | 
	a0 - a1			# LN: 149 | 
	if (a != 0) jmp (else_19)			# LN: 149 | 
	uhalfword(a0) = (0x2)			# LN: 149 | 
	xmem[_channel + 0] = a0h			# LN: 149 | 
	jmp (endif_19)			# LN: 149 | 
cline_149_0:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
endif_19:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
else_19:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 150 | 
	a0 = xmem[i0]			# LN: 150 | 
	uhalfword(a1) = (0x3)			# LN: 150 | 
	a0 - a1			# LN: 150 | 
	if (a != 0) jmp (else_20)			# LN: 150 | 
	uhalfword(a0) = (0x3)			# LN: 150 | 
	xmem[_channel + 0] = a0h			# LN: 150 | 
	jmp (endif_20)			# LN: 150 | 
cline_150_0:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
endif_20:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
else_20:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 151 | 
	a0 = xmem[i0]			# LN: 151 | 
	uhalfword(a1) = (0x4)			# LN: 151 | 
	a0 - a1			# LN: 151 | 
	if (a != 0) jmp (else_21)			# LN: 151 | 
	uhalfword(a0) = (0x4)			# LN: 151 | 
	xmem[_channel + 0] = a0h			# LN: 151 | 
	jmp (endif_21)			# LN: 151 | 
cline_151_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
endif_21:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
else_21:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 152 | 
	a0 = xmem[i0]			# LN: 152 | 
	uhalfword(a1) = (0x5)			# LN: 152 | 
	a0 - a1			# LN: 152 | 
	if (a != 0) jmp (else_22)			# LN: 152 | 
	uhalfword(a0) = (0x5)			# LN: 152 | 
	xmem[_channel + 0] = a0h			# LN: 152 | 
	jmp (endif_22)			# LN: 152 | 
cline_152_0:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
endif_22:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
else_22:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 153 | 
cline_153_0:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
default_1:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 155 | 
cline_155_0:			/* LN: 157 | CYCLE: 0 | RULES: () */ 
switch_end_1:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_channel + 0]			# LN: 157 | 
	a0 = a0 << 4			# LN: 157 | 
	i0 = a0			# LN: 157 | 
	i1 = i7 - (0x4)			# LN: 157 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 157 | 
	a0 = xmem[i1]			# LN: 157 | 
	a1 = i0			# LN: 157 | 
	a0 = a1 + a0			# LN: 157 | 
	AnyReg(i0, a0h)			# LN: 157 | 
	i1 = i7 - (0x6)			# LN: 157 | 
	a0 = xmem[i0]			# LN: 157 | 
	xmem[i1] = a0h			# LN: 157 | 
cline_157_0:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_wav_out + 0]			# LN: 158 | 
	AnyReg(i0, a0h)			# LN: 158 | 
	i1 = i7 - (0x6)			# LN: 158 | 
	a0 = xmem[i1]			# LN: 158 | 
	call (_cl_wavwrite_sendsample)			# LN: 158 | 
cline_158_0:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 121 | 
	a0 = xmem[i0]			# LN: 121 | 
	uhalfword(a1) = (0x1)			# LN: 121 | 
	a0 = a0 + a1			# LN: 121 | 
	i0 = i7 - (0x5)			# LN: 121 | 
	xmem[i0] = a0h			# LN: 121 | 
	jmp (for_5)			# LN: 121 | 
cline_121_1:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 119 | 
	a0 = xmem[i0]			# LN: 119 | 
	uhalfword(a1) = (0x1)			# LN: 119 | 
	a0 = a0 + a1			# LN: 119 | 
	i0 = i7 - (0x4)			# LN: 119 | 
label_end_93:			# LN: 119 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 119 | 
cline_119_1:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 102 | 
	a0 = xmem[i0]			# LN: 102 | 
	uhalfword(a1) = (0x1)			# LN: 102 | 
	a0 = a0 + a1			# LN: 102 | 
	i0 = i7 - (0x3)			# LN: 102 | 
	xmem[i0] = a0h			# LN: 102 | 
	jmp (for_1)			# LN: 102 | 
cline_102_1:			/* LN: 166 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_wav_in + 0]			# LN: 166 | 
	call (_cl_wavread_close)			# LN: 166 | 
cline_166_0:			/* LN: 167 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_wav_out + 0]			# LN: 167 | 
	AnyReg(i0, a0h)			# LN: 167 | 
	call (_cl_wavwrite_close)			# LN: 167 | 
cline_167_0:			/* LN: 170 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 170 | 
	jmp (__epilogue_240)			# LN: 170 | 
cline_170_0:			/* LN: 171 | CYCLE: 0 | RULES: () */ 
__epilogue_240:			/* LN: 171 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x6)			# LN: 171 | 
	i7 -= 1			# LN: 171 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 171, 171 | 
	ret			# LN: 171 | 
