/// @desc Returns true if the cursor is on the given x y
/// @param {int} x x position to check
/// @param {int} y y position to check

var xx = argument0
var yy = argument1

var cursor = instance_find(o_cursor, 0) //There should only be one
if cursor == noone {
	show_message("No cursor Found")
	game_end()
}
return cursor._x == xx and cursor._y == yy