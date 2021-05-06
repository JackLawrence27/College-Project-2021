if(showDebug = true){
display_set_gui_size(320,180)
draw_set_font(f_main)
draw_set_color(c_ltgray)
if(instance_exists(obj_mainmenu_controller)){
draw_text(5,5,"MENU: " + string(obj_mainmenu_controller.menu))
draw_text(5,12,"SELECTED: " + string(obj_mainmenu_controller.selected))
}
draw_set_color(c_ltgray)
draw_text(5,19,"FPS: ")
draw_set_color(c_green)
draw_text(5+string_width("FPS: "),19,string(fps))
draw_set_color(c_ltgray);
draw_text(5,26,"REAL FPS: " + string(fps_real))
draw_text(5,33,"MOUSE X/Y " + string(mouse_x) + " " + string(mouse_y))
draw_text(5,40,"INST: " + string(instance_count))
draw_set_color(c_ltgray)
if(instance_exists(obj_player)){
draw_text(5,47,"CONTROLLER: " + string(obj_player.controller))
}

} else {
// do nothing	
	
}
draw_set_color(c_white) 