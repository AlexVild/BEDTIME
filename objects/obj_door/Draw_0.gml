if (door_opened) {
	sprite_index = spr_door_opened;
	draw_self();
} else if (door_closed) {
	sprite_index = spr_door_closed;
	draw_self();
}