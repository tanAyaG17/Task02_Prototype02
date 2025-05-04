/// @description Insert description here
// You can write your code in this editor

// Draw player sprite
draw_self();

// Draw food if holding
if (holding_food == "good") {
    draw_sprite(spr_heldfood, 0, x + 8, y - 8); // Good food
}
else if (holding_food == "bad") {
    draw_sprite(spr_fakefood, 0, x + 8, y - 8); // Fake food
}





