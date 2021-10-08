#include "aes.h"

extern int16_t screen_h;
extern int16_t work_w, work_h;
extern int16_t cell_w, cell_h;

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
	L45356();
	if (handler == form_do){
		mouse_show();
	}else{
		mouse_hide();
	}
	GRECT c;
	form_center(object,&c);
	form_dial(0,0,0,0,0,c.x,c.y,c.w,c.h);
	int16_t zx = work_w >> 1;
	int16_t zy = work_h >> 1;
	form_dial(1,zx,zy,0,0,c.x,c.y,c.w,c.h);
	objc_draw(object,0,8,0,0,work_w,work_h);
	int16_t ret = (*handler)(object,0);
	form_dial(2,zx,zy,0,0,c.x,c.y,c.w,c.h);
	form_dial(3,0,0,0,0,c.x,c.y,c.w,c.h);
	return ret;
}

void draw_banner(int16_t flag, OBJECT *object){
	mouse_show();
	static GRECT c;
	if(flag==0){
		form_center(object,&c);
		c.y=screen_h<400?16:35;
		object->ob_y=c.y;
		form_dial(0,0,0,0,0,c.x,c.y,c.w,c.h);
		objc_draw(object,0,8,0,0,work_w,work_h);
		c.y-=3; // why? it is mystery
	}else{
		form_dial(3,0,0,0,0,c.x,c.y-3,c.w,c.h);
	}
	return;
}
