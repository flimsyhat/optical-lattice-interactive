
//float texture containing the positions of each particle
uniform sampler2D positions;
uniform sampler2D original_positions;
varying vec2 vUv;
//size
uniform float pointSize;

void main() {
    vUv = vec2(uv.x, uv.y);
    //the mesh is a nomrliazed square so the uvs = the xy positions of the vertices
    vec3 pos = texture2D( positions, position.xy ).xyz;
    float amount = texture2D( positions, vUv ).a;
    vec3 orig_pos = texture2D( original_positions, position.xy ).xyz;
    //pos now contains the position of a point in space that can be transformed
    gl_Position = projectionMatrix * modelViewMatrix * vec4( pos, 1.0 );
    gl_PointSize = pointSize;
}
