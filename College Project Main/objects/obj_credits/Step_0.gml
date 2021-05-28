keySkip = keyboard_check(vk_space) || keyboard_check(vk_enter) || mouse_check_button(mb_left) || gamepad_button_check(0,gp_face1) || gamepad_button_check(0,gp_face2) || gamepad_button_check(0,gp_face3) || gamepad_button_check(0,gp_face4)

if(keySkip){	
	creditsScroll -= 1.5;
} else {
	creditsScroll -= 0.15;
}

if(creditsScroll <= -380){
audio_stop_all()
instance_destroy()	
game_restart();

}