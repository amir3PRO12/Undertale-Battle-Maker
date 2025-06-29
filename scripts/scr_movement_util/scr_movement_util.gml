function override_movement(dir, dom, sub) {
    if (dom.pressed) {
        dir = -1;
		return dir;
    } else if (sub.pressed) {
        dir = 1;
		return dir;
    }
    if (dir == 0) {
        if (dom.held) {
            dir = -1;
        } else if (sub.held) {
            dir = 1;
        }
    } else {
        if (dir == 1) {
            if (!sub.held) {
                if (dom.held) {
                    dir = -1;
                } else {
                    dir = 0;
                }
            }
        } else {
            if (!dom.held) {
                if (sub.held) {
                    dir = 1;
                } else {
                    dir = 0;
                }
            }
        }
    }
    
    return dir;
}
