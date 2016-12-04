#version 330 core

in vec3 vNormal;
in vec3 vFragPos;
in vec3 vTexCoords;

out vec4 FragColor;

const vec3 sundir = vec3(0, 1, 0); // Sun Direction

void main() {
	float in_sun = clamp(dot(normalize(vNormal), sundir) * 2.0, -1, 1);
	FragColor = vec4(vec3(1.0, 0.2176, 0.028991) * in_sun + vec3(0, 0, 0.0063), 1.0);
}