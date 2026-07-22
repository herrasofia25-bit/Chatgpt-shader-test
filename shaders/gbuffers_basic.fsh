#version 150

uniform sampler2D gtexture;

in vec4 color;
in vec2 texcoord;

out vec4 fragColor;

void main() {
    vec4 tex = texture(gtexture, texcoord);

    // Slightly brighter lighting
    tex.rgb *= 1.15;

    // Tiny bloom effect
    tex.rgb += max(tex.rgb - 0.8, 0.0) * 0.25;

    fragColor = tex * color;
}
