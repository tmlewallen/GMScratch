/// @description Insert description here
// You can write your code in this editor
c.grid = instance_create_layer(0,0,"Instances",obj_grid_sprite)
c.cursor = instance_create_layer(0,0,"Instances",obj_cursor)
c.cursor.depth = -100

var player = instance_create_layer(0,0,"Instances", obj_player)
player.image_index = 0
player.depth = -1
var enemy = instance_create_layer(0,0,"Instances", obj_player)
enemy.image_index = 1
enemy.depth = -1

move_unit_to(c.grid, enemy, c.grid.cells_x - 1, c.grid.cells_y - 1, true) //move enemy to bottom right

//Moving to top left must be last so that other movements don't unset this cell
//This is in general bad but not worth the extra effort to get that edgecase
move_unit_to(c.grid, player, 0, 0, true) //Move player to top left

var fc = instance_create_layer(0,0,"Instances", cont_fleet)
fc.fleet_map[TEAM.PLAYER,0] = player
fc.fleet_map[TEAM.ENEMY,0] = enemy
fc.selected_unit = noone
c.fleet_controller = fc