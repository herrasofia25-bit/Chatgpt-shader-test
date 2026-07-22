#version 150

in vec3 vaPosition;
in vec4 vaColor;
in vec2 vaUV0;

uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;

out vec4 color;
out vec2 texcoord;

void main() {
    color = vaColor;
    texcoord = vaUV0;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(vaPosition,1.0);
}
