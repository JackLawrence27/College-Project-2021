/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(480,270)


draw_set_alpha(1)
draw_set_font(f_main)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black)
draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0);
draw_set_color(c_white)
draw_text(240,270+creditsScroll,"TO BE CONTINUED")
draw_text(240,290+creditsScroll,"ARTIST: JACK")
draw_text(240,310+creditsScroll,"CODING: DALE/JACK")
draw_text(240,330+creditsScroll,"LEVEL DESIGN: DALE")
draw_text(240,350+creditsScroll,"MUSIC: DALE")
draw_text(240,370+creditsScroll,"SFX: JACK")
draw_set_valign(fa_top)
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_font(f_main)
draw_set_alpha(1)