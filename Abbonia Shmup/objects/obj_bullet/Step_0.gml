/// @desc Handles all step processes for the instance.
if (data.mode == BULLET_MODE.INACTIVE)
{
	x = bullet_inactive_pos.x;
	y = bullet_inactive_pos.y;
	return;
}

#region movement
var _new_x = x + data.movement_direction.x * data.movement_speed;
var _new_y = y + data.movement_direction.y * data.movement_speed;
x = _new_x;
y = _new_y;
#endregion