module camera
import gg.m4
import types {Object}
import math


struct Camera {
	position: m4.Vec4,
	direction: m4.Vec4,
	target: Object
}


fn NewCamera(CameraType camType, ) {
	m4.Vec4 cameraPos = m4.vec3(0.0f, 0.0f, 3.0f);
	m4.Vec4 cameraTarget = m4.vec3(0.0f, 0.0f, 0.0f);
	m4.Vec4 cameraDirection = normalize(m4.sub(cameraPos, cameraTarget));
//	glm::vec3 cameraPos = glm::vec3(0.0f, 0.0f, 3.0f);  
	m4.ortho()
}

fn normalize(const vec4 &v) m4.Vec4
{
   float length_of_v = math.sqrt2((v.x * v.x) + (v.y * v.y) + (v.z * v.z));
   return vec3(v.x / length_of_v, v.y / length_of_v, v.z / length_of_v);
}