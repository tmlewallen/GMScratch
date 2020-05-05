/// @desc maps an x,y room pos to a grid cell
/// @param {o_grid} grid
/// @param {int} room_x 
/// @param {int} room_y

var grid = argument0
var xx = argument1
var yy = argument2

if not instance_exists(grid) or grid.object_index != o_grid {
	show_message("Invalid Grid passed to pos_to_grid")
	game_end()
}

var wLowerBound = grid._margin_w + grid._off_w
var wUpperBound = wLowerBound + (grid._cell_w * grid._cells_x + ((grid._cells_x - 1) * grid._grout))
var hLowerBound = grid._margin_h + grid._off_h
var hUpperBound = hLowerBound + (grid._cell_w * grid._cells_y + ((grid._cells_y - 1) * grid._grout))

if xx < wLowerBound or xx > wUpperBound or yy < hLowerBound or yy > hUpperBound {
	return [0,0]	
}

var adjX = xx - wLowerBound
var adjY = yy - hLowerBound
var adjGridW = wUpperBound - wLowerBound
var adjGridH = hUpperBound - hLowerBound
var scaledX = floor(grid._cells_x * adjX / adjGridW)
var scaledY = floor(grid._cells_y * adjY / adjGridH)

return [scaledX, scaledY]