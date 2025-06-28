function override_movement(dir, dom, sub) {
    if (dir == 0) {
        if (dom) {
            dir = -1;
        } else if (sub) {
            dir = 1;
        }
    } else {
        if (dir == 1) {
            if (!sub) {
                if (dom) {
                    dir = -1;
                } else {
                    dir = 0;
                }
            }
        } else {
            if (!dom) {
                if (sub) {
                    dir = 1;
                } else {
                    dir = 0;
                }
            }
        }
    }
    
    return dir;
}
