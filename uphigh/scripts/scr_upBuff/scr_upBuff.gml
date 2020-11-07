function scr_upBuff() {

		point_direction(x,y,room_width/2,room_height/2-100);
		direction = point_direction(x,y,room_width/2,room_height/2-100);

	speed = speed - 6;
	if(speed <= 0) speed = 0;

	upBuffDelay--;
	if(upBuffDelay <= 0)
	{
		upBuffDelay = 3*60;
		state = STATES.hitted;
		instance_destroy(oEnemie);
	}

	part_particles_create(global.partSystem, x+random_range(-45,45), y+25, global.ptUpBuff, 1);


}
