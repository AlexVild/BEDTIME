door_instance.door_opened = true;
door_instance.door_closed = false;
if (!global.game_over) {
	instance_create_depth(x, y, depth, obj_dad);
}
instance_destroy();