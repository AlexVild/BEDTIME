var _lay_id = layer_get_id("TV_Overlay");
var _back_id = layer_background_get_id(_lay_id);

if (display) {
	layer_background_sprite(_back_id, spr_game_screen_overlay_off);
} else {
	layer_background_sprite(_back_id, spr_game_screen_overlay_on);
}