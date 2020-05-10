/// @desc Initializes game
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var game = argument0
var transition = argument1
var machine = argument2

if game._main == noone exit

var grid = game._main._grid


//To prevent weird conflicts with moving multiple units coming from the 
//same position in before they 'occupy' anything, this can move them all without occupying
//then come back and move them again to occupy
var enemies = []
enemies[0] = instance_create_layer(0,0,L_VIEW, o_enemy)
move_unit_to(grid, enemies[0], 5,5, true)

var players = []
players[0] = instance_create_layer(0,0,L_VIEW, o_player)
move_unit_to(grid, players[0], 0,0, true)

game._players = players
game._enemies = enemies
game._turn = TURN.PLAYER

change_state(machine, "CHANGE_TURN")