//Quick Assign Variables
idleSprite = spr_imp_idle;
attackSprite = spr_imp_attack;
hurtSprite = spr_imp_hurt;
deathSprite = spr_imp_death;
walkSprite = spr_imp_walk;
currentObject = obj_imp;

//Health
impHealth = 5;
impHealthMax = 5;
dead = false;

//Imp Variables
image_speed = 0.15;
hsp = 0; //Horizontal Speed
vsp = 0; //Vertical Speed
grv = 0.29; //Gravity
movespeed = 0.75; 
grounded = false; //Whether or not we're on the ground
slope_height = 13; //How steep slopes can be that we're able to climb
walking = false; //If walking or not

//State Handler
enum enemyController
{
	IDLE,
	HURT,
	CHASE,
	ATTACK,
	ATTACKPAUSE,
	DEAD
}

state = enemyController.IDLE
aggroRange = 128;

isHit = false;
hitFlash = 1;
//instance_create_layer(x,y,"Grass",obj_particle_controller_skeleton);

//Element Handler
fireEffect = false;

countdown = 60;