#include "processing.h"


float distorsion_threshold_1 = 1.0f / 3.0f;		// Original: 1/3
float distorsion_threshold_2 = 2.0f / 3.0f;		// Original: 2/3

const double stage_two_gain = pow(10.0, -2.0 / 20.0);	// -2dB for C and LFE channel


void processing(double input[][BLOCK_SIZE], double output[][BLOCK_SIZE], double gain, int mode)
{

	// calculate L and R after gain and apply it to all channels
	for (int i = 0; i < BLOCK_SIZE; i++)
	{
		double input_L_with_gain = input[L_CHANNEL][i] * gain;
		double input_R_with_gain = input[R_CHANNEL][i] * gain;
		double input_L_with_stage_two_gain = input_L_with_gain * stage_two_gain;
		double input_R_with_stage_two_gain = input_R_with_gain * stage_two_gain;

		// L, R, LS, RS are always included
		output[L_CHANNEL][i] = input_L_with_gain;
		output[LS_CHANNEL][i] = -input_L_with_gain;		// LS and RS are inverted
		output[R_CHANNEL][i] = input_R_with_gain;
		output[RS_CHANNEL][i] = -input_R_with_gain;

		// If C is included
		if (mode == OM_3_2_0 || mode == OM_3_2_1)
		{
			// Central channel is L+R
			output[C_CHANNEL][i] = input_L_with_stage_two_gain + input_R_with_stage_two_gain;
		}

		// If LFE is included
		if (mode == OM_2_2_1 || mode == OM_3_2_1)
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