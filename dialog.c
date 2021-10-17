#include "aes.h"
#include "logohax.h"

OBJECT* dialog_about;
OBJECT* dialog_graphics_settings;
OBJECT* dialog_turtle_settings;
OBJECT* dialog_screen_settings;
OBJECT* banner_load_file;
OBJECT* banner_save_file;
OBJECT* banner_delete_file;

static char version[]="Sep 11 2021";
static char credit[]="Patched by Seg <seg@haxxed.com>";

OBJECT* get_rsrc_gaddr(int16_t re_gindex){
	OBJECT* gaddr;
	rsrc_gaddr(0,re_gindex,&gaddr);
	return gaddr;
}

void dialog_init(void){
	dialog_graphics_settings=get_rsrc_gaddr(1);
	dialog_turtle_settings=get_rsrc_gaddr(2);
	dialog_screen_settings=get_rsrc_gaddr(3);
	dialog_about=get_rsrc_gaddr(4);
	banner_delete_file=get_rsrc_gaddr(5);
	banner_load_file=get_rsrc_gaddr(6);
	banner_save_file=get_rsrc_gaddr(7);
	// insert version strings and center
	dialog_about[7].ob_spec=credit;
	dialog_about[7].ob.x-=(sizeof(credit)-1)*cell_w/2;
	dialog_about[8].ob_spec=version;
	dialog_about[8].ob.x-=(sizeof(version)-1)*cell_w/2;
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
	form_dial(0,0,&c);
	GRECT z;
	z.x = work_w >> 1;
	z.y = work_h >> 1;
	z.w = z.h = 0;
	form_dial(1,&z,&c);
	objc_draw(object,0,8,0,0,work_w,work_h);
	int16_t ret = (*handler)(object,0);
	form_dial(2,&z,&c);
	form_dial(3,0,&c);
	return ret;
}

void draw_banner(int16_t flag, OBJECT *object){
	mouse_show();
	static GRECT c;
	if(flag==0){
		form_center(object,&c);
		c.y=screen_h<400?16:35;
		object->ob.y=c.y;
		form_dial(0,0,&c);
		objc_draw(object,0,8,0,0,work_w,work_h);
		c.y-=3; // why? it is mystery
	}else{
		form_dial(3,0,&c);
	}
	return;
}
