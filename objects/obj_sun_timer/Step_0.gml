// count down timer
if (timer > 0) {
    timer--;
    var progress = 1 - (timer / timer_total); 
    sky_color = merge_color(make_color_rgb(135, 206, 250), make_color_rgb(128, 0, 128), progress);
    background_color = sky_color;
} else {
    global.game_over = true;
}

if (global.game_over) {
    var btn_x = room_width/2 - 60;
    var btn_y = room_height/2 + 20;
    var btn_w = 120;
    var btn_h = 50;

    if (mouse_check_button_pressed(mb_left)) {
        if (mouse_x > btn_x && mouse_x < btn_x + btn_w &&
            mouse_y > btn_y && mouse_y < btn_y + btn_h) {
            // Restart game
            game_restart();
        }
    }
}