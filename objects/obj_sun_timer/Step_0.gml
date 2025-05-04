// count down timer
if (timer > 0) {
    timer--;
    var progress = 1 - (timer / timer_total); // <-- correct math here!
    sky_color = merge_color(make_color_rgb(135, 206, 250), make_color_rgb(128, 0, 128), progress);
    background_color = sky_color;
} else {
    global.game_over = true;
}