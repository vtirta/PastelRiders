varying mediump vec4 position;
varying mediump vec2 var_texcoord0;

uniform lowp sampler2D DIFFUSE_TEXTURE;
uniform lowp vec4 tint;

void main()
{
    vec4 mask_color = texture2D(DIFFUSE_TEXTURE, var_texcoord0.xy);
    if (mask_color.x < 1.0) {
        discard;
    }
    gl_FragColor = mask_color;
}
