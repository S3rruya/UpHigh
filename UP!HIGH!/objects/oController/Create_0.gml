


life = 3;
maxLife = 5;
points = 0;

cSkinColour = c_purple;

global.partSystem = part_system_create();
part_system_depth(global.partSystem, 1);

particles();

enum STATE 
{
	lost,
	playing
}

state = STATE.playing;

