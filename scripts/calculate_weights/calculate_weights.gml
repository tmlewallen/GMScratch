/// @desc Set weights for meta nodes
/// @param grid grid
/// @param xx x
/// @param yy y

var grid = argument0
var cells = grid.cells
var xx = argument1
var yy = argument2
var mme = cells[xx,yy].meta

var rWeight = 1000, uWeight = 1000, lWeight = 1000, dWeight = 1000;
var rNeighbor = noone, uNeighbor = noone, lNeighbor = noone, dNeighbor = noone;

if in_range(grid, xx + 1, yy) and cells[xx + 1, yy].meta.visited {
	rNeighbor = cells[xx + 1, yy]
	rWeight = mme.weight + rNeighbor.meta.calc_weight
}
if in_range(grid, xx, yy - 1) and cells[xx, yy - 1].meta.visited {
	uNeighbor = cells[xx, yy - 1]
	uWeight = mme.weight + uNeighbor.meta.calc_weight
}
if in_range(grid, xx - 1, yy) and cells[xx - 1, yy].meta.visited {
	lNeighbor = cells[xx - 1, yy]
	lWeight = mme.weight + lNeighbor.meta.calc_weight
}
if in_range(grid, xx, yy + 1) and cells[xx, yy + 1].meta.visited {
	dNeighbor = cells[xx, yy + 1]
	dWeight = mme.weight + dNeighbor.meta.calc_weight
}
var tW1 = 0, tN1 = noone;
var tW2 = 0, tN2 = noone;
if rWeight < uWeight { 
	tW1 = rWeight
	tN1 = rNeighbor
}
else {
	tW1 = uWeight
	tN1 = uNeighbor
}

if lWeight < dWeight { 
	tW2 = lWeight
	tN2 = lNeighbor
}
else {
	tW2 = dWeight
	tN2 = dNeighbor
}
if tW1 < tW2 {
	mme.calc_weight = tW1
	mme.prev = tN1
}
else {
	mme.calc_weight = tW2
	mme.prev = tN2
}
