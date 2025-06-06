shader_type spatial;
render_mode skip_vertex_transform;


void vertex() {
	// Called for every vertex the material is visible on.
  VERTEX = (MODELVIEW_MATRIX * vec4(VERTEX, 1.0)).xyz;
  NORMAL = normalize((MODELVIEW_MATRIX * vec4(NORMAL, 0.0)).xyz);
  BINORMAL = normalize((MODELVIEW_MATRIX * vec4(BINORMAL, 0.0)).xyz);
  TANGENT = normalize((MODELVIEW_MATRIX * vec4(TANGENT, 0.0)).xyz);	
}

void fragment() {
	ALBEDO = vec3(0, 0, 1);
	// Called for every pixel the material is visible on.
}

//void light() {
//	// Called for every pixel for every light affecting the material.
//	// Uncomment to replace the default light processing function with this one.
//}
