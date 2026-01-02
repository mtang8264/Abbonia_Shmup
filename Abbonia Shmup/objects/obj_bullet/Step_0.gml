/// @desc Handles all step processes for the instance.
if (data.mode == BULLET_MODE.INACTIVE)
{
	x = bullet_inactive_pos.x;	// Move to inactive position
	y = bullet_inactive_pos.y;
	firetime = -1;				// Set firetime to 0.
	return;
}

#region movement
var _new_x = x + data.movement_direction.x * data.movement_speed;
var _new_y = y + data.movement_direction.y * data.movement_speed;
x = _new_x;
y = _new_y;
#endregion

#region lifetime
if (firetime != -1)
{
	var _t = current_time - firetime;
	if (_t >= data.lifetime)
	{
		deactivate();
		return;
	}
	
	check_out_of_bounds();
}
#endregion