
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "common.h"
#include "WAVheader.h"
#include "processing.h"


DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

// Command line arguments: [input filename] [output filename] [gain: 0 to -inf dB, defualt -4] [output mode: defualt 2_2_0] //
int main(int argc, char* argv[])
{
	// Check if right arguments were passed
	if (argc < 3 || argc > 5)
	{
		printf("Error: bad command line arguments given!\n");
		printf("Usage: \n");
		printf("  Project.exe [input filename] [output filename] [gain: defualt -4] [output mode: defualt 0]\n");
		printf("    - Gain: from 0 to -inf\n");
		printf("    - Output modes: 0) 2_2_0\n");
		printf("                    1) 2_2_1\n");
		printf("                    2) 3_2_0\n");
		printf("                    3) 3_2_1\n");
	}

	// Input/output wav files
	//-------------------------------------------------
	FILE* wav_in = NULL;
	FILE* wav_out = NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr, outputWAVhdr;
	//-------------------------------------------------

	// Parameters
	//-------------------------------------------------
	DSPfract gain_dB = -4;
	DSPfract gain = pow(10.0, gain_dB / 20.0);			// Convert dB to floating point
	DSPint mode = OM_2_2_0;
	DSPint num_of_channels = 4;
	//-------------------------------------------------
	
	// Getting values from command line and pass it to processing initializer
	//-------------------------------------------------
	if (argc >= 4)
	{
		gain_dB = strtod(argv[3], NULL);
		gain_dB = gain_dB > 0 ? 0 : gain_dB;
		gain = pow(10.0, gain_dB / 20.0);
	}
	if (argc == 5)
	{
		mode = atoi(argv[4]);
		if (mode < 0 || mode > 3) mode = 0;
		switch (mode)
		{
		case OM_2_2_0:
			num_of_channels = 4;
			break;
		case OM_2_2_1:
			num_of_channels = 5;
			break;
		case OM_3_2_0:
			num_of_channels = 5;
			break;
		case OM_3_2_1:
			num_of_channels = 6;
			break;
		default:
			break;
		}
	}
	initialize_processing(gain, mode);
	//-------------------------------------------------
	

	// Get gain and output mode from command line arguments
	//-------------------------------------------------
	strcpy(WavInputName, argv[1]);
	wav_in = OpenWavFileForRead(WavInputName, const_cast <char*>("rb"));
	strcpy(WavOutputName, argv[2]);
	wav_out = OpenWavFileForRead(WavOutputName, const_cast <char*>("wb"));
	//-------------------------------------------------
	

	// Init channel buffers
	for(DSPint i=0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i],0,BLOCK_SIZE);

	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName,argv[1]);
	wav_in = OpenWavFileForRead (WavInputName, const_cast <char*>("rb"));
	strcpy(WavOutputName,argv[2]);
	wav_out = OpenWavFileForRead (WavOutputName, const_cast <char*>("wb"));
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in,inputWAVhdr);
	//-------------------------------------------------
	
	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	outputWAVhdr.fmt.NumChannels = num_of_channels; // inputWAVhdr.fmt.NumChannels; // change number of channels

	DSPint oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size/inputWAVhdr.fmt.NumChannels;
	DSPint oneChannelByteRate = inputWAVhdr.fmt.ByteRate/inputWAVhdr.fmt.NumChannels;
	DSPint oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign/inputWAVhdr.fmt.NumChannels;
	
	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign*outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out, outputWAVhdr);


	// Processing loop
	//-------------------------------------------------	
	{
		DSPint sample;
		DSPint BytesPerSample = inputWAVhdr.fmt.BitsPerSample/8;
		const DSPfract SAMPLE_SCALE = -(DSPfract)(1 << 31);		//2^31
		DSPint iNumSamples = inputWAVhdr.data.SubChunk2Size/(inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample/8);
		
		// exact file length should be handled correctly...
		for(DSPint i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(DSPint j=0; j<BLOCK_SIZE; j++)
			{
				for(DSPint k=0; k<inputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				 // scale sample to 1.0/-1.0 range		
				}
			}

			processing(sampleBuffer, sampleBuffer);

			for(DSPint j=0; j<BLOCK_SIZE; j++)
			{
				for(DSPint k=0; k<outputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = sampleBuffer[k][j] * SAMPLE_SCALE ;	// crude, non-rounding 			
					sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
					fwrite(&sample, outputWAVhdr.fmt.BitsPerSample/8, 1, wav_out);		
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	

	return 0;
}