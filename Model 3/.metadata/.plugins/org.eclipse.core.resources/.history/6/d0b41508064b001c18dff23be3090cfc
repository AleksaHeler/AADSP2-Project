#ifndef PROCESSING_H
#define PROCESSING_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>


#include "common.h"

__memX static int mode;
__memX static fract gain;

static __memX fract distorsion_threshold_1 = 0.05;
static __memX fract distorsion_threshold_2 = 0.1;

void initialize_processing(fract _gain, int _mode);
void processing(__memX fract input[][BLOCK_SIZE], __memX fract output[][BLOCK_SIZE]);


#endif // PROCESSING_H
