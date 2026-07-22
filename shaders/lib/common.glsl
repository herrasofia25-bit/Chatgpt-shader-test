#ifndef COMMON_GLSL
#define COMMON_GLSL

const vec3 SUN_COLOR = vec3(1.0, 0.95, 0.85);
const vec3 SKY_COLOR = vec3(0.55, 0.72, 1.0);

float saturate(float x){
    return clamp(x,0.0,1.0);
}

#endif
