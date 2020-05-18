/// @description Insert description here
// You can write your code in this editor
singleton()
var grid = get_grid()
var pos = pos_to_grid(grid, MOUSEX, MOUSEY)
//show_debug_message(string(pos[0]) + "," + string(pos[1]))
move_unit_to(grid, id, pos[0], pos[1], false)