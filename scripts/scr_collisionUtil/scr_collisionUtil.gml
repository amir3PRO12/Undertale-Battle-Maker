function slope_get_point(_slope) {
    with (_slope) {
        var bbox_width = bbox_right - bbox_left
        var bbox_height = bbox_bottom - bbox_top;
        var other_side = image_xscale > 0 ? other.bbox_right : other.bbox_left;
        var start_side = image_xscale > 0 ? bbox_right : bbox_left;
        var relative_pos = image_xscale > 0 ? start_side - other_side : other_side - start_side;
        var point = clamp(relative_pos * ((bbox_height / 32) / (bbox_width / 32)), 0, bbox_height);
        if (image_yscale > 0) {
            return point;
        } else {
            return bbox_height - point;
        }
    }
}
function slope_place(_x, _y) {
    var old_x = x;
    var old_y = y;
    x = _x;
    y = _y;
    
    var slope = instance_place(x, y, obj_t_wall);
    
    if (slope != noone) {
        var point = slope.bbox_top + slope_get_point(slope);
        if (slope.image_yscale > 0 && bbox_bottom >= point) || (slope.image_yscale < 0 && bbox_top <= point) {
            x = old_x;
            y = old_y;
            return slope;
        }
    }
    
    x = old_x; 
    y = old_y;
    return noone;
}
function slope_meeting(_x, _y) {
    return slope_place(_x, _y) != noone;
}
function semiWall_place(_x, _y) {
    var old_x = x;
    var old_y = y;
    x = _x;
    y = _y;
    
    var semiWall = instance_place(x, y, obj_semiWall);
    
    var falling = true;
    if (variable_instance_exists(self.id, "vsp")) {
        falling = vsp >= 0;
    }
    
    if (semiWall != noone) {
        if (bbox_bottom >= semiWall.bbox_top && bbox_bottom <= (semiWall.bbox_top + 2) && falling) {
            x = old_x;
            y = old_y;
            return semiWall;
        }
    }
    
    x = old_x;
    y = old_y;
    return noone;
}
function semiWall_meeting(_x, _y) {
    return semiWall_place(_x, _y) != noone;
}
function flat_meeting(_x, _y) {
    return place_meeting(_x, _y, obj_wall) || semiWall_meeting(_x, _y);
}
function absFloor(val) {
    return val > 0 ? floor(val) : ceil(val);
}
function absCeil(val) {
    return val > 0 ? ceil(val) : floor(val);    
}
function jump_speed_to_height(vsp) {
    if (GRAVITY == 0) {
        return -1;
    }
    
    var height = 0;
    for (height = 0; vsp > 0; height += vsp) {
        vsp -= GRAVITY;
    }
    if (vsp < 0) {
        height -= vsp;
    }
    return height;
}
function jump_height_to_speed(height) {
    if (GRAVITY == 0) {
        return -1;
    }
    
    var vsp = 0;
    for (vsp = 0; height > 0; vsp += GRAVITY) {
        height -= vsp;
    }
    if (height < 0) {
        vsp -= GRAVITY;
    }
    return vsp;
}
