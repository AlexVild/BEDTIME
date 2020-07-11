/// @func actor_vulnerable_to
/// @arg damaging_instance
/// @arg state_to_switch_to

if (place_meeting(x, y, argument0)) {
	if (!invincible) {
		truestate_switch(argument1);
	}
}