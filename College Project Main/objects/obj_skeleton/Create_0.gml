global.skeletonLocked = false;
//Skeleton Variables
image_speed = 0.15;
hsp = 0; //Horizontal Speed
vsp = 0; //Vertical Speed
grv = 0.29; //Gravity
movespeed = 0.75; 
grounded = false; //Whether or not we're on the ground
slope_height = 13; //How steep slopes can be that we're able to climb
walking = false; //If walking or not
attackCreated = false;

//State Handler
enum skeletonState
{
	IDLE,
	HURT,
	CHASE,
	ATTACK,
	ATTACKPAUSE,
	DEAD
}

state = skeletonState.IDLE
aggroRange = 128;

isHit = false;
hitFlash = 1;
instance_create_layer(x,y,"Grass",obj_particle_controller_skeleton);

//Element Handler
fireEffect = false;

//Health
skeletonHealth = 5;
skeletonHealthMax = 5;
dead = false;

countdown = 60;