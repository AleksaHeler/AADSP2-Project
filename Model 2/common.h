#ifndef COMMON_H
#define COMMON_H


#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

// Index of channels
#define L_CHANNEL		0		// Front left
#define R_CHANNEL		1		// Front right
#define C_CHANNEL		2		// Front center
#define LFE_CHANNEL		3		// Subwoofer
#define LS_CHANNEL		4		// Back left
#define RS_CHANNEL		5		// Back right


// DSP type definitions
typedef short DSPshort;					// DSP integer
typedef unsigned short DSPushort;		// DSP unsigned integer
typedef int DSPint;						// native integer
typedef double DSPfract;				// DSP fixed-point fractional


enum OUTPUT_MODES
{
	OM_2_2_0 = 0,			// L, R, LS, RS
	OM_2_2_1 = 1,			// L, R, LS, RS, LFE
	OM_3_2_0 = 2,			// L, R, C, LS, RS
	OM_3_2_1 = 3			// L, R, C, LS, RS, LFE
};


#endif // COMMON_H