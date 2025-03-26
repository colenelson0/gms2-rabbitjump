if (objCreator.stopGame)
{
	hs = 0;
}

x = x + hs;

if (x < -300)
{
	instance_destroy();	
}