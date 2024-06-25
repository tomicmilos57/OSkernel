#ifndef memory_hpp
#define memory_hpp
#include "../lib/hw.h"
// K1 Mart 2024


void initmem();

int alloc(int size);

void* malloc(int size);

int free(void* adr);
#endif