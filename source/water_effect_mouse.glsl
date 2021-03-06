#version 330
#ifdef VERT
layout(location = 0) in vec2 position;
layout(location = 1) in vec4 color;
out vec4 c;

void main()
{
	gl_Position = vec4(position, 0, 1);
	c = color;
}
#endif

#ifdef FRAG
uniform sampler2D sampler0;

in vec4 c;
out vec4 frag_color;

void main()
{
	frag_color = c;
}

#endif
