/// @desc ScreenShake(magnitude,frames)
/// @arg Magnitude sets strength of the shake. Radius in pixels
/// @arg Frames sets the length of the shake in frames (60 = 1 second at 60fps)
function screenShake(){
with(obj_camera){
	if(argument0 > shakeRemain){
		shakeMagnitude = argument0;
		shakeRemain = argument0;
		shakeLength = argument1;
	}
}
}