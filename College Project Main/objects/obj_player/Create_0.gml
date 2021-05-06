//Player Movement Variables
hsp = 0; //Horizontal Speed
vsp = 0; //Vertical Speed
grv = 0.29; //Gravity
movespeed = 1.5; 
jumpspeed = 5.5;
coins = 0;

grounded = false; //Whether or not we're on the ground
slope_height = 13; //How steep slopes can be that we're able to climb
walking = false; //If walking or not
counterFootsteps = 0; //frames till next walking sound
created = false; //Jump dust

controller = 0; //Checking if Controller input is being used

invincible = false;
global.playerLocked = false;
image_speed = 0.20;

//Attacking
combo = 0;
comboMax = 3;
canAttack = true;
comboReset = false;
attacking = false;

//Attacking Sprites
spriteAttack[0] = spr_player_punch_1;
spriteAttack[1] = spr_player_punch_2;
spriteAttack[2] = spr_player_punch_3;

//Attacking Hitboxes
hitbox[0] = obj_player_hitbox_1;
hitbox[1] = obj_player_hitbox_2;
hitbox[2] = obj_player_hitbox_3;

//Elements
elementFire = true;

//Damage
global.punchDamage1 = 1;
global.punchDamage2 = 1;
global.punchDamage3 = 1;

global.elementFireDamage = 1;