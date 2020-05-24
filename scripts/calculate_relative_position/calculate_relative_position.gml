enum RELATIVE_POSITION {
	TOP_LEFT,
	TOP_CENTER, 
	TOP_RIGHT,
	CENTER_LEFT,
	CENTER_CENTER,
	CENTER_RIGHT,
	BOTTOM_LEFT,
	BOTTOM_CENTER, 
	BOTTOM_RIGHT
}

/// @desc calculates x,y of a given position of a given square
/// @param {int} x x position of window
/// @param {int} y y position of window
/// @param {int} w width of window
/// @param {int} h height of window
/// @param {RELATIVE_POSITION} pos RELATIVE_POSITION

var xx = argument0
var yy = argument1
var w = argument2
var h = argument3
var pos = argument4

var dx = floor(w/3)
var dy = floor(h/3)

var offsetX = 0
var offsetY = 0

switch (pos) {
	case RELATIVE_POSITION.TOP_LEFT:
		break
	case RELATIVE_POSITION.TOP_CENTER:
		offsetX += dx
		break
	case RELATIVE_POSITION.TOP_RIGHT:
		offsetX += 2*dx
		break
	case RELATIVE_POSITION.CENTER_LEFT:
		offsetY += dy
		break
	case RELATIVE_POSITION.CENTER_CENTER:
		offsetX += dx
		offsetY += dy
		break
	case RELATIVE_POSITION.CENTER_RIGHT:
		offsetX += 2*dx
		offsetY += dy
		break
	case RELATIVE_POSITION.BOTTOM_LEFT:
		offsetY += 2*dy
		break
	case RELATIVE_POSITION.BOTTOM_CENTER:
		offsetX += dx
		offsetY += 2*dy
		break
	case RELATIVE_POSITION.BOTTOM_RIGHT:
		offsetX += 2*dx
		offsetY += 2*dy
		break
	default:
		terminate("Invalid window position")
}

return [offsetX + xx, offsetY + yy]