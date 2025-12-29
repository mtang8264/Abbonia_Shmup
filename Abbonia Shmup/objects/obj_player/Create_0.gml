/// @desc handles all create processes and contain object functions.
#region Character Data
character_helena =  new character_data("helena", 
									   new unit_stats(1, 2, 1, 2),
									   #92278F);
character_naivara = new character_data("naivara",
									   new unit_stats(2, 1, 2, 1),
									   #ee1c24);
character_fig =     new character_data("fig",
									   new unit_stats(1, 1, 2, 2),
									   #F8941D);
character_olivia =  new character_data("olivia",
									   new unit_stats(2, 2, 1, 1),
									   #0072BC);
character_spinel =  new character_data("spinel",
									   new unit_stats(1, 2, 2, 1),
									   #363636);
character_goose =   new character_data("goose", 
									   new unit_stats(2, 1, 1, 2),
									   #00A651);

enum PC {
	HELENA,
	NAIVARA,
	FIG,
	OLIVIA,
	SPINEL,
	GOOSE
}

/// @desc                           Returns the data of a character given their index.
/// @param {real} _character_index  The index of the character to get data for.
///                                 Can also accept the character's enum value from enum PC.
/// @return {Struct.character_data} The character_data for the given character.
function get_character_data(_character_index) {
	switch(_character_index) {
		case PC.HELENA:
			return character_helena;
		case PC.NAIVARA:
			return character_naivara;
		case PC.FIG:
			return character_fig;
		case PC.OLIVIA:
			return character_olivia;
		case PC.SPINEL:
			return character_spinel;
		case PC.GOOSE:
			return character_goose;
	}
}

/// @desc Returns the character data for the active character.
/// @return {Struct.character_data} The character data of the active character.
function get_current_character_data() {
	return get_character_data(current_character);
}
#endregion

current_character = PC.HELENA;

/// @desc                     Returns the color of the current character.
/// @return {Constant.Colour} The color of the active character.
current_color = function() {
	return get_current_character_data().color;
}

/// @desc Swaps the active character to be a given character.
/// @param {Real} _character_index The index of the character to swap to.
///                                Can be represented by their enum value from the enum PC.
function swap_to_character(_character_index) {
	current_character = _character_index;
}