/// @desc selects a range of cells around a given point and populates the given map. 
/// @param grid
/// @param origin_x source x position
/// @param origin_y source y position
/// @param outer_range the farthest range to higlight inclusive
/// @param inner_range the closest range to highlight exclusive
/// @param {ds_map} map to populate with keys


var grid = argument0
var oX = argument1
var oY = argument2
var oR = argument3
var iR = argument4
var cellSet = argument5


var cs = grid.cells
var xx = 0
var yy = 0
for (var r = iR; r <= oR; r++) {
	if r == 0 {
		cellSet[? _mpky(oX,oY)] = cs[oX,oY]
		continue
	}
	xx = oX + r;
	yy = oY;
	for (var i = r; i > 0; i--) {
		if in_range(grid, xx, yy) {
			var key = _mpky(xx,yy)
			var cell = cs[xx,yy]
			cell.meta.visited = true
			calculate_weights(grid, xx, yy)
			cellSet[? key] = cs[xx,yy]
		}
		xx--
		yy--
	}
	xx = oX;
	yy = oY - r;
	for (var i = r; i > 0; i--) {
		if in_range(grid, xx, yy) {
			var key = _mpky(xx,yy)
			var cell = cs[xx,yy]
			cell.meta.visited = true
			calculate_weights(grid, xx, yy)
			cellSet[? key] = cs[xx,yy]
		}
		xx--
		yy++
	}
	xx = oX - r;
	yy = oY;
	for (var i = r; i > 0; i--) {
		if in_range(grid, xx, yy) {
			var key = _mpky(xx,yy)
			var cell = cs[xx,yy]
			cell.meta.visited = true
			calculate_weights(grid, xx, yy)
			cellSet[? key] = cs[xx,yy]
		}
		xx++
		yy++
	}
	xx = oX;
	yy = oY + r;
	for (var i = r; i > 0; i--) {
		if in_range(grid, xx, yy) {
			var key = _mpky(xx,yy)
			var cell = cs[xx,yy]
			cell.meta.visited = true
			calculate_weights(grid, xx, yy)
			cellSet[? key] = cs[xx,yy]
		}
		xx++
		yy--
	}
}

return cellSet