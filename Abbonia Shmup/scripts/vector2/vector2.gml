function vector2(_x, _y) constructor{
	x = _x;
	y = _y;
	
	/// @desc          Returns the magnitude of the vector2.
	/// @return {Real} The magnitude of the vector.
	static magnitude = function()
	{
		return sqrt( x*x + y*y);
	}
	
	/// @desc                         Adds a given vector2 to this vector2.
	/// @param {Struct.vector2} _vec2 The vector2 that will be added to the vector2.
	static add = function(_vec2)
	{
		x += _vec2.x;
		y += _vec2.y;
	}
	
	/// @desc                         Adds a given vector2 to this vector2 and then normalizes.
	///                               Uses the add() and normalize() functions.
	/// @param {Struct.vector2} _vec2 The vector2 that will be added to the vector2.
	static add_and_normalize = function(_vec2)
	{
		add(_vec2);
		normalize();
	}
	
	/// @desc Normalizes the vector2.
	static normalize = function()
	{
		var _m = magnitude();
		x = x/_m;
		y = y/_m;
	}
}

// Common vector2 values.
#macro vector2_zero new vector2(0,0)
#macro vector2_up new vector2(0,-1)
#macro vector2_down new vector2(0,1)
#macro vector2_right new vector2(1,0)
#macro vector2_left new vector2(-1,0)