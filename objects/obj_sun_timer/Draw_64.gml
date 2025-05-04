// Draw the smiling sun moving across the top
var progress = 1 - (timer / timer_total);
var sun_x = lerp(sun_x_start, sun_x_end, progress);

draw_sprite(spr_sun, 0, sun_x, sun_y);

if (global.game_over) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    
    var message = "Game Over!\nFinal Score: " + string(global.score);
    draw_text(room_width/2, room_height/2, message);
}