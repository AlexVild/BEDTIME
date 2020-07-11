var _y_pos = 115;

if (state == PhoneState.OPEN) {
	for (var i = 0; i < ds_list_size(message_instance.messages); i++) {
		draw_set_font(fnt_game);
		draw_text(15, _y_pos, message_instance.messages[| i]);
		_y_pos += 15;
	}
}