/// @desc sets a cursor mode 
/// @param {CURSOR_MODE} mode the mode of the cursor

enum CURSOR_MODE {
	FREE,
	CELL_SELECT
}

var mode = argument0

switch (mode) {
	case CURSOR_MODE.FREE:
	
		break
	case CURSOR_MODE.CELL_SELECT:
		
		break
	default:
		terminate("Invalide CURSOR_MODE")		
}