enum BULLET_MODE {
	LINEAR,
	INACTIVE
}

enum BULLET_TYPE {
	FRIENDLY,
	ENEMY,
	INACTIVE
}

/// @desc	A struct that holds data relevant to a bullet.
/// @param	{Struct.vector2}	_movement_direction	The direction the bullet should base its movement on.
///	@param	{Real}				_movement_speed		The speed the bullet should move in pixels per second.
///	@param	{Real}				_damage				The damage stat of the bullet.
///	@param	{Real}				_type				The type of bullet as stored in the BULLET_TYPE enum.
///													0 is friendly.
///													1 is enemy.
///													2 is inactive.
///	@param	{Real}				[_mode]				Optional. The mode that represents how the bullet moves as stored in BULLET_MODE enum.
///													Defaults to BULLET_MODE.LINEAR.
/// @param	{Real}				[_lifetime]			Optional. The time in milliseconds the bullet should be active.
///													Defaults to 10 seconds.
function bullet_data(_movement_direction,
                     _movement_speed,
					 _damage,
					 _type,
					 _mode = BULLET_MODE.LINEAR,
					 _lifetime = seconds_to_milliseconds(10))
					 constructor
{
	mode = _mode;
	movement_direction = vector2_normalize(_movement_direction);
	movement_speed = _movement_speed;
	damage = damage;
	type = _type;
	lifetime = _lifetime;	// Lifetime is recorded in milliseconds.
	
	/// @desc Calls for the movement_direction value to be normalized.
	///       This happens automatically when the data is created but this is available just in case.
	static Normalize_Direction = function()
	{
		movement_direction.normalize();
	}
}

// A macro that is available to represent an inactive bullet.
#macro inactive_bullet new bullet_data(vector2_zero, 0, 0, BULLET_TYPE.INACTIVE, BULLET_MODE.INACTIVE)