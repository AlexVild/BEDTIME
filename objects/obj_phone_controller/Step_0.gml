if (previous_selection != is_selected && previous_selection = true) {
	ds_list_delete(message_instance.messages, 0);
}

if (is_selected) {
	state = PhoneState.OPEN;
} else {
	state = PhoneState.CLOSED;
}

previous_selection = is_selected;