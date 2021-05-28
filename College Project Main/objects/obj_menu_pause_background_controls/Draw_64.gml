display_set_gui_size(320,180)

if(global.pause){
	draw_set_color(c_black);
	draw_set_alpha(0.7);
	draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0);

	draw_set_font(f_main);
	draw_set_alpha(1);
	
draw_sprite(spr_controls,0,0,0)
}