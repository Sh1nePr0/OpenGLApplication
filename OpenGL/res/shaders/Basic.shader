#shader vertex
#version 330 core

layout(location = 0) in vec4 position;
layout(location = 1) in vec2 textureCoords;

out vec2 v_TextureCoords;

uniform mat4 u_MVP;

void main()
{
    gl_Position = u_MVP * position;
    v_TextureCoords = textureCoords;
};

#shader fragment
#version 330 core

layout(location = 0) out vec4 texColor;
layout(location = 1) out vec4 squareColor;

in vec2 v_TextureCoords;

uniform vec4 u_Color;
uniform sampler2D u_Texture;

void main()
{
    vec4 textureColor = texture(u_Texture, v_TextureCoords);
    texColor = textureColor;
    squareColor = u_Color;
};
    