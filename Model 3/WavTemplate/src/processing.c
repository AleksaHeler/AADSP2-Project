#include "processing.h"

// L   ->  X mem
// R   ->  Y mem
// C   ->  X mem
// LFE ->  Y mem
__memX fract* p_L_channel_in;
__memX fract* p_R_channel_in;

__memX fract* p_L_channel_out;
__memX fract* p_R_channel_out;
__memX fract* p_LS_channel_out;
__memX fract* p_RS_channel_out;
__memX fract* p_C_channel_out;
__memX fract* p_LFE_channel_out;

__memX fract input_L_with_stage_two_gain = 0;
__memX fract input_R_with_stage_two_gain = 0;

void initialize_processing(fract _gain, int _mode){
	gain = _gain;
	mode = _mode;
}

// LFE and RS are null
void processing(__memX fract input[][BLOCK_SIZE], __memX fract output[][BLOCK_SIZE]){
	int i;
	unsigned long long start, end, total_cycles;

	start = cl_get_cycle_count();

	p_L_channel_in = input[L_CHANNEL];
	p_R_channel_in = input[R_CHANNEL];

	p_L_channel_out = output[L_CHANNEL];
	p_R_channel_out = output[R_CHANNEL];
	p_LS_channel_out = output[LS_CHANNEL];
	p_RS_channel_out = output[RS_CHANNEL];
	p_C_channel_out = output[C_CHANNEL];
	p_LFE_channel_out = output[LFE_CHANNEL];

	for (i = 0; i < BLOCK_SIZE; i++)
	{
		// L, R, LS, RS are always included (LS and RS are inverted)
		*p_L_channel_out = *p_L_channel_in++ * gain;
		*p_LS_channel_out++ = -*p_L_channel_out;
		*p_R_channel_out = *p_R_channel_in++ * gain;
		*p_RS_channel_out++ = -*p_R_channel_out;

		// Calculate stage two gain for center channel (-2dB)
		input_L_with_stage_two_gain = *p_L_channel_out++ * 0.79432823472r;
		input_R_with_stage_two_gain = *p_R_channel_out++ * 0.79432823472r;

		// If C channel is included
		if (mode == OM_3_2_0 || mode == OM_3_2_1)
		{
			// Central channel is L+R
			*p_C_channel_out++ = input_L_with_stage_two_gain + input_R_with_stage_two_gain;
		}

		// If LFE is included
		if (mode == OM_2_2_1 || mode == OM_3_2_1)
		{
			*p_LFE_channel_out = input_R_with_stage_two_gain;

			// Apply distorsion to LFE channel signal
			if (*p_LFE_channel_out > distorsion_threshold_1)
			{
				if (*p_LFE_channel_out > distorsion_threshold_2) // positive clipping
				{
					*p_LFE_channel_out = 1;
				}

				else // soft knee (positive)
				{
					*p_LFE_channel_out = -0.08333333r + *p_LFE_channel_out - 0.75r * (*p_LFE_channel_out * *p_LFE_channel_out);
					*p_LFE_channel_out = *p_LFE_channel_out << 2;
				}
			}
			else
			{
				if (*p_LFE_channel_out < -distorsion_threshold_1)
				{
					if (*p_LFE_channel_out < -distorsion_threshold_2) // negative clipping
					{
						*p_LFE_channel_out = -1;
					}

					else // soft knee (negative)
					{
						*p_LFE_channel_out = 0.08333333r + *p_LFE_channel_out + 0.75r * (*p_LFE_channel_out * *p_LFE_channel_out);
						*p_LFE_channel_out = *p_LFE_channel_out << 2;
					}
				}

				else // linear region (-1/3..1/3)
				{
					*p_LFE_channel_out = *p_LFE_channel_out << 1; // multiply by two
				}
			}

			*p_LFE_channel_out++ = *p_LFE_channel_out >> 1; // divide all by 2 to compensate for extra 6 dB gain boost
		}
	}

	end = cl_get_cycle_count();
	total_cycles = end - start;
	printf("Processing cycles: %llu \n", total_cycles);
}
