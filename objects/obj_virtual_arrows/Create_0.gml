/// @description Create virtual arrows

var offset = 200;
var xx = (room_width / 2) - (offset / 2);
var yy = room_height - 130;

show = true;

// define the instances
virtual_arrow_left = instance_create_layer(xx, yy + offset / 2, "Instances", obj_virtual_arrow);
virtual_arrow_right = instance_create_layer(xx + offset, yy + offset / 2, "Instances", obj_virtual_arrow);
virtual_button = instance_create_layer(xx + offset / 2, yy + offset / 2, "Instances", obj_virtual_button);

// make the buttons a little transparent
var alpha = 0.7;
virtual_arrow_left.image_alpha = alpha;
virtual_arrow_right.image_alpha = alpha;
virtual_button.image_alpha = alpha;

// rotate the sprite accordingly
virtual_arrow_left.image_angle = 180;

// add a "dir" to each
virtual_arrow_left.dir = "left";
virtual_arrow_right.dir = "right";

virtual_arrow_left.visible = show;
virtual_arrow_right.visible = show;
virtual_button.visible = show;