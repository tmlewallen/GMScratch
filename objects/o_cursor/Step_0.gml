/// @description Insert description here
// You can write your code in this editor

if _grid == noone exit
var pos = pos_to_grid(_grid, mouse_x, mouse_y)
//show_debug_message(string(pos[0]) + "," + string(pos[1]))
_x = pos[0]
_y = pos[1]