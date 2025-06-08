shader_type spatial;

render_mode unshaded;
render_mode skip_vertex_transform;

void vertex() {
	VERTEX = (MODELVIEW_MATRIX * vec4(VERTEX, 1.0)).xyz;
	NORMAL = normalize((MODELVIEW_MATRIX * vec4(NORMAL, 0.0)).xyz);
}

void fragment() {
	ALBEDO = vec3(0, 1, 0) * dot(vec3(0, 0, 1), NORMAL);
}

//void light() {
//	// Called for every pixel for every light affecting the material.
//	// Uncomment to replace the default light processing function with this one.
//}
