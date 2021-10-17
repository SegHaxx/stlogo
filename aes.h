#include <stdint.h>

typedef struct{
   int16_t x,y,w,h;
} GRECT;

typedef struct{
	int16_t	ob_next;   // The next object
	int16_t	ob_head;   // First child
	int16_t	ob_tail;   // Last child
	uint16_t	ob_type;   // Object type
	uint16_t	ob_flags;  // Manipulation flags
	uint16_t	ob_state;  // Object status
	void		*ob_spec;  // More under object type
	GRECT		ob;
} OBJECT;

typedef struct{
	int16_t *cb_pcontrol; // Pointer to control array
	int16_t *cb_pglobal;  // Pointer to global array
	int16_t *cb_pintin;   // Pointer to int_in array
	int16_t *cb_pintout;  // Pointer to int_out array
	int16_t *cb_padrin;   // Pointer to adr_in array
	int16_t *cb_padrout;  // Pointer to adr_out array
} AESPB;

extern AESPB* aespb;
extern void* addr_in[];
extern void* addr_out[];
extern int16_t int_in[];
extern int16_t int_out[];
extern int16_t control[];

static void aes(void){
	__asm__ __volatile__(
			"move.l #%0,d1\n\t"
			"move.w #200,d0\n\t"
			"trap #2\n\t"
			:: "g"(aespb)
			: "memory","cc");
}

static int16_t crys_if(
		int16_t opcode,
		int16_t num_int_in,
		int16_t num_int_out,
		int16_t num_addr_in)
{
	control[0]=opcode;
	control[1]=num_int_in;
	control[2]=num_int_out;
	control[3]=num_addr_in;
	aes();
	return(int_out[0]);
}

static int16_t objc_draw(
		OBJECT *ob_drtree,
		int16_t ob_drstart,
		int16_t ob_drdepth,
		int16_t ob_drxclip,
		int16_t ob_dryclip,
		int16_t ob_drwclip,
		int16_t ob_drhclip)
{
	int_in[0]  = ob_drstart;
	int_in[1]  = ob_drdepth;
	int_in[2]  = ob_drxclip;
	int_in[3]  = ob_dryclip;
	int_in[4]  = ob_drwclip;
	int_in[5]  = ob_drhclip;
	addr_in[0] = ob_drtree;
	return(crys_if(42,6,1,1));
}

static int16_t form_center(OBJECT *fo_ctree, GRECT* fo_c){
   addr_in[0] = fo_ctree;
   int16_t ret=crys_if(54,0,5,1);
   fo_c->x = int_out[1];
   fo_c->y = int_out[2];
   fo_c->w = int_out[3];
   fo_c->h = int_out[4];
   return(ret);
}

int16_t form_do(OBJECT* fo_dotree,int16_t fo_dostartob){
	int_in[0]=fo_dostartob;
	addr_in[0]=fo_dotree;
	return(crys_if(50,1,1,1));
}

static int16_t form_dial(
		int16_t fo_diflag,
		GRECT* fo_dilittl,
		GRECT* fo_dibig)
{
	int_in[0]  = fo_diflag;
	if(fo_dilittl){
		int_in[1]  = fo_dilittl->x;
		int_in[2]  = fo_dilittl->y;
		int_in[3]  = fo_dilittl->w;
		int_in[4]  = fo_dilittl->h;
	}
	int_in[5]  = fo_dibig->x;
	int_in[6]  = fo_dibig->y;
	int_in[7]  = fo_dibig->w;
	int_in[8]  = fo_dibig->h;
	return(crys_if(51,9,1,1));
}

static int16_t rsrc_gaddr(int16_t re_gtype,int16_t re_gindex,void* gaddr){
	int_in[0]=re_gtype;
	int_in[1]=re_gindex;
	//control[4]=1;
	int16_t ret=crys_if(112,2,1,0);
	//control[4]=0;
	*((void**)gaddr)=(void*)addr_out[0];
	return ret;
}
