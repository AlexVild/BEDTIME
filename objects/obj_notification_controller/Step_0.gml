if (ds_list_size(phone_instance.message_instance.messages) > 0 && phone_instance.state == PhoneState.CLOSED) {
	display = true;	
} else {
	display = false;	
}

display_previous = display;