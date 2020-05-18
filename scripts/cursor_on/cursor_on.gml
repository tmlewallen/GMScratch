/// @desc Returns true if the cursor is on the given x y
/// @param {int} x x position to check
/// @param {int} y y position to check

var xx = argument0
var yy = argument1

var cursor = global._cursor
if cursor == noone terminate("No cursor Found")
return cursor._x == xx and cursor._y == yy