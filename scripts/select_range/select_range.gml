/// @desc selects a range of cells around a given point
/// @param grid
/// @param origin_x source x position
/// @param origin_y source y position
/// @param outer_range the farthest range to higlight
/// @param inner_range the closest range to highlight

var grid = argument0
var oX = argument1
var oY = argument2
var oR = argument3
var iR = argument4

var cs = grid.cells
var s = []
var ndx = 0
var xx = 0
var yy = 0
for (var r = iR; r < oR; r++) {
	if r == 0 continue
	xx = oX + r;
	yy = oY;
	for (var i = r; i > 0; i--) {
		if in_range(grid, xx, yy) and cs[xx,yy].occupant == noone s[ndx++] = cs[xx,yy]
		xx--
		yy--
	}
	xx = oX;
	yy = oY - r;
	for (var i = r; i > 0; i--) {
		if in_range(grid, xx, yy) and cs[xx,yy].occupant == noone s[ndx++] = cs[xx,yy]
		xx--
		yy++
	}
	xx = oX - r;
	yy = oY;
	for (var i = r; i > 0; i--) {
		if in_range(grid, xx, yy) and cs[xx,yy].occupant == noone s[ndx++] = cs[xx,yy]
		xx++
		yy++
	}
	xx = oX;
	yy = oY + r;
	for (var i = r; i > 0; i--) {
		if in_range(grid, xx, yy) and cs[xx,yy].occupant == noone s[ndx++] = cs[xx,yy]
		xx++
		yy--
	}
}

return s