if (position_meeting(mouse_x, mouse_y, id)) {
	global.cursor_controller.something_selected = true;
	
	if (mouse_check_button_pressed(mb_left)) {
		pad_pressed = true;
	}
}

if (pad_pressed) {
	if (mouse_check_button_released(mb_left)) {
		pad_pressed = false;
		ds_list_delete(phone_instance.message_instance.messages, 0);
	}
}