//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D lighting;

void main()
{
	vec4 mult = texture2D(lighting, v_vTexcoord);
	vec4 main = texture2D(gm_BaseTexture, v_vTexcoord);
	vec4 finalcol;
	vec4 lightcol;
	
	
	lightcol.r = mult.r * 1.;
	lightcol.g = mult.g * 1.;
	lightcol.b = mult.b * 1.;
	
	finalcol.r = mix(main.r,main.r*lightcol.r,mult.r);
	finalcol.g = mix(main.g,main.g*lightcol.g,mult.g);
	finalcol.b = mix(main.b,main.b*lightcol.b,mult.b);
	finalcol.a = 0.8;
	
	float darkness = .1;
	
	finalcol.r = mix(finalcol.r,finalcol.r*darkness,-mult.r);
	finalcol.g = mix(finalcol.g,finalcol.g*darkness,-mult.g);
	finalcol.b = mix(finalcol.b,finalcol.b*darkness,-mult.b);
	
	gl_FragColor = finalcol;

}