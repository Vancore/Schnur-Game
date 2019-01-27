//happens once every frame
//every object normally is drawn by default
//var defines a variable as only temporary, it disappears after the event
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

draw_set_font(fnt_score);
draw_text(cx + cw/2.3, cy + 25, (string("Estates: ") + string(gamescore)));