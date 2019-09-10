/// @description Create virtual arrows

var xoffset = 140;
var xx = (room_width / 2) - (xoffset / 2);
var yy = room_height - 32;

show = true;

// define the instances
virtual_arrow_left = instance_create_layer(xx, yy, "Instances", obj_virtual_arrow);
virtual_arrow_right = instance_create_layer(xx + xoffset, yy, "Instances", obj_virtual_arrow);
virtual_button = instance_create_layer(xx + xoffset / 2, yy, "Instances", obj_virtual_button);

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