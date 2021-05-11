kAny = (keyboard_check_pressed(vk_anykey)) || mouse_check_button_pressed(mb_any) || keyboard_check_released(vk_enter) || gamepad_button_check_released(0,gp_face1) || gamepad_button_check_released(0,gp_face3)

letters += spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(f_main);
if (h == 0) h = string_height(text);
w = string_width(text_current);

if(letters >= length)
{
	endarrow = " >";
} else {
	endarrow = "";	
}

if(canPlaySound){
if ctr <= string_length(text)
{
audio_sound_pitch(s_voice_blip, pitch);
 if string_copy(text,ctr,1) !=" " {audio_play_sound(s_voice_blip,1000,false);}
 ctr+=1;
 canPlaySound = false;
 alarm[0] = 4;
}
}

if(letters >= length) && (kAny) 
{
	instance_destroy();
}