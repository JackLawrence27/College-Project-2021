/// @description Menu Variables
//Inital Variables
instance_create_layer(131-200,90,"Instances",obj_mainmenu_title)
instance_create_layer(112-250,154,"Instances",obj_mainmenu_play)
instance_create_layer(96-300,194,"Instances",obj_mainmenu_options)
instance_create_layer(96-350,234,"Instances",obj_mainmenu_credits)
instance_create_layer(72-400,274,"Instances",obj_mainmenu_quit)

//Menu Variables\\ MAIN MENU = 1 \\ 
menu = 1;
selected = 0;

//Scroll Variables
holdTime = 0;
interval = 10; /*however long between scrolling*/

//Stop Overlap