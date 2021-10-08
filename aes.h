#include <stdint.h>

typedef struct{
   int16_t x,y,w,h;
} GRECT;

typedef struct{
	int16_t    ob_next;   // The next object
	int16_t    ob_head;   // First child
	int16_t    ob_tail;   // Last child
	uint16_t   ob_type;   // Object type
	uint16_t   ob_flags;  // Manipulation flags
	uint16_t   ob_state;  // Object status
	void       *ob_spec;  // More under object type
	int16_t    ob_x;      // X-coordinate of the object
	int16_t    ob_y;      // Y-coordinate of the object
	int16_t    ob_width;  // Width of the object
	int16_t    ob_height; // Height of the object
} OBJECT;

int16_t form_do(OBJECT*, int16_t);

extern void crys_if(int16_t);
extern int16_t form_dial(int16_t,int16_t,int16_t,int16_t,int16_t,int16_t,int16_t,int16_t,int16_t);
extern int16_t objc_draw(OBJECT*,int16_t,int16_t,int16_t,int16_t,int16_t,int16_t);
extern int16_t rsrc_gaddr(int16_t, int16_t, void*);

extern void* addr_in[];
extern int16_t int_out[];

static int16_t form_center(OBJECT *fo_ctree, GRECT* fo_c){
   addr_in[0] = fo_ctree;
   crys_if (54);
   fo_c->x = int_out[1];
   fo_c->y = int_out[2];
   fo_c->w = int_out[3];
   fo_c->h = int_out[4];
   return (int_out[0]);
}
