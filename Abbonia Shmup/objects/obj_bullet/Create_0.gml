/// @desc Handles all creation code for the obj_bullet instance and contains object functions.
#macro bullet_inactive_pos new vector2(0, 0)	// The position that inactive bullets should keep themselves at.

debugging_fire_and_deactivated = true;

data = inactive_bullet;	// Defaults to the inactive_bullet data set as defined in the script bullet_data.
firetime = -1;	// The time the bullet was last fired in milliseconds since game start. Should be -1 when inactive.

/// @desc                                      Fires this obj_bullet instance.
/// @param {Struct.bullet_stats}               _bullet_stats The data for this bullet should use.
/// @param {Struct.vector2}                    _position     The position from which the bullet should be fired.
function fire(_bullet_stats, _position)
{
	data = _bullet_stats;		// Loads the new bullet_data into the instance.
	x = _position.x;			// Sets the bullet position for it to be fired.
	y = _position.y;
	firetime = current_time;	// Sets the bullet's firetime so it knows when it was fired.
	
	if (debugging_fire_and_deactivated) { show_debug_message(string(id) + " was fired."); }
}

/// @desc Deactivates the bullet so that it is no longer moving and can be used again.
function deactivate()
{
	data = inactive_bullet;		// Set the data value to the default inactive bullet values.
	x = bullet_inactive_pos.x;	// Move to inactive position
	y = bullet_inactive_pos.y;
	firetime = -1;				// Sets the firetime to -1 for safety.
	
	if (debugging_fire_and_deactivated) { show_debug_message(string(id) + " was deactivated."); }
}

/// @desc          Checks if this obj_bullet instance is inactive or not.
/// @return {Bool} Returns true if the instance is inactive. Return false if it is active.
function is_inactive()
{
	return data.mode == BULLET_MODE.INACTIVE;
}

/// @desc Checks if the bullet is beyond reasonable bounds. If it is, the bullet is deactivated.
function check_out_of_bounds()
{
	if (x < -100
		|| x > room_width + 100
		|| y < -100
		|| y > room_height + 100 )
	{
		if (debugging_fire_and_deactivated) { show_debug_message(string(id) + " was found to be out of bounds.");}
		deactivate();
	}
}