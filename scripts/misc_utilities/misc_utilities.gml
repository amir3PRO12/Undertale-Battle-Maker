function instance_create(x, y, obj) {
    var inst = instance_create_depth(x, y, 0, obj);
    inst.depth = -inst.bbox_bottom;
    return inst;
}
