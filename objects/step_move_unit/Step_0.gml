/// @description Insert description here

if not active exit	
if transition {
	transition = false
	var unit = c.fleet_controller.selected_unit
	c.grid.cells[unit.pos_x, unit.pos_y].occupant = noone
	move_range = select_range(c.grid, unit.pos_x, unit.pos_y, unit.max_range, unit.min_range, move_range)
	var rangeSize = ds_map_size(move_range)
	var key = ds_map_find_first(move_range)
	for (var i = 0; i < rangeSize; i++) {
		var xx = move_range[? key].pos_x
		var yy = move_range[? key].pos_y
		attack_range = select_range(c.grid, xx, yy, unit.atk_range, 0, attack_range)
		key = ds_map_find_next(move_range, key)
	}
	toggle_cells_map(attack_range, true, 1)
	toggle_cells_map(move_range, true, 0)
	exit
}

var fc = c.fleet_controller
var u = fc.selected_unit
var u_x = u.pos_x
var u_y = u.pos_y
var keyPress = c.left_p or c.up_p or c.right_p or c.down_p or c.space_p
if (c.left_p) {
	u_x--	
}
if (c.up_p) {
	u_y--	
}
if (c.right_p) {
	u_x++	
}
if (c.down_p) {
	u_y++	
}
if not keyPress exit
if not ds_map_exists(move_range, _mpky(u_x, u_y)) exit
move_unit_to(c.grid, u, u_x, u_y, true)	

if (c.space_p) {
	
	if not move_unit_to(c.grid, u, u_x, u_y, true) exit	
	toggle_cells_map(move_range, false, 0)
	toggle_cells_map(attack_range, false, 1)
	ds_map_clear(move_range)
	ds_map_clear(attack_range)
	attack_range = select_range(c.grid, u_x, u_y, u.atk_range, 0, attack_range)
	toggle_cells_map(attack_range, true, 1)
	fc.selected_unit = noone
	c.cursor.pos_x = u_x
	c.cursor.pos_y = u_y
	change_state(c, id, ds_map_find_value(branches, STEP.BASE))
}