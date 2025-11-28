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

function get_current_character_data() {
	return get_character_data(current_character);
}
#endregion

current_character = PC.HELENA;

current_color = function() {
	return get_current_character_data().color;
}

function swap_to_character(_character_index) {
	current_character = _character_index;
}