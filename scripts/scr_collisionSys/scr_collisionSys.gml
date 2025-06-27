function scr_collision_init(){
	hsp = 0;
	vsp = 0;
    fracHsp = hsp;
    fracVsp = vsp;
    collided = {
        top: false,
        left: false,
        right: false,
        bottom: false
    }
    bbox_width = bbox_right - bbox_left;
    bbox_height = bbox_bottom - bbox_top;
    
    /*
     * This collision system is usually used for platformers,
     * but it can easily be used with RPGs by setting the
     * gravity to 0.
     */
    GRAVITY = 0;
}
function scr_collision() {
    var old_x = x;
    var old_y = y;
    
    bbox_width = bbox_right - bbox_left;
    bbox_height = bbox_bottom - bbox_top;
    
    fracHsp = hsp - absFloor(hsp);
    fracVsp = vsp - absFloor(vsp);
    
    if (!flat_meeting(x + hsp, y + vsp) && !slope_meeting(x + hsp, y + vsp)) {
        x += hsp;
        y += vsp;
    } else {
        hsp -= fracHsp;
        vsp -= fracVsp;
        
        var ahsp = abs(hsp);
        var avsp = abs(vsp);
    	var maxSpeed = max(ahsp, avsp);
    	var xIncrement = (maxSpeed == ahsp ? 1 : ahsp / avsp) * sign(hsp);
    	var yIncrement = (maxSpeed == avsp ? 1 : avsp / ahsp) * sign(vsp);
    	for (var i = 0; i < maxSpeed; i++) {
            if (place_meeting(x + xIncrement, y, obj_wall) && (flat_meeting(x, y + yIncrement) || slope_meeting(x, y + yIncrement))) {
                break;
            }
            var slopeCeiling = (absCeil(yIncrement) == -1 && slope_meeting(x, y + yIncrement) && sign(slope_place(x, y + yIncrement).image_yscale) == 1);
            if (!flat_meeting(x, y + yIncrement) && !slope_meeting(x, y + yIncrement) && !slopeCeiling) {
    			y += yIncrement
            } else {
                vsp = 0;
                yIncrement = 0;
            }
            var slope = slope_place(x + xIncrement, y);
            var slopeWall = (slope_meeting(x + xIncrement, y) && (sign(slope.image_xscale) == -absCeil(xIncrement) || (slope.image_yscale > 0 && bbox_bottom > (slope.bbox_bottom + 1)) || (slope.image_yscale < 0 && bbox_top < (slope.bbox_top - 1))))
            while (slope_meeting(x + xIncrement, y) && !flat_meeting(x + xIncrement, y) && !slopeWall) {
                if (slope.image_yscale > 0) {
                    y--;
                } else {
                    y++;
                }
            }
    		if (!place_meeting(x + xIncrement, y, obj_wall) && !slopeWall) {
    			x += xIncrement
    		} else {
                if (!place_meeting(x + xIncrement, y - 1, obj_wall) && !slopeWall) {
                    y--;
                    x += xIncrement;
                } else {
                    hsp = 0;
                    xIncrement = 0;
                }
            }
            if (slope_meeting(old_x, y + 1) && slope_place(old_x, y + 1).image_yscale > 0 && !slope_meeting(x, y + 1) && !slope_meeting(x, y) && vsp >= 0) {
                slope = slope_place(old_x, y + 1);
                y += (slope.bbox_top + slope_get_point(slope)) - bbox_bottom;
            }
            
            if (xIncrement == 0 && yIncrement == 0) {
                break;
            }
    	}
        
        hsp += fracHsp;
        vsp += fracVsp;
    }
    
    collided = {
        top: place_meeting(x, y - 1, obj_wall),
        left: place_meeting(x - 1, y, obj_wall),
        right: place_meeting(x + 1, y, obj_wall),
        bottom: flat_meeting(x, y + 1) || slope_meeting(x, y + 1)
    }
    
    if (!collided.bottom) {
        vsp += GRAVITY
    }
    
    if (collided.top || collided.bottom) {
        vsp = 0;
    }
    if (collided.left || collided.right) {
        hsp = 0;
    }
}
