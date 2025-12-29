/// @desc Handles all start up code for obj_bullet_manager.
///       Also contains function definitions.
if (variable_global_exists("bullet_manager")) { instance_destroy(); }
global.bullet_manager = id;

bullet_array = [];
spawn_initial_bullets();

/// @desc Spawns a given number of bullets to start the game.
///       The number of bullets is defined by a object variable.
function spawn_initial_bullets()
{
	for(var i = 0; i < default_bullet_spawn; i ++)
	{
		bullet_array[i] = instance_create_layer(bullet_inactive_pos.x, bullet_inactive_pos.y, "Bullets", obj_bullet);
	}
}

/// @desc                       Finds the next bullet that is not currently in use.
/// @return {Id.Instance, Bool} Returns the next available bullet.
///                             Returns the boolean value "false" if none exists.
function get_next_available_bullet()
{
	var _l = array_length(bullet_array);
	for(var i = 0; i < _l; i ++)
	{
		if (bullet_array[i].is_inactive()) { return bullet_array[i]; }
	}
	return false;
}


/// @desc                                  Fires the next available bullet.
/// @param  {Struct.bullet_data} _data     The data that should be given to the bullet.
/// @param  {Struct.vector2}     _position The position the bullet should be fired from.
/// @return {Bool}                         Returns true if the process was performed correctly and false otherwise.
function fire_next_available_bullet(_data, _position)
{
	if (get_next_available_bullet() == false) { return false; }
	
	get_next_available_bullet().fire(_data, _position);
	return true;
}

/// @desc                                 An alias of the fire_next_available_bullet function.
///                                       Fires the next available bullet.
/// @param {Struct.bullet_data} _data     The data that should be given to the bullet.
/// @param {Struct.vector2}     _position The position the bullet should be fired from.
/// @return {Bool}                         Returns true if the process was performed correctly and false otherwise.
function fire(_data, _position)
{
	return fire_next_available_bullet(_data, _position);
}