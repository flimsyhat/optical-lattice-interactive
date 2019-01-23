uniform sampler2D positions;
void main()
{
    vec2 location = gl_PointCoord - vec2(0.5, 0.5);
    if(dot(location, location) > (0.25)) discard;
    gl_FragColor = vec4( vec3( 0,0.5,1.0 ), 0.5 - location * 2.0 );
}
