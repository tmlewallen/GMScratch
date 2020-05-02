/// @description Insert description here
// You can write your code in this editor
if not active exit
if transition {
	transition = false
	exit;
}
for (var xx = 0; xx < c.grid.cells_x; xx++) {
	for (var yy = 0; yy < c.grid.cells_y; yy++) {
		with(c.grid.cells[xx,yy]) {
			
			show_debug_message(string(xx) + "," + string(yy) + " " + string(occupant))
		}
	}
}
change_state(c, id, start)