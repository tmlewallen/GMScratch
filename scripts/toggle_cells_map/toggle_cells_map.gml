/// @desc Will set animation for an array of cells to given boolean
/// @param cell_map {ds_map} map of cells to toggle
/// @param visible boolean to set visible property to on cells
/// @param imgNdx image index to turn on for the cells


var cellMap = argument0
var setTo = argument1
var imgNdx = argument2

var size = ds_map_size(cellMap)
var key = ds_map_find_first(cellMap)
for (var i = 0; i < size; i++) {
	cellMap[? key].visible = setTo
	cellMap[? key].image_index = imgNdx
	key = ds_map_find_next(cellMap, key)
}