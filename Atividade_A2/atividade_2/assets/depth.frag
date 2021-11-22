#version 410

in vec4 fragColor;
in vec4 fragRed;
in vec4 fragGreen;
in vec4 fragBlue;
in vec4 fragOrange;
in vec4 fragYellow;
in vec4 fragWhite;
out vec4 outColor;
void main() {
  if (gl_FrontFacing) {
    outColor = fragBlue;
  } else {
    outColor = vec4(fragColor.r * 0.5, 0, 0, fragColor.a);
  }
}