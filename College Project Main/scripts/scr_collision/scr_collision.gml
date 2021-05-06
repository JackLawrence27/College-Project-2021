function scr_collision() {
	//On ground       check if going down slope                         check if not colliding with a wall     check if not moving on regular, flat ground
	if (grounded) and place_meeting(x+hsp,y+slope_height,obj_wall) and !place_meeting(x+hsp,y,obj_wall) and !(place_meeting(x+hsp,y+1,obj_wall))
	{
	    x +=hsp;
	    while !(place_meeting(x,y+1,obj_wall)) y += 1;
	}
	else //Move up slope
	{
	    if place_meeting(x+hsp,y,obj_wall) //If our current x position plus our horizontal speed would result in a collision
	    {
	        yplus = 0;
        
	        //Keep adding 1 to yplus until it's value is greater than our slope height or until the statement isn't true
	        while (place_meeting(x+hsp,y-yplus,obj_wall)) and (yplus <= slope_height) and (grounded) yplus +=1;
        
	        //If even after adding yplus to our y coordinate would result in a collision, that means we are moving into a wall
	        if place_meeting(x+hsp,y-yplus,obj_wall)
	        {
	            while (!place_meeting(x+sign(hsp),y,obj_wall)) x +=sign(hsp); //Move as close to the wall as possible
	            hsp = 0; //Then set our horizontal speed to 0
	        }
        
	        else //Otherwise, we are moving up a slope
	        {
	            y -= yplus; //Move up the slope
	        }
	    }
	    x += hsp; //Change our x coordinate by our horizontal speed
	}

	//Vertical Collision
	if (place_meeting(x,y+vsp,obj_wall))
	{
	    while !(place_meeting(x,y+sign(vsp),obj_wall))
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}
	y += vsp;



}