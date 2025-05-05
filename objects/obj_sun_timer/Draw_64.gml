// Make the sun move across the top
var progress = 1 - (timer / timer_total);
var sun_x = lerp(sun_x_start, sun_x_end, progress);

draw_sprite(spr_sun, 0, sun_x, sun_y);

if (global.game_over) {
    // Set text alignment
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    
    // "Game Over" message
    var message = "Game Over!\nFinal Score: " + string(global.score);
    draw_text(room_width/2, room_height/2 - 60, message);

    // Button position
    var btn_x = room_width/2 - 60;
    var btn_y = room_height/2 + 20;
    var btn_w = 120;
    var btn_h = 50;

    // make button green
    draw_set_color(c_lime);
    draw_rectangle(btn_x, btn_y, btn_x + btn_w, btn_y + btn_h, false); // <--- false = filled!

    // replay inside button
    draw_set_color(c_black);
    draw_text(room_width/2, btn_y + btn_h/2 - 8, "REPLAY");
}