#version 150

in vec2 vTexcoord;
out vec4 fragColor;

uniform sampler2D textureSampler;
uniform float time;
uniform vec3 blockPosition;
uniform vec3 playerPosition;

void main() {
    vec2 uv = vTexcoord;
    float distance = length(playerPosition.xy - blockPosition.xy);
    float distortion = sin(uv.y * 10.0 + time) * 0.1 / distance;
    uv.x += distortion;
    fragColor = texture(textureSampler, uv);
}