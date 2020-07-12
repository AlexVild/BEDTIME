if (open_door) {
	door_opened = false;
	door_closed = false;
	with(instance_create_layer(x, y, "DOOR", obj_door_opening)) {
		door_instance = other.id	
	}
	open_door = false;
}

if (close_door) {
	door_opened = false;
	door_closed = false;
	with(instance_create_layer(x, y, "DOOR", obj_door_closing)) {
		door_instance = other.id
	}
	close_door = false;
}