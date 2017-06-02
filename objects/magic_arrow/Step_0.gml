image_angle = radtodeg(arctan2(x - player.x, y - player.y));
motion_set (image_angle + 90, velo);

if x < 0 || x > room_width || y < 0 || y > room_height{
    instance_destroy(); 
}