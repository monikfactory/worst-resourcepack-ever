#version 150

in vec3 position;
in vec2 texcoord;

uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;

out vec2 vTexcoord;

void main() {
    vTexcoord = texcoord;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
}