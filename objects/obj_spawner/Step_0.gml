/// @description Insert description here
// You can write your code in this editor

spawn_timer--;
fakefood_timer--;

// Limit the maximum amount of animals
var max_animals = 40;

if (spawn_timer <= 0) {
	var dynamic_max_animals = 20 + (global.score div 5); //+1 animal every 5points
	if (instance_number(obj_animal) < dynamic_max_animals) {
		instance_create_layer(irandom_range(32, room_width-32), irandom_range(32, room_height-32), "Instances", obj_animal);
	}
	if (spawn_delay > 30) spawn_delay -= 5;
	spawn_timer = spawn_delay;
}









