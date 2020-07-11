if (other.bomb_count < 3) {
	other.bomb_count += 1;
	other.bomb_count = clamp(other.bomb_count, 0, 3);
	instance_destroy();
	play_subgame_sound(sfx_pickup);
}