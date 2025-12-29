if (variable_global_exists("bullet_manager"))
{
	global.bullet_manager.fire(new bullet_data(new vector2(0,-1), 5, 1, BULLET_TYPE.FRIENDLY), new vector2(x,y));
}