#include <stdint.h>

typedef struct{
	int16_t    ob_next;   /* The next object               */
	int16_t    ob_head;   /* First child                   */
	int16_t    ob_tail;   /* Last child                    */
	uint16_t   ob_type;   /* Object type                   */
	uint16_t   ob_flags;  /* Manipulation flags            */
	uint16_t   ob_state;  /* Object status                 */
	void       *ob_spec;  /* More under object type        */
	int16_t    ob_x;      /* X-coordinate of the object    */
	int16_t    ob_y;      /* Y-coordinate of the object    */
	int16_t    ob_width;  /* Width of the object           */
	int16_t    ob_height; /* Height of the object          */
} OBJECT;

int16_t form_do(OBJECT*, int16_t);

extern int16_t form_dial(int16_t,int16_t,int16_t,int16_t,int16_t,int16_t,int16_t,int16_t,int16_t);
extern int16_t objc_draw(OBJECT*,int16_t,int16_t,int16_t,int16_t,int16_t,int16_t);
extern int16_t rsrc_gaddr(int16_t, int16_t, void*);

extern int16_t work_w, work_h;
extern int16_t cell_w;

OBJECT* dialog_about;
OBJECT* dialog_graphics_settings;
OBJECT* dialog_turtle_settings;
OBJECT* dialog_screen_settings;

extern void L45356(void);
extern void mouse_show(void);
extern void mouse_hide(void);

static char version[]="Sep 11 2021";
static char credit[]="Patched by Seg <seg@haxxed.com>";

OBJECT* rsrc_gaddr_tree(int16_t re_gindex){
	OBJECT* gaddr;
	rsrc_gaddr(0,re_gindex,&gaddr);
	return gaddr;
}

void dialog_init(void){
	dialog_graphics_settings=rsrc_gaddr_tree(1);
	dialog_turtle_settings=rsrc_gaddr_tree(2);
	dialog_screen_settings=rsrc_gaddr_tree(3);
	dialog_about=rsrc_gaddr_tree(4);
	// insert version strings and center
	dialog_about[7].ob_spec=credit;
	dialog_about[7].ob_x-=(sizeof(credit)-1)*cell_w/2;
	dialog_about[8].ob_spec=version;
	dialog_about[8].ob_x-=(sizeof(version)-1)*cell_w/2;
}

int16_t form_doer(int16_t(*handler)(OBJECT*,int16_t), OBJECT* object){
	int16_t fo_dibigw;
	int16_t fo_dibigh;
	int16_t fo_dilittly;
	int16_t fo_dilittlx;
	int16_t sVar2;
	int16_t uVar3;
	int16_t fo_dibigx;
	int16_t bVar4;

	L45356();
	if (handler == form_do){
		mouse_show();
	}else{
		mouse_hide();
	}
	fo_dibigw = object->ob_width;
	fo_dibigh = object->ob_height;
	fo_dilittlx = work_w >> 1;
	fo_dilittly = work_h >> 1;
	fo_dibigx = work_w - fo_dibigw >> 1;
	sVar2 = work_h - fo_dibigh;
	uVar3 = sVar2 >> 1;
	object->ob_x = fo_dibigx;
	object->ob_y = uVar3;
	bVar4 = sVar2 >> 9;
	form_dial(0,fo_dilittlx,fo_dilittly,0,0,fo_dibigx,uVar3 & 0xff | bVar4 << 8,fo_dibigw,fo_dibigh);
	form_dial(1,fo_dilittlx,fo_dilittly,0,0,fo_dibigx,uVar3 & 0xff | bVar4 << 8,fo_dibigw,fo_dibigh);
	objc_draw(object,0,8,0,0,work_w,work_h);
	int16_t ret = (*handler)(object,0);
	form_dial(2,fo_dilittlx,fo_dilittly,0,0,fo_dibigx,   uVar3 & 0xff | bVar4 << 8,    fo_dibigw,  fo_dibigh);
	form_dial(3,fo_dilittlx,fo_dilittly,0,0,fo_dibigx-3,(uVar3 & 0xff | bVar4 << 8)-3, fo_dibigw+4,fo_dibigh+4);
	return ret;
}
