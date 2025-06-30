function camera_init() {
    views_enable(0);
    view_set_size(960, 540);
    
    target = noone;
    camera = view_camera[0];
    width = camera_get_view_width(camera);
    height = camera_get_view_height(camera);
    x = camera_get_view_x(camera);
    y = camera_get_view_y(camera);
    xoffset = 0;
    yoffset = 0;
    interpolation = 1;
}
function camera_update() {
    if (target != noone) {
        x = lerp(x, target.x - (width * 0.5), interpolation);
        y = lerp(y, target.y - (height * 0.5), interpolation);
        x = floor(x);
        y = floor(y);
        x = clamp(x + xoffset, 0, room_width - width);
        y = clamp(y + yoffset, 0, room_height - height);
    }
    
    camera_set_view_size(camera, width, height);
    camera_set_view_pos(camera, x, y);
}
function camera_target(obj) {
    if (instance_exists(obj)) {
        obj_camera.target = obj;
    }
}
function camera_set_size(w, h) {
    obj_camera.width = w;
    obj_camera.height = h;
}
function camera_interpolate(val) {
    obj_camera.interpolation = clamp(abs(val), 0, 1);
}
function camera_set_offset(x, y) {
    obj_camera.xoffset = x;
    obj_camera.yoffset = y;
}
function views_enable() {
    for (var i = 0; i < argument_count; i++) {
        view_set_visible(argument[i], true);
    }
}
function views_disable() {
    for (var i = 0; i < argument_count; i++) {
        view_set_visible(argument[i], false);
    }
}
function view_set_size(width, height) {
    view_set_wport(0, width);
    view_set_hport(0, height);
}
function view_set_offset(x, y) {
    view_set_xport(0, x);
    view_set_yport(0, y);
}