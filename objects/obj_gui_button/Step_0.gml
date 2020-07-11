if (selected && mouse_check_button_pressed(mb_left)) {
	script_execute(script_to_execute);
}

if (position_meeting(mouse_x, mouse_y, id)) {
	selected = true;	
} else {
	selected = false;	
}