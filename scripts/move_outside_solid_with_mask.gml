///move_outside_solid_with_mask(direction, maxDist, maskIndex)
var dir = argument0;
var maxDist = argument1;
var mask = argument2;

var maskOld = mask_index;
mask_index = mask;
move_outside_solid(dir, speed);
mask_index = maskOld;