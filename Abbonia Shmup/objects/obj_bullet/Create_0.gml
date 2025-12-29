#macro bullet_inactive_pos new vector2(-64, -64)

data = inactive_bullet;

function fire(_bullet_stats, _position)
{
	data = _bullet_stats;
	x = _position.x;
	y = _position.y;
}

function is_inactive()
{
	return data.mode == BULLET_MODE.INACTIVE;
}