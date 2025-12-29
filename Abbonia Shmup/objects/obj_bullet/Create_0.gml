/// @desc Handles all creation code for the obj_bullet instance and contains object functions.
#macro bullet_inactive_pos new vector2(-64, -64)

data = inactive_bullet; // Defaults to the inactive_bullet data set as defined in the script bullet_data.

/// @desc                                      Fires this obj_bullet instance.
/// @param {Struct.bullet_stats}               _bullet_stats The data for this bullet should use.
/// @param {Struct.vector2}                    _position     The position from which the bullet should be fired.
function fire(_bullet_stats, _position)
{
	data = _bullet_stats;
	x = _position.x;
	y = _position.y;
}

/// @desc          Checks if this obj_bullet instance is inactive or not.
/// @return {Bool} Returns true if the instance is inactive. Return false if it is active.
function is_inactive()
{
	return data.mode == BULLET_MODE.INACTIVE;
}