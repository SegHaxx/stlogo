#include "logohax.h"

extern void* node_base;
void* nodes_minus4;
int16_t nodes_max;
int16_t node_bitmap_offset;

void nodes_alloc(void){
	/*
		Date: 19 Jan 90 18:37:06 GMT
		From: Derek Mui
		Subject: reserving memory
		[...]
		The fsel_input() needs a minimum of 3K of memory in order for 
		it to come up. The more the files in the directories, the more
		the memory that it needs to allocate.
	*/
	size_t mem_free=get_free_mem();
	if(mem_free>0xC00) mem_free-=0xC00;

	// node pointers are 16 bit, indexing longwords
	size_t node_bytes_max=(0xFFFFL<<2);
	// plus bitmap
	node_bytes_max+=(node_bytes_max+31)/32;
	// cap to free memory
	size_t node_bytes=(mem_free>node_bytes_max)?node_bytes_max:mem_free;
	size_t node_bitmap_size=(node_bytes+31)/32;

	// for reference a 512k TOS 1.0 machine originally
	// allocated 0x44AF6 (0x444B6 in lowres)
	void* node_p = Malloc(node_bytes);
	nodes_minus4 = node_p-4;
	node_base = (void*)((size_t)(node_p + node_bitmap_size + 2) & -2);
	nodes_max = (node_p + node_bytes - node_base) >> 2;
	node_bitmap_offset = 32;
	return;
}
