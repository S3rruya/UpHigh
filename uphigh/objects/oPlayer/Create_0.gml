
grvt = 16;
baseGrvt = grvt;
stickTime = 60;
stickTimer = 0;

dir = 1;
dashSpeedX = 35;
dashSpeedY = 16;
outDashSpeedX = 60;
outDashSpeedY = 4;
dashCount = 1;
maxDashCount = 1;
upBuffDelay = 3*60;


life = oController.life;
maxLife = oController.maxLife;
enum STATES 
{
	stoped,
	wall,
	falling,
	dashing,
	outdashing,
	hitted,
	upBuff
	
}

state = STATES.stoped;