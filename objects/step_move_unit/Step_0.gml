/// @description Insert description here

if not active exit	
if transition {
	transition = false
	var unit = c.fleet_controller.selected_unit
	c.grid.cells[unit.pos_x, unit.pos_y].occupant = noone
	move_range = select_range(c.grid, unit.pos_x, unit.pos_y, unit.range,0)
	toggle_cells(move_range, true)
	exit
}

var fc = c.fleet_controller
var u = fc.selected_unit
var u_x = u.pos_x
var u_y = u.pos_y

if (c.left_p) {
	move_unit_to(c.grid, u, u_x - 1, u_y, false)	
}
if (c.up_p) {
	move_unit_to(c.grid, u, u_x, u_y - 1, false)	
}
if (c.right_p) {
	move_unit_to(c.grid, u, u_x + 1, u_y, false)	
}
if (c.down_p) {
	move_unit_to(c.grid, u, u_x, u_y + 1, false)	
}

if (c.space_p) {
	if move_unit_to(c.grid, u, u_x, u_y, true) exit	
	toggle_cells(move_range, false)
	move_range = noone
	fc.selected_unit = noone
	c.cursor.pos_x = u_x
	c.cursor.pos_y = u_y
	change_state(c, id, ds_map_find_value(branches, STEP.BASE))
}