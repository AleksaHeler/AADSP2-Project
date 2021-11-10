#ifndef PROCESSING_H
#define PROCESSING_H


#include <math.h>
#include "common.h"


void processing(double input[][BLOCK_SIZE], double output[][BLOCK_SIZE], double gain, int mode);


#endif // PROCESSING_H