	.public _processing
	.code_ovly



_processing:			/* LN: 4 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 4 | 
	i7 += 1			# LN: 4 | 
	i7 = i7 + (0x3)			# LN: 4 | 
	i4 = i7 - (0x1)			# LN: 4 | 
	xmem[i4] = i0			# LN: 4 | 
	i0 = i7 - (0x2)			# LN: 4 | 
	xmem[i0] = i1			# LN: 4 | 
cline_4_0:			/* LN: 7 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 7 | 
	a0 = 0			# LN: 7 | 
	xmem[i0] = a0h			# LN: 7 | 
	do (0x10), label_end_92			# LN: 7 | 
cline_7_0:			/* LN: 9 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 7 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 9 | 
	i0 = xmem[i0]			# LN: 9 | 
	i1 = i7 - (0x3)			# LN: 9 | 
	a0 = xmem[i1]			# LN: 9 | 
	a1 = i0			# LN: 9 | 
	i0 = i7 - (0x1)			# LN: 9 | 
	i0 = xmem[i0]			# LN: 9 | 
	i1 = i7 - (0x3)			# LN: 9 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 9, 9 | 
	a1 = i0			# LN: 9 | 
	a1 = a1 + b0			# LN: 9 | 
	AnyReg(i0, a1h)			# LN: 9 | 
	AnyReg(i1, a0h)			# LN: 9 | 
	a0 = xmem[i0]			# LN: 9 | 
	a0 = a0 >> 1			# LN: 9 | 
	a0 = a0 >> 1			# LN: 9 | 
	xmem[i1] = a0h			# LN: 9 | 
cline_9_0:			/* LN: 10 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 10 | 
	i0 = xmem[i0]			# LN: 10 | 
	i1 = i7 - (0x3)			# LN: 10 | 
	i0 = i0 + (0x10)			# LN: 10 | 
	a0 = xmem[i1]			# LN: 10 | 
	a1 = i0			# LN: 10 | 
	i0 = i7 - (0x1)			# LN: 10 | 
	i0 = xmem[i0]			# LN: 10 | 
	i1 = i7 - (0x3)			# LN: 10 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 10, 10 | 
	a1 = i0			# LN: 10 | 
	a1 = a1 + b0			# LN: 10 | 
	AnyReg(i0, a1h)			# LN: 10 | 
	AnyReg(i1, a0h)			# LN: 10 | 
	a0 = xmem[i0]			# LN: 10 | 
	a0 = a0 >> 1			# LN: 10 | 
	a0 = a0 >> 1			# LN: 10 | 
	xmem[i1] = a0h			# LN: 10 | 
cline_10_0:			/* LN: 7 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 11 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 7 | 
	a0 = xmem[i0]			# LN: 7 | 
	uhalfword(a1) = (0x1)			# LN: 7 | 
	a0 = a0 + a1			# LN: 7 | 
	i0 = i7 - (0x3)			# LN: 7 | 
label_end_92:			# LN: 7 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 7 | 
cline_7_1:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 7 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_236)			# LN: 12 | 
__epilogue_236:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x3)			# LN: 12 | 
	i7 -= 1			# LN: 12 | 
	ret			# LN: 12 | 
