if(global.pause){
	draw_set_color(c_white);
	draw_set_alpha(1)
	draw_set_font(f_main);
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text_transformed(160,90,"RESUME GAME",drawXscaleResume,drawYscaleResume,0)
	draw_text_transformed(160,105,"MAIN MENU",drawXscaleMenu,drawYscaleMenu,0)
	draw_text_transformed(160,120,"QUIT",drawXscaleQuit,drawYscaleQuit,0)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_alpha(1);
}