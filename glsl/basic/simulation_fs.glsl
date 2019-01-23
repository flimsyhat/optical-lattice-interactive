//basic simulation: displays the particles in place.
uniform sampler2D positions;
uniform float xFactor;
uniform float yFactor;
uniform float zFactor;
varying vec2 vUv;
void main() {
    float strength = 10.0;
    const float PI = 3.1415926535897932384626433832795;
    vec3 pos = texture2D( positions, vUv ).xyz;
    float dX = cos(pos.x + 5.*PI/8.) * xFactor;
    float dY = cos(pos.y + 5.*PI/8.) * yFactor;
    float dZ = cos(pos.z + 5.*PI/8.) * zFactor;
    float xpos = pos.x + dX;
    float ypos = pos.y + dY;
    float zpos = pos.z + dZ;
    float amount = ( abs(dX) + abs(dY) + abs(dZ) ) ;
    float test = pow((abs(dX)), 2.0) + 1.0;
    gl_FragColor = vec4( vec3(xpos, ypos, zpos) , amount * 4.0 );
}
