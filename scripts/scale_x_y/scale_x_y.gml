/// @desc Returns a scale for x and y given actual size and target size
/// @param {int} actualWidth width of item to be scaled
/// @param {int} actualHeight height of item to be scaled
/// @param {int} targetWidth target width of item
/// @param {int} targetHeight target height of item

var actualWidth = argument0
var actualHeight = argument1
var targetWidth = argument2
var targetHeight = argument3

return [targetWidth / actualWidth, targetHeight / actualHeight]