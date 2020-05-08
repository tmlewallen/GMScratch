/// @description Insert description here
// You can write your code in this editor

if _grid == noone exit
var pos = pos_to_grid(_grid, mouse_x, mouse_y)
//show_debug_message(string(pos[0]) + "," + string(pos[1]))
move_unit_to(_grid, id, pos[0], pos[1], false)