#include "../h/memory.hpp"
int NumOfBlocks; 
int *memMap;     
uint64 actualStart;
void initmem()
{
    NumOfBlocks = ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR) / MEM_BLOCK_SIZE;
    actualStart = ((uint64)HEAP_START_ADDR + NumOfBlocks * sizeof(int));
    memMap = (int *)HEAP_START_ADDR;
    for (int i = 0; i < NumOfBlocks; i++)
        memMap[i] = 0;
    memMap[0] = NumOfBlocks;
}
int abs(int x) { return x < 0 ? -x : x; }
int nots(int volatile x) { return -x;}
int alloc(int size)
{
    size = size / MEM_BLOCK_SIZE + ((size % MEM_BLOCK_SIZE != 0) ? 1 : 0);
    if (size <= 0 || size > NumOfBlocks)
        return -1; 
    for (int i = 0; i < NumOfBlocks; i += abs(memMap[i]))
    {
        if (memMap[i] >= size)
        {
            if (memMap[i] > size)
                memMap[i + size] = memMap[i] - size;
            memMap[i] = size;
            memMap[i] = nots(memMap[i]);
            return i;
        };
    }
    return -1; 
}
void *malloc(int size)
{
    int index = alloc(size);
    if (index == -1)
        return nullptr;
    return (void *)(actualStart + index * (uint64)MEM_BLOCK_SIZE);
}

int free(void* adr){
    int index = ((uint64)adr - actualStart) / MEM_BLOCK_SIZE;
    if(memMap[index] >= 0) return -1;
    memMap[index] = abs(memMap[index]);
    int i;
    for (i = index - 1; i > 0; i--)
    {
        if(memMap[i] != 0)break;
    } 
    
    if(memMap[i] > 0) {
        memMap[i] += abs(memMap[index]);
        memMap[index] = 0;
    }
    else if(memMap[i] < 0) i = index;
    int nextindex = i + memMap[i];

    if(memMap[nextindex] > 0){
        memMap[i] += memMap[nextindex];
        memMap[nextindex] = 0;
    }
    return 0;
}