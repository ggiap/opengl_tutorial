#version 330 core

out vec4 FragColor;
in vec2 texCoord;

uniform vec4 objectColor;
uniform vec4 lightColor;
uniform float ambientStrength;

void main()
{
   vec4 ambient = ambientStrength * lightColor;
   FragColor = objectColor * ambient;
}