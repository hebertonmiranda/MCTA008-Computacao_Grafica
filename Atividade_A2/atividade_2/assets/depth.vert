#version 410

layout(location = 0) in vec3 inPosition;

uniform vec4 color;
uniform mat4 modelMatrix;
uniform mat4 viewMatrix;
uniform mat4 projMatrix;

out vec4 fragColor;
out vec4 fragRed;
out vec4 fragGreen;
out vec4 fragBlue;
out vec4 fragOrange;
out vec4 fragYellow;
out vec4 fragWhite;

void main() {
  vec4 posEyeSpace = viewMatrix * modelMatrix * vec4(inPosition, 1);

  float i = 1.0 - (-posEyeSpace.z / 5.0);
  float shade = (-posEyeSpace.z / 5.0);
  fragColor   = vec4(i, i, i, 1) * color;
  fragRed     = vec4(1.0-shade,0.0-shade,0.0-shade,1) * color;
  fragGreen   = vec4(0.0-shade,1.0-shade,0.0-shade,1) * color;
  fragBlue    = vec4(0.0-shade,0.0-shade,1.0-shade,1) * color;
  fragOrange  = vec4(1.0-shade,0.5-shade,0.0-shade,1) * color;
  fragYellow  = vec4(1.0-shade,1.0-shade,0.0-shade,1) * color;
  fragWhite   = vec4(1.0-shade,1.0-shade,1.0-shade,1) * color;

  gl_Position = projMatrix * posEyeSpace;
}