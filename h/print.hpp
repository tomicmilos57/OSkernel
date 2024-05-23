#ifndef print_hpp
#define print_hpp
#include "../lib/hw.h"
// Vezbe 7
extern void SprintString(char const *string);
extern void SprintInteger(uint64 integer);
extern void SprintLine(char const *string, uint64 integer);

extern void UprintString(char const *string);
extern void UprintInteger(uint64 integer);
extern void UprintLine(char const *string, uint64 integer);
#endif