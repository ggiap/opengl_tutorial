#version 330 core

out vec4 FragColor;
in vec3 vColor;
in vec2 texCoord;

uniform sampler2D myTexture;

void main()
{
   //FragColor = vec4(vColor, 1.0f);
   FragColor = texture(myTexture, texCoord) * vec4(vColor, 1.0f);
}