/// @description Insert description here
// You can write your code in this editor




// manually check for input
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	x -= 4;
}

if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	x += 4;
}

if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	y -= 4;
}

if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
	y += 4;
}



// Pick up GOOD food
if (place_meeting(x, y, obj_foodpile) && keyboard_check_pressed(ord("E"))) {
    if (holding_food == "") {
        holding_food = "good";
    }
}

// Pick up FAKE food
if (place_meeting(x, y, obj_fakefood) && keyboard_check_pressed(ord("E"))) {
    if (holding_food == "") {
        holding_food = "bad";
        global.score = max(0, global.score - 1);
        instance_destroy(obj_fakefood);
    }
}

if (holding_food == "good" && keyboard_check_pressed(ord("Q"))) {
    var animal = instance_place(x, y, obj_animal); // Find nearby animal
    if (animal != noone) {
        with (animal) {
            instance_destroy(); // Destroy the animal, NOT the player
        }
        holding_food = ""; // Drop the food
        global.score += 1; // Add score
    }
}




