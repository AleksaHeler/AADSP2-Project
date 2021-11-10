#ifndef PROCESSING_H
#define PROCESSING_H


#include <math.h>
#include "common.h"


void initialize_processing(double gain, int mode);
void processing(double input[][BLOCK_SIZE], double output[][BLOCK_SIZE]);


#endif // PROCESSING_H