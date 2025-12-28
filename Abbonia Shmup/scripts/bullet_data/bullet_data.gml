enum BULLET_MODE {
	LINEAR,
	INACTIVE
}

enum BULLET_TYPE {
	FRIENDLY,
	ENEMY,
	INACTIVE
}

function bullet_data(_movement_direction, _movement_speed, _damage, _type, _mode = BULLET_MODE.LINEAR) constructor {
	mode = _mode;
	movement_direction = vector2_normalize(_movement_direction);
	movement_speed = _movement_speed;
	damage = damage;
	type = _type;
	
	static Normalize_Direction = function()
	{
		movement_direction = vector2_normalize(movement_direction);
	}
}

#macro inactive_bullet new bullet_data(vector2_zero, 0, 0, BULLET_TYPE.INACTIVE, BULLET_MODE.INACTIVE)