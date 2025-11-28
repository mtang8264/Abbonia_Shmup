#region Character Base Stats
character_helena = new character_data("helena", new unit_stats(1, 2, 1, 2), #92278F);
character_naivara = new character_data("naivara", new unit_stats(2,1,2,1), #ee1c24);
character_fig = new character_data("fig", new unit_stats(1, 1, 2, 2), #F8941D);
character_olivia = new character_data("olivia", new unit_stats(2, 2, 1, 1), #0072BC);
character_spinel = new character_data("spinel", new unit_stats(1, 2, 2, 1), #363636);
character_goose = new character_data("goose", new unit_stats(2, 1, 1, 2), #00A651);
#endregion

pcs = [character_helena, character_naivara, character_fig, character_olivia, character_spinel, character_goose];

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
	return pcs[current_character].color;
}

function swap_to_character(_character_index) {
	current_character = _character_index;
}