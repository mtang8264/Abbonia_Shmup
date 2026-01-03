/// @desc					Converts microseconds into seconds.
/// @param	{Real}	_micros	The number of microseconds to be converted.
/// @return	{Real}			The equivilent number of seconds.
function microseconds_to_seconds(_micros){
	return milliseconds_to_seconds( microseconds_to_milliseconds(_micros) );
}