if (something_selected) {
	window_set_cursor(selection_cursor);
} else {
	window_set_cursor(cr_default);
}

something_selected = false;