function vector2(_x, _y) constructor{
	x = _x;
	y = _y;
}

// Common vector2 values.
#macro vector2_zero new vector2(0,0)
#macro vector2_up new vector2(0,-1)
#macro vector2_down new vector2(0,1)
#macro vector2_right new vector2(1,0)
#macro vector2_left new vector2(-1,0)