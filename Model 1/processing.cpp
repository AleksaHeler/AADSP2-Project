#include "processing.h"


const float distorsion_threshold_1 = 1.0f / 8.0f;		// Original: 1/3
const float distorsion_threshold_2 = 3.0f / 8.0f;		// Original: 2/3

const double stage_two_gain = pow(10.0, -2.0 / 20.0);	// -2dB for C and LFE channel
double input_L_with_stage_two_gain = 0;
double input_R_with_stage_two_gain = 0;

double processing_gain = 1;
int processing_mode = OM_2_2_0;

void initialize_processing(double gain, int mode)
{
	processing_gain = gain;
	processing_mode = mode;
}


void processing(double input[][BLOCK_SIZE], double output[][BLOCK_SIZE])
{
	double* p_L_channel_in = input[L_CHANNEL];
	double* p_R_channel_in = input[R_CHANNEL];

	double* p_L_channel_out = output[L_CHANNEL];
	double* p_R_channel_out = output[R_CHANNEL];
	double* p_LS_channel_out = output[LS_CHANNEL];
	double* p_RS_channel_out = output[RS_CHANNEL];
	double* p_C_channel_out = output[C_CHANNEL];
	double* p_LFE_channel_out = output[LFE_CHANNEL];

	// calculate L and R after gain and apply it to all channels
	for (int i = 0; i < BLOCK_SIZE; i++)
	{
		// L, R, LS, RS are always included (LS and RS are inverted)
		*p_L_channel_out	= *p_L_channel_in++ * processing_gain;
		*p_LS_channel_out++	= -*p_L_channel_out;
		*p_R_channel_out	= *p_R_channel_in++ * processing_gain;
		*p_RS_channel_out++	= -*p_R_channel_out;

		// Calculate stage two gain for center channel (-2dB)
		input_L_with_stage_two_gain = *p_L_channel_out++ * stage_two_gain;
		input_R_with_stage_two_gain = *p_R_channel_out++ * stage_two_gain;

		// If C is included
		if (processing_mode == OM_3_2_0 || processing_mode == OM_3_2_1)
		{
			// Central channel is L+R
			*p_C_channel_out++ = input_L_with_stage_two_gain + input_R_with_stage_two_gain;
		}
		
		// If LFE is included
		if (processing_mode == OM_2_2_1 || processing_mode == OM_3_2_1)
		{
			*p_LFE_channel_out = input_R_with_stage_two_gain;

			// Apply distorsion to LFE channel signal
			if (*p_LFE_channel_out > distorsion_threshold_1)
			{
				if (*p_LFE_channel_out > distorsion_threshold_2) // positive clipping
					*p_LFE_channel_out = 1.0f;

				else // soft knee (positive)
					*p_LFE_channel_out = (3.0f - (2.0f - 3.0f * *p_LFE_channel_out) * (2.0f - 3.0f * *p_LFE_channel_out)) / 3.0f;
			}

			else
			{
				if (*p_LFE_channel_out < -distorsion_threshold_1)
				{
					if (*p_LFE_channel_out < -distorsion_threshold_2) // negative clipping
						*p_LFE_channel_out = -1.0f;

					else // soft knee (negative)
						*p_LFE_channel_out = -(3.0f - (2.0f + 3.0f * *p_LFE_channel_out) * (2.0f + 3.0f * *p_LFE_channel_out)) / 3.0f;
				}

				else // linear region (-1/3..1/3)
					*p_LFE_channel_out *= 2.0f;
			}

			*p_LFE_channel_out++ /= 2.0f; // divide all by 2 to compensate for extra 6 dB gain boost
		}
	}
}