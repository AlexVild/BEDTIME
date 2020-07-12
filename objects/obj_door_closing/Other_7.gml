door_instance.door_closed = true;
door_instance.door_opened = false;
audio_play_sound(sfx_door_close, 0, false);

instance_destroy();