/// @description Insert description here
// You can write your code in this editor

if (update) {
	update = false
	var groutX = (cells_x - 1) * grout;
	var groutY = (cells_y - 1) * grout;
	var true_size_x = (size_x - 2 * margin_x) - groutX;
	var true_size_y = (size_y - 2 * margin_y) - groutY;

	var tileSpriteWidth = sprite_get_width(object_get_sprite(obj_grid_cell));
	var tileSpriteHeight = sprite_get_height(object_get_sprite(obj_grid_cell));

	var slackX = (true_size_x - (tileSpriteWidth * cells_x)) / cells_x;
	var slackY = (true_size_y - (tileSpriteHeight * cells_y)) / cells_y;
	cell_size_x = slackX + tileSpriteWidth;
	cell_size_y = slackY + tileSpriteHeight;
	var tileScaleX = cell_size_x / tileSpriteWidth;
	var tileScaleY = cell_size_y / tileSpriteHeight;

	for (x_i = 0; x_i < cells_x; x_i++) {
		for (y_i = 0; y_i < cells_y; y_i++) {
			//with(instance_create_layer((x_i * cell_size_x) + offset_x + margin_x, (y_i * cell_size_y) + offset_y + margin_y, "Instances", obj_grid_cell)) {
			with(cells[x_i, y_i]) {
				pos_x = other.x_i
				pos_y = other.y_i
				x = (other.x_i * other.cell_size_x) + other.offset_x + other.margin_x + (other.x_i * other.grout);
				y = (other.y_i * other.cell_size_y) + other.offset_y + other.margin_y + (other.y_i * other.grout);
				image_xscale = tileScaleX;
				image_yscale = tileScaleY;
				//image_index = other.x_i + other.y_i mod image_number
			}
		}
	}
	with (i_pos_movable) {
		if constrained {
			var unitSpriteWidth = sprite_get_width(object_get_sprite(object_index));
			var unitSpriteHeight = sprite_get_height(object_get_sprite(object_index));
	
			//show_message("Sprite Width: " + string(unitSpriteWidth))
			//show_message("Sprite Height: " + string(unitSpriteHeight))
			var unitSlackX = other.cell_size_x - unitSpriteWidth;
			var unitSlackY = other.cell_size_y - unitSpriteHeight;
	
			//show_message("Unit Slack X:" + string(unitSlackX))
			//show_message("Unit Slack Y: " + string(unitSlackY))

			image_xscale = (unitSpriteWidth + unitSlackX) / unitSpriteWidth
			image_yscale = (unitSpriteHeight + unitSlackY) / unitSpriteHeight
		}
		
	}
}
with (i_pos_movable) {
	x = pos_x * other.cell_size_x + (pos_x * other.grout)
	y = pos_y * other.cell_size_y + (pos_y * other.grout)
}