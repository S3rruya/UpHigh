if(oPlayer.state == STATES.upBuff)
{
	instance_destroy();	
}else
{

oPlayer.state = STATES.hitted;
oPlayer.life--;

instance_destroy();

}