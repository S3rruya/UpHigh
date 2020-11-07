function scr_grabbed() {
	stickTimer++;
	dashCount = maxDashCount;
	y+=8;
	if(stickTimer == stickTime)
	{
		stickTimer = 0;
		state = STATES.falling;
	}



}
