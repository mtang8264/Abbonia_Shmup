/// @desc									A struct that contains the data of a specific character.
/// @param	{String}			_name		The name of the character.
/// @param	{Struct.unit_stats}	_base_stats	The stats of the character.
/// @param	{Constant.Colour}	_color		The color of the character.
function character_data(_name, _base_stats, _color) constructor {
	name = _name;				// The name of the character as a string.
	base_stats = _base_stats;	// The stats of the character as a unit_stats struct.
	color = _color;				// The color of the character as a colour constant.
}