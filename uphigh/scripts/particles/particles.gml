function particles() {


#region Particle Types

	// Basic Particle
	var _p = part_type_create();

	part_type_shape(_p, pt_shape_square);
	part_type_life(_p, 20, 20);
	part_type_size(_p, 1.4, 1.4, -0.06, 0);

	part_type_color2(_p,oController.cSkinColour,c_white);
	part_type_alpha2(_p, 1, -0.5);

	global.ptBasic = _p;

	//enemie particles
	var _p = part_type_create();

	part_type_shape(_p, pt_shape_square);
	part_type_size(_p, 0.2, 0.3, 0, 0.04);
	part_type_life(_p, 15, 30);
	part_type_color1(_p, c_red);
	part_type_direction(_p, 0, 360, 0, 0);
	part_type_speed(_p, 1, 2, 0, 0);


	global.ptEnemie = _p;

	//life particles
	var _p = part_type_create();

	part_type_shape(_p, pt_shape_square);
	part_type_size(_p, 0.2, 0.3, 0, 0.04);
	part_type_life(_p, 15, 30);
	part_type_color1(_p, c_white);
	part_type_direction(_p, 0, 360, 0, 0);
	part_type_speed(_p, 1, 2, 0, 0);

	global.ptLife = _p;

	//upBuff Particles
	var _p = part_type_create();

	part_type_shape(_p, pt_shape_disk);
	part_type_size(_p, 1, 1, 0, 0.04);
	part_type_life(_p, 45, 55);
	part_type_color2(_p, oController.cSkinColour, c_white);
	part_type_alpha3(_p, 0.3, 1, 0);
	part_type_direction(_p, 245, 290, 0, 0);
	part_type_speed(_p, 8, 10, 0, 0);

	global.ptUpBuff = _p;

	/* Trail Particle
	var _p = part_type_create();

	part_type_shape(_p, pt_shape_circle);
	part_type_life(_p, 40, 50);
	part_type_size(_p, 0.4, 0.4, -0.02, 0.05);

	global.ptTrail = _p;

	// Set as step
	part_type_step(global.ptBasic, 1, global.ptTrail);

	// Death explosion
	var _p = part_type_create();

	part_type_shape(_p, pt_shape_flare);
	part_type_life(_p, 30, 40);
	part_type_size(_p, 0.3, 0.4, 0.08, 0);
	part_type_alpha3(_p, 0.8, 1, 0);
	part_type_blend(_p, true);

	global.ptDeathExplosion = _p;

	// Set as death
	part_type_death(global.ptBasic, 1, global.ptDeathExplosion);
	*/
#endregion


}
