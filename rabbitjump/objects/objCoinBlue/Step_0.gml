if (objCreator.stopGame)
{
	hs = 0;
}

x = x + hs;

var rabbit = instance_place(x,y,objRabbit);

if (rabbit != noone && !objCreator.stopGame)
{
	objCreator.coins += 5;
	instance_destroy();
}

if (x < -300 || x > 800)
{
	instance_destroy();
}