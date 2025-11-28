enum BULLET_MODE {
	LINEAR
}

enum BULLET_TYPE {
	FRIENDLY,
	ENEMY
}

function bullet_data(_movement_direction, _movement_speed, _damage, _type, _mode = BULLET_MODE.LINEAR) constructor {
	mode = _mode;
	movement_direction = _movement_direction;
	movement_speed = _movement_speed;
	damage = damage;
	type = _type;
}