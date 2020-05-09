/// @desc Takes an x,y pos and an array of cells and return true if that cell is in the array
/// @param {array[o_grid]} range 
/// @param {int} x
/// @param {int} y

var range = argument0
var xx = argument1
var yy = argument2

for (var i = 0; i < array_length_1d(range); i++){
	var cell = range[i]
	if cell._x == xx and cell._y == yy return cell
}
return noone