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
	// calculate L and R after gain and apply it to all channels
	for (int i = 0; i < BLOCK_SIZE; i++)
	{
		// L, R, LS, RS are always included
		output[L_CHANNEL][i] = input[L_CHANNEL][i] * processing_gain;
		output[LS_CHANNEL][i] = -output[L_CHANNEL][i];						// LS and RS are inverted
		output[R_CHANNEL][i] = input[R_CHANNEL][i] * processing_gain;
		output[RS_CHANNEL][i] = -output[R_CHANNEL][i];

		// Calculate stage two gain for center channel (-2dB)
		input_L_with_stage_two_gain = output[L_CHANNEL][i] * stage_two_gain;
		input_R_with_stage_two_gain = output[R_CHANNEL][i] * stage_two_gain;

		// If C is included
		if (processing_mode == OM_3_2_0 || processing_mode == OM_3_2_1)
		{
			// Central channel is L+R
			output[C_CHANNEL][i] = input_L_with_stage_two_gain + input_R_with_stage_two_gain;
		}
		
		// If LFE is included
		if (processing_mode == OM_2_2_1 || processing_mode == OM_3_2_1)
		{
			output[LFE_CHANNEL][i] = input_R_with_stage_two_gain;

			// Apply distorsion to LFE channel signal
			if (output[LFE_CHANNEL][i] > distorsion_threshold_1)
			{
				if (output[LFE_CHANNEL][i] > distorsion_threshold_2) // positive clipping
					output[LFE_CHANNEL][i] = 1.0f;

				else // soft knee (positive)
					output[LFE_CHANNEL][i] = (3.0f - (2.0f - 3.0f * output[LFE_CHANNEL][i]) * (2.0f - 3.0f * output[LFE_CHANNEL][i])) / 3.0f;
			}

			else
			{
				if (output[LFE_CHANNEL][i] < -distorsion_threshold_1)
				{
					if (output[LFE_CHANNEL][i] < -distorsion_threshold_2) // negative clipping
						output[LFE_CHANNEL][i] = -1.0f;

					else // soft knee (negative)
						output[LFE_CHANNEL][i] = -(3.0f - (2.0f + 3.0f * output[LFE_CHANNEL][i]) * (2.0f + 3.0f * output[LFE_CHANNEL][i])) / 3.0f;
				}

				else // linear region (-1/3..1/3)
					output[LFE_CHANNEL][i] *= 2.0f;
			}

			output[LFE_CHANNEL][i] /= 2.0f; // divide all by 2 to compensate for extra 6 dB gain boost
		}
	}
}