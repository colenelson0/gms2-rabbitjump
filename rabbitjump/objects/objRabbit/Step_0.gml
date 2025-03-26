if (objCreator.stopGame)
{
	if (!startAnim)
	{
		g = .4;
		hs = 0;
		vs = -1 * jh;
		startAnim = true;
		sprite_index = sprRabbitFail;
	}
	vs = vs + g;
}
else
{
	// Keyboard inputs

	var leftPress = keyboard_check(ord("J"));
	var rightPress = keyboard_check(ord("L"));
	var upPress = keyboard_check_pressed(ord("I"))

	// Key direction

	hs = (rightPress - leftPress) * rs;
	vs = vs + g;

	// Platform collision

	if (vs > 0) // If the player is going down
	{
		var platform = instance_place(x, y+vs, objShortPl);
		var box = instance_place(x, y+vs, objBox);
		var cloud = instance_place(x, y+vs, objCloud);
	
		if (platform != noone && y <= 366)
		{
			// There is a platform under the player
			while (!place_meeting(x,y+1,objShortPl))
			{
				y = y + 1
			}
		
			// Jump
			if (upPress)
			{
				vs = -1 * jh;
				ps = 0;
			}
			else
			{
				vs = 0;
				ps = platform.hs;
			}
		}
		else if (box != noone && y <= 240)
		{
			// There is a box under the player
			while (!place_meeting(x,y+1,objBox))
			{
				y = y + 1
			}
		
			// Jump
			if (upPress)
			{
				vs = -1 * jh;
				ps = 0;
			}
			else
			{
				vs = 0;
				ps = box.hs;
			}
		}
		else if (cloud != noone && y <= 114)
		{
			// There is a box under the player
			while (!place_meeting(x,y+1,objCloud))
			{
				y = y + 1
			}
		
			// Jump
			if (upPress)
			{
				vs = -1 * jh;
				ps = 0;
			}
			else
			{
				vs = 0;
				ps = cloud.hs;
			}
		}
		else
		{
			ps = 0;	
		}
	}

	// Boundary collision

	if (place_meeting(x+hs+ps,y,objBounds))
	{
		while (!place_meeting(x+sign(hs+ps),y,objBounds))
		{
			x = x + sign(hs+ps)
		}
		hs = 0;
		ps = 0;
	}
	if (place_meeting(x,y+vs,objBounds))
	{
		while (!place_meeting(x,y+sign(vs),objBounds))
		{
			y = y + sign(vs)
		}
	
		// Jump
		if (upPress)
		{
			vs = -1 * jh;
		}
		else
		{
			vs = 0;
		}
	}
}

// Player movement

x = x + hs + ps;
y = y + vs;

// Direction change

if (hs < 0 && image_xscale != -1)
{
	image_xscale = -1;	
}
else if (hs > 0 && image_xscale != 1)
{
	image_xscale = 1;	
}

if (startAnim && y > 700)
{
	instance_destroy();
}