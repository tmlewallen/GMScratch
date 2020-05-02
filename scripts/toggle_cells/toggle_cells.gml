/// @desc Will set animation for an array of cells to given boolean
/// @param cell_array array of cells to toggle
/// @param visible boolean to set visible property to on cells


var cellArray = argument0
var setTo = argument1
for (var i = 0; i < array_length_1d(cellArray); i++) {
	cellArray[i].visible = setTo
}