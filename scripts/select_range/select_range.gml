/// @desc selects a collection of cells within a range of a given point, accounting for penalties of each cell
/// @param {o_grid} grid grid to select from
/// @param {int} range range to select (inclusive)
/// @param {int} x x position of origin cell
/// @param {int} y y position of origin cell

var ndx = 0
var range = argument[ndx++]
var xx = argument[ndx++]
var yy = argument[ndx++]

var grid = noone
if argument_count > ndx {
	grid = argument[ndx++]	
} else {
	grid = get_grid()	
}


assert_type(grid, o_grid, "Grid must be a grid")

var origin = get_cell_at_x_y(xx, yy, grid)
origin._meta._sum = 0
origin._meta._visited = true
var closedSet = []
var ndx = 0
var q = ds_priority_create()
ds_priority_add(q, origin, 0)
while (ds_priority_size(q) > 0) {
	
	var cell = ds_priority_delete_min(q)
	var cellMeta = cell._meta
	
	var neighbors = cell._neighbors
	for (var i = 0; i < array_length_1d(neighbors); i++) {
		var n = neighbors[i]
		var nMeta = n._meta
		var newSum = cellMeta._sum + n._weight
		if newSum < nMeta._sum {
			nMeta._sum = newSum
			nMeta._prev = cell
		}
		if newSum <= range and not nMeta._visited {
			nMeta._visited = true
			ds_priority_add(q, n, newSum)	
		}
	}
	closedSet[ndx++] = cell
}

ds_priority_destroy(q)

return closedSet