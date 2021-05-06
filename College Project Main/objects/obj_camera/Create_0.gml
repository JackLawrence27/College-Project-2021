/// @description Camera Variables
cam = view_camera[0];
follow = obj_player;
cameraUpdate = 0;
viewMultiplier = 0.5;
view_w_half = camera_get_view_width(cam) * viewMultiplier;
view_h_half = camera_get_view_height(cam) * viewMultiplier;
xTo = xstart;
yTo = ystart;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;
buff = 32;