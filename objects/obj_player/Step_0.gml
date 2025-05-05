// === Movement with WASD ===
if (keyboard_check(ord("A"))) x -= 4;
if (keyboard_check(ord("D"))) x += 4;
if (keyboard_check(ord("W"))) y -= 4;
if (keyboard_check(ord("S"))) y += 4;

// === Pick up GOOD food from foodpile ===
if (place_meeting(x, y, obj_foodpile) && keyboard_check_pressed(ord("E"))) {
    if (holding_food == "") {
        var random_pick = irandom(99); 
        if (random_pick < fake_food_chance) {
            holding_food = "bad"; 
        } else {
            holding_food = "good"; 
        }
    }
}

// === Feed animals ===
if (keyboard_check_pressed(ord("Q"))) {
    if (holding_food != "") {
        var animal = instance_place(x, y, obj_animal);
        var garbage = instance_place(x, y, obj_garbage);

        if (animal != noone) {
            if (holding_food == "good") {
                with (animal) {
                    instance_destroy(); 
                }
                global.score += 1;
            }
            else if (holding_food == "bad") {
                global.score = max(0, global.score - 1); 
            
            }
            holding_food = ""; 
        }
        else if (garbage != noone) {
            if (holding_food == "good") {
                global.score = max(0, global.score - 1); 
            }
            else if (holding_food == "bad") {
                global.score += 1; 
            }
            holding_food = "";
        }
    }
}

if (!global.game_over) {
}