/// @desc sets a cursor mode 
/// @param {CURSOR_MODE} mode the mode of the cursor

enum CURSOR_MODE {
	FREE,
	CELL_SELECT
}

var mode = argument0

switch (mode) {
	case CURSOR_MODE.FREE:
		toggle_visible(get_cursor(), true)
		toggle_visible(get_cell_selector(), false)
		break
	case CURSOR_MODE.CELL_SELECT:
		toggle_visible(get_cursor(), true)
		toggle_visible(get_cell_selector(), true)
		break
	default:
		terminate("Invalide CURSOR_MODE")		
}