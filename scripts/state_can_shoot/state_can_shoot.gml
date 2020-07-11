if (can_shoot && mouse_check_button(mb_left)) {
	var _dir = point_direction(x, y, mouse_x, mouse_y);
	
	show_debug_message(x);
	show_debug_message(y);
	
	with(instance_create_layer(x, y, "TV_2", obj_player_bullet)) {
		hspd = dcos(_dir) * mvmt_spd;
		vspd = dsin(_dir) * mvmt_spd * -1;
	}
	can_shoot = false;
	alarm[1] = shoot_freq;
}