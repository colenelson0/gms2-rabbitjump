if (!stopGame)
{
	spawnWait = decrement_array(spawnWait);

	if (spawnWait[0] == 0)
	{
		// level 0L: Coin Yellow, Watermelon
		var chance = irandom_range(0,2);
		if (chance < 2)
		{
			// 0,1 - Coin Yellow
			with (instance_create_layer(-100,450,"Coins",objCoinYellow))
			{
				hs = 2.5;
			}
		}
		else
		{
			// 2 - Watermelon
			with (instance_create_layer(-100,500,"Hazards",objWatermelon))
			{
				hs = 2.5;
			}
		}
	
		spawnWait[0] = 270 + irandom_range(0,320);
	}
	if (spawnWait[1] == 0)
	{
		// level 0R: Coin Yellow, Toy Car
		var chance = irandom_range(0,2);
		if (chance < 2)
		{
			// 0,1 - Coin Yellow
			with (instance_create_layer(550,450,"Coins",objCoinYellow))
			{
				hs = -2.5;
			}
		}
		else
		{
			// 2 - Watermelon
			with (instance_create_layer(550,500,"Hazards",objWatermelon))
			{
				hs = -2.5;
			}
		}
	
		spawnWait[1] = 270 + irandom_range(0,320);
	}
	if (spawnWait[2] == 0)
	{
		// level 1: Platform, Slab, Bin
		with (instance_create_layer(-150,500,"Platforms",objShortPl))
		{
			hs = 2.5;
		}
	
		spawnWait[2] = 90 + irandom_range(0,170);
	}
	if (spawnWait[3] == 0)
	{
		// level 2L: Coin Yellow
		with (instance_create_layer(-100,325,"Coins",objCoinYellow))
		{
			hs = 2.5;
		}
	
		spawnWait[3] = 270 + irandom_range(0,440);
	}
	if (spawnWait[4] == 0)
	{
		// level 2R: Coin Yellow, Bumblebee
		with (instance_create_layer(550,325,"Coins",objCoinYellow))
		{
			hs = -2.5;
		}
	
		spawnWait[4] = 210 + irandom_range(0,320);
	}
	if (spawnWait[5] == 0)
	{
		// level 3: Box, Broken Box
		with (instance_create_layer(600,225,"Platforms",objBox))
		{
			hs = -3;
		}
	
		spawnWait[5] = 110 + irandom_range(0,170);
	}
	if (spawnWait[6] == 0)
	{
		// level 4L: Coin Red, Kite
		with (instance_create_layer(-100,200,"Coins",objCoinRed))
		{
			hs = 3.5;
		}
	
		spawnWait[6] = 330 + irandom_range(0,320);
	}
	if (spawnWait[7] == 0)
	{
		// level 4R: Coin Red
		with (instance_create_layer(550,200,"Coins",objCoinRed))
		{
			hs = -3.5;
		}
	
		spawnWait[7] = 420 + irandom_range(0,440);
	}
	if (spawnWait[8] == 0)
	{
		// level 5: Cloud, Evil Cloud
		with (instance_create_layer(-150,100,"Platforms",objCloud))
		{
			hs = 4;
		}
	
		spawnWait[8] = 180 + irandom_range(0,210);
	}
	if (spawnWait[9] == 0)
	{
		// level 6L: Coin Blue
		with (instance_create_layer(-100,75,"Coins",objCoinBlue))
		{
			hs = 4.5;
		}
	
		spawnWait[9] = 570 + irandom_range(0,440);
	}
	if (spawnWait[10] == 0)
	{
		// level 6R: Coin Blue, Bird
		with (instance_create_layer(550,75,"Coins",objCoinBlue))
		{
			hs = -4.5;
		}
	
		spawnWait[10] = 480 + irandom_range(0,320);
	}
}