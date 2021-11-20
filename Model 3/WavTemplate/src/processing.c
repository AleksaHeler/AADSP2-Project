#include "processing.h"


void processing(fract input[][BLOCK_SIZE], fract output[][BLOCK_SIZE]){
	int i;

	for (i = 0; i < BLOCK_SIZE; i++)
	{
		output[L_CHANNEL][i] = input[L_CHANNEL][i] >> 2;
		output[R_CHANNEL][i] = input[L_CHANNEL][i] >> 2;
	}
}