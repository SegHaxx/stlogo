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
int16_t objc_draw(OBJECT*,int16_t,int16_t,int16_t,int16_t,int16_t,int16_t);

extern int16_t work_w, work_h;

extern void L45356(void);
extern void mouse_show(void);
extern void mouse_hide(void);

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
