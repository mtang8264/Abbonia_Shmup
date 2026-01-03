/// @desc	A struct which holds the stats of any unit.
/// @param	{Real}	_finesse	The finesse stat of the unit. Represents how quickly the unit shoots.
/// @param	{Real}	_agility	The agility of the unit. Represents how quickly the unit is able to move.
/// @param	{Real}	_impact		The impact of the unit.	Represents how much damage the unit's bullets do.
///	@param	{Real}	_toughness	The toughness of the unit. Represents how much damage the unit can take.
function unit_stats(_finesse, _agility, _impact, _toughness) constructor {
	// Finesse represents how quickly the unit is able to shoot.
	// Finesse 1 represents 1 bullet every 2 seconds.
	// Finesse 10 represents 1 bullet every 0.2 seconds.
	finesse = _finesse;
	// Agility represents how quickly the unit is able to move.
	agility = _agility;
	// Impact represents how much damage the unit's bullets do.
	impact = _impact;
	// Toughness represent how much damage the unit can take.
	toughness = _toughness;
	
	/// @desc          Returns a value representing how many bullets per second the unit can fire.
	/// @return {Real} The number of bullets per second the unit is able to fire.
	static bullets_per_second = function() {
		var _percent = finesse / 10;
		var _bps = lerp(0.5, 5, _percent);
		return _bps;
	}
	
	/// @desc          Returns the number of seconds it takes for a bullet to fire.
	///                Functions by returning the inverse of the bullets_per_second function.
	/// @return {Real} The number of seconds between bullets.
	static seconds_per_bullet = function() {
		return 1 / bullets_per_second();
	}
}