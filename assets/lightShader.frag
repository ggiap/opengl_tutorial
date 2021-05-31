#version 330 core

out vec4 FragColor;
in vec2 texCoord;

uniform sampler2D myTexture;
uniform vec4 objectColor;
uniform vec4 lightColor;

void main()
{
   FragColor = texture(myTexture, texCoord) * objectColor * lightColor;
}