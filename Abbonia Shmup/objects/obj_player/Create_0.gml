#region Character Base Stats
stats_helena_base =  new unit_stats(1, 2, 1, 2);
stats_naivara_base = new unit_stats(2, 1, 2, 1);
stats_fig_base =     new unit_stats(1, 1, 2, 2);
stats_olivia_base =  new unit_stats(2, 2, 1, 1);
stats_spinel_base =  new unit_stats(1, 2, 2, 1);
stats_goose_base =   new unit_stats(2, 1, 1, 2);
#endregion

#region Character Colors
color_helena = #92278F;
color_naivara = #EE1C24;
color_fig = #F8941D;
color_olivia = #0072BC;
color_spinel = #363636;
color_goose = #00A651;
#endregion

enum PC {
	HELENA,
	NAIVARA,
	FIG,
	OLIVIA,
	SPINEL,
	GOOSE
}

current_character = PC.HELENA;

current_color = function() {
	switch(current_character) {
		case PC.HELENA:
			return color_helena;
		case PC.NAIVARA:
			return color_naivara;
		case PC.FIG:
			return color_fig;
		case PC.OLIVIA:
			return color_olivia;
		case PC.SPINEL:
			return color_spinel;
		case PC.GOOSE:
			return color_goose;
		default:
			return c_white;
	}
}

function swap_to_character(_character_index) {
	current_character = _character_index;
}