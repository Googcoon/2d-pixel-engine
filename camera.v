module vixel

import math
import gg.m4



struct Camera {
	position m4.Vec4
	direction m4.Vec4
	target Object
}


pub fn new_camera() m4.Mat4{
	mut camera_pos := m4.vec3(0.0, 0.0, 3.0)
	mut camera_target := m4.zero_v4()
	mut camera_direction := (camera_pos - camera_target).normalize3()
	mut up := m4.vec3(0.0, 1.0, 0.0)
	mut camera_right := (up % camera_direction).normalize3()
	mut camera_up := camera_direction % camera_right
	mut view := m4.look_at(m4.vec3(0.0, 0.0, 3.0), m4.zero_v4(), m4.vec3(0.0, 1.0, 0.0))
	return view
}


