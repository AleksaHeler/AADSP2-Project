#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include <math.h>


#include "common.h"
#include "processing.h"


__memX fract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

__memX WAVREAD_HANDLE *wav_in;
__memY WAVWRITE_HANDLE *wav_out;

__memX char WavInputName[256];
__memY char WavOutputName[256];

__memX int nChannelsIn;
__memX int nChannelsOut;
__memX int bitsPerSample;
__memX int sampleRate;
__memX int iNumSamples;
__memX int i;
__memX fract gain = 0.501187r;
__memX int mode = OM_3_2_1;
__memX int channel = 0;
 
int main(int argc, char *argv[])
{
	// Init channel buffers
	for(i=0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i],0,BLOCK_SIZE);
    

	// Open input wav file
	//-------------------------------------------------
	strcpy(WavInputName,argv[0]);
	wav_in = cl_wavread_open(WavInputName);
	if(wav_in == NULL)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	

	// Read input wav header
	//-------------------------------------------------
	nChannelsIn = cl_wavread_getnchannels(wav_in);
    bitsPerSample = cl_wavread_bits_per_sample(wav_in);
    sampleRate = cl_wavread_frame_rate(wav_in);
    iNumSamples =  cl_wavread_number_of_frames(wav_in);
	//-------------------------------------------------


	// Calculate output channel number
	//-------------------------------------------------
    initialize_processing(gain, mode);
	switch(mode){
	case OM_2_2_0:
		nChannelsOut = 4;
		break;
	case OM_2_2_1:
		nChannelsOut = 5;
		break;
	case OM_3_2_0:
		nChannelsOut = 5;
		break;
	case OM_3_2_1:
		nChannelsOut = 6;
		break;
	default:
		nChannelsOut = 2;
		break;
	}
	//-------------------------------------------------
	

	// Open output wav file
	//-------------------------------------------------
	strcpy(WavOutputName,argv[1]);
	wav_out = cl_wavwrite_open(WavOutputName, bitsPerSample, nChannelsOut, sampleRate);
	if(!wav_out)
	{
		printf("Error: Could not open wavefile.\n");
		return -1;
	}
	//-------------------------------------------------

	// Processing loop
	//-------------------------------------------------	
    {
		int i;
		int j;
		int k;
		int sample;
		
		// exact file length should be handled correctly...
		for(i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<nChannelsIn; k++)
				{	
					sample = cl_wavread_recvsample(wav_in);
        			sampleBuffer[k][j] = rbits(sample);
				}
			}

			processing(sampleBuffer, sampleBuffer);

			if(i % 500 == 0)
				printf("%d / %d iterations\n", i ,iNumSamples/BLOCK_SIZE);


			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<nChannelsOut; k++)
				{	
					channel = 0;
					switch (mode)
					{
					case OM_2_2_0:
						if (k == 0) channel = L_CHANNEL;
						if (k == 1) channel = R_CHANNEL;
						if (k == 2) channel = LS_CHANNEL;
						if (k == 3) channel = RS_CHANNEL;
						break;
					case OM_2_2_1:
						if (k == 0) channel = L_CHANNEL;
						if (k == 1) channel = R_CHANNEL;
						if (k == 2) channel = LFE_CHANNEL;
						if (k == 3) channel = LS_CHANNEL;
						if (k == 4) channel = RS_CHANNEL;
						break;
					case OM_3_2_0:
						if (k == 0) channel = L_CHANNEL;
						if (k == 1) channel = R_CHANNEL;
						if (k == 2) channel = C_CHANNEL;
						if (k == 3) channel = LS_CHANNEL;
						if (k == 4) channel = RS_CHANNEL;
						break;
					case OM_3_2_1:
						if (k == 0) channel = L_CHANNEL;
						if (k == 1) channel = R_CHANNEL;
						if (k == 2) channel = C_CHANNEL;
						if (k == 3) channel = LFE_CHANNEL;
						if (k == 4) channel = LS_CHANNEL;
						if (k == 5) channel = RS_CHANNEL;
						break;
					default:
						break;
					}
					sample = bitsr(sampleBuffer[channel][j]);
					cl_wavwrite_sendsample(wav_out, sample);
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
    cl_wavread_close(wav_in);
    cl_wavwrite_close(wav_out);
	//-------------------------------------------------	

    return 0;
 }
