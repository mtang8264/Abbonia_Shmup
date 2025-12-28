/// @desc                           Returns a normalized vector2 when given any vector2.
///                                 Returns (0, 0) when passed a vector that doesn't calculate.
/// @param {Struct.vector2} _vector The vector2 that is being normalized.
/// @return {Struct.vector2}        The normalized vector2.
function vector2_normalize(_vector)
{
	var _hypo = sqrt(_vector.x*_vector.x+_vector.y*_vector.y);
	if (_hypo == 0)
	{
		return vector2_zero;
	}
	else
	{
		return new vector2(_vector.x/_hypo, _vector.y/_hypo);
	}
}