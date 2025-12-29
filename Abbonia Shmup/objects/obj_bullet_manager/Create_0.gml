if (variable_global_exists("bullet_manager")) { instance_destroy(); }
global.bullet_manager = id;

bullet_array = [];
spawn_initial_bullets();

function spawn_initial_bullets()
{
	for(var i = 0; i < default_bullet_spawn; i ++)
	{
		bullet_array[i] = instance_create_layer(bullet_inactive_pos.x, bullet_inactive_pos.y, "Bullets", obj_bullet);
	}
}

function get_next_available_bullet()
{
	var _l = array_length(bullet_array);
	for(var i = 0; i < _l; i ++)
	{
		if (bullet_array[i].is_inactive()) { return bullet_array[i]; }
	}
	return false;
}

function fire_next_available_bullet(_data, _position)
{
	if (get_next_available_bullet() == false) { return false; }
	
	get_next_available_bullet().fire(_data, _position);
}

function fire(_data, _position)
{
	fire_next_available_bullet(_data, _position);
}