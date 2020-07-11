if (other.hit_points < 5) {
	other.hit_points += 1;
	other.hit_points = clamp(other.hit_points, 0, 5);
	instance_destroy();
}
play_subgame_sound(sfx_pickup);