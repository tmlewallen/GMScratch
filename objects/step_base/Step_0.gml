/// @description Handles moving the cursor and selecting a unit
if not active exit
if transition { //Skip one frame between state changes for a clean swap :) 
	transition = false
	exit
}
c.cursor.visible = true
var c_y = c.cursor.pos_y
var c_x = c.cursor.pos_x
if (c.left_p) {
	move_unit_to(c.grid, c.cursor, c_x - 1, c_y, false)	
}
if (c.up_p) {
	move_unit_to(c.grid, c.cursor, c_x, c_y - 1, false)	
}
if (c.right_p) {
	move_unit_to(c.grid, c.cursor, c_x + 1, c_y, false)	
}
if (c.down_p) {
	move_unit_to(c.grid, c.cursor, c_x, c_y + 1, false)	
}

if (c.space_p) {
	var fc = c.fleet_controller
	show_debug_message("What unit is at " + string(c_x) + "," + string(c_y) + "?")
	fc.selected_unit = get_occupant_at(c.grid, c_x, c_y)
	if fc.selected_unit != noone {
		c.cursor.visible = false
		change_state(c, id, ds_map_find_value(branches, STEP.MOVE_UNIT))
	}
}