#ifndef PROCESSING_H
#define PROCESSING_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>


#include "common.h"


void processing(fract input[][BLOCK_SIZE], fract output[][BLOCK_SIZE]);


#endif // PROCESSING_H