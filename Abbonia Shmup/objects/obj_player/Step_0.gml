#region Bullet fire logic
// If the player is holding spacebar
if (keyboard_check(vk_space)) {
	// If the timer says a bullet can be fired.
	if (fire_timer <= 0) {
		// Make sure the bullet_manager exists.
		if (variable_global_exists("bullet_manager")) {
			// Fire a basic bullet
			global.bullet_manager.fire(new bullet_data(new vector2(0,-1), 300, 1, BULLET_TYPE.FRIENDLY), new vector2(x,y));
			// Set the timer
			fire_timer = seconds_to_microseconds(current_seconds_per_bullet());
		}
	}
}

if (fire_timer > 0 ) {
	fire_timer -= delta_time;
}
#endregion