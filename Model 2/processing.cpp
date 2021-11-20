#include "processing.h"


const DSPfract distorsion_threshold_1 = fract(0.05);	// Original: fract(0.33333);
const DSPfract distorsion_threshold_2 = fract(0.1);		// Original: fract(0.66667);
const DSPfract two_eights = FRACT_NUM(0.25);
const DSPfract three_eights = FRACT_NUM(0.375);

const DSPfract stage_two_gain = fract(pow(10.0, -2.0 / 20.0));	// -2dB for C and LFE channel
DSPfract input_L = fract(0);
DSPfract input_R = fract(0);
DSPfract input_L_with_stage_two_gain = fract(0);
DSPfract input_R_with_stage_two_gain = fract(0);

DSPfract processing_gain = fract(1);
DSPint processing_mode = OM_2_2_0;

void initialize_processing(DSPfract gain, DSPint mode)
{
	processing_gain = gain;
	processing_mode = mode;
}


void processing(DSPfract input[][BLOCK_SIZE], DSPfract output[][BLOCK_SIZE])
{

	DSPfract* p_L_channel_in = input[L_CHANNEL];
	DSPfract* p_R_channel_in = input[R_CHANNEL];

	DSPfract* p_L_channel_out = output[L_CHANNEL];
	DSPfract* p_R_channel_out = output[R_CHANNEL];
	DSPfract* p_LS_channel_out = output[LS_CHANNEL];
	DSPfract* p_RS_channel_out = output[RS_CHANNEL];
	DSPfract* p_C_channel_out = output[C_CHANNEL];
	DSPfract* p_LFE_channel_out = output[LFE_CHANNEL];

	DSPfract temp = FRACT_NUM(0.0);

	// calculate L and R after gain and apply it to all channels
	for (DSPint i = 0; i < BLOCK_SIZE; i++)
	{
		input_L = *p_L_channel_in;
		input_R = *p_R_channel_in;

		// L, R, LS, RS are always included (LS and RS are inverted)
		*p_L_channel_out = input_L * processing_gain;
		*p_LS_channel_out = -*p_L_channel_out;
		*p_R_channel_out = input_R * processing_gain;
		*p_RS_channel_out = -*p_R_channel_out;

		// Calculate stage two gain for center channel (-2dB)
		DSPfract L_channel_out = *p_L_channel_out;
		DSPfract R_channel_out = *p_R_channel_out;
		input_L_with_stage_two_gain = L_channel_out * stage_two_gain;
		input_R_with_stage_two_gain = R_channel_out * stage_two_gain;

		// If C channel is included
		if (processing_mode == OM_3_2_0 || processing_mode == OM_3_2_1)
		{
			// Central channel is L+R
			*p_C_channel_out = input_L_with_stage_two_gain + input_R_with_stage_two_gain;
		}

		// If LFE is included
		if (processing_mode == OM_2_2_1 || processing_mode == OM_3_2_1)
		{
			DSPfract LFE_channel_out = input_R_with_stage_two_gain;

			// Apply distorsion to LFE channel signal
			if (LFE_channel_out > distorsion_threshold_1)
			{
				if (LFE_channel_out > distorsion_threshold_2) // positive clipping
				{
					LFE_channel_out = fract(1.0);
				}

				else // soft knee (positive)
				{
					DSPfract in = LFE_channel_out;
					DSPfract inSq = in * in;
					LFE_channel_out = FRACT_NUM(-0.08333333f) + in - FRACT_NUM(0.75f) * inSq;
					LFE_channel_out = LFE_channel_out << 2;
				}
			}
			else
			{
				DSPfract temp = distorsion_threshold_1;
				temp = -temp;
				if (LFE_channel_out < temp)
				{
					DSPfract temp = distorsion_threshold_2;
					temp = -temp;
					if (LFE_channel_out < temp) // negative clipping
					{
						LFE_channel_out = fract(-1.0);
					}

					else // soft knee (negative)
					{
						DSPfract in = LFE_channel_out;
						DSPfract inSq = in * in;
						LFE_channel_out = FRACT_NUM(0.08333333f) + in + FRACT_NUM(0.75f) * inSq;
						LFE_channel_out = LFE_channel_out << 2;
					}
				}

				else // linear region (-1/3..1/3)
				{
					LFE_channel_out = LFE_channel_out << 1; // multiply by two
				}
			}

			*p_LFE_channel_out = LFE_channel_out >> 1; // divide all by 2 to compensate for extra 6 dB gain boost
		}

		// Increment all the I/O pointers
		p_L_channel_in++;
		p_R_channel_in++;
		p_L_channel_out++;
		p_R_channel_out++;
		p_C_channel_out++;
		p_LFE_channel_out++;
		p_LS_channel_out++;
		p_RS_channel_out++;
	} // End of for loop
}