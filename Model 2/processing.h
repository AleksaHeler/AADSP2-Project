#ifndef PROCESSING_H
#define PROCESSING_H


#include "common.h"


void initialize_processing(DSPfract gain, DSPint mode);
void processing(DSPfract input[][BLOCK_SIZE], DSPfract output[][BLOCK_SIZE]);


#endif // PROCESSING_H