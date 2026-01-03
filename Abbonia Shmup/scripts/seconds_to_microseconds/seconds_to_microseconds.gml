/// @desc					Converts seconds into mircoseconds.
/// @param	{Real}	_secs	The number of seconds to be converted.
/// @return	{Real}			The equivilent number of microseconds.
function seconds_to_microseconds(_secs){
	return milliseconds_to_microseconds(seconds_to_milliseconds(_secs));
}