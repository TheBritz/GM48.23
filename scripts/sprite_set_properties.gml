///sprite_set_properties(sprite_index, image_index, image_speed)
var spr = argument0;
var imgInd = argument1;
var imgSpd = argument2;

if(sprite_exists(spr) && !is_undefined(spr))
{
  var slimeSpr = asset_get_index("EnemySlime_spr");
  sprite_index = spr;
  if(!is_undefined(imgInd))
  {
    image_index = imgInd;
  }
  if(!is_undefined(imgSpd))
  {
    image_speed = imgSpd;
  }
  return true;
}

return false;
