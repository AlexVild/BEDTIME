switch(state) {
	case PhoneState.CLOSED:
		sprite_index = spr_phone_closed;
		break;
	case PhoneState.OPEN:
		sprite_index = spr_phone_open;
		break;
}

draw_self();