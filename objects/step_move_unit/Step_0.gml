/// @description Insert description here

if not active exit	
if transition {
	transition = false
	exit
}

var u = c.selected_unit
var u_x = c.selected_unit.pos_x
var u_y = c.selected_unit.pos_y

if (c.left_p) {
	move_unit_to(c.grid, u, u_x - 1, u_y, true)	
}
if (c.up_p) {
	move_unit_to(c.grid, u, u_x, u_y - 1, true)	
}
if (c.right_p) {
	move_unit_to(c.grid, u, u_x + 1, u_y, true)	
}
if (c.down_p) {
	move_unit_to(c.grid, u, u_x, u_y + 1, true)	
}

if (c.space_p) {
	c.selected_unit = noone
	change_state(c, id, branches[0])
}