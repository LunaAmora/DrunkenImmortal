/// @description scr_get_depth();
/// @function scr_get_depth

if (camera_get_view_angle(view_camera[0]) > 0) && (camera_get_view_angle(view_camera[0]) <=90) depth = -y+x;

if (camera_get_view_angle(view_camera[0]) > 90) && (camera_get_view_angle(view_camera[0]) <=180) depth = x+y;

if (camera_get_view_angle(view_camera[0]) > 180) && (camera_get_view_angle(view_camera[0]) <=270) depth = -x+y;

if (camera_get_view_angle(view_camera[0]) > 270) && (camera_get_view_angle(view_camera[0]) <=360) depth = -x-y;