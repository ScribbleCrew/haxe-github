package haxegithub.flixel.shader;

#if flixel
import flixel.system.FlxAssets.FlxShader;

class CircleAvatarShader {
	public var shader(default, null):Shader;

	public function new() {
		shader = new Shader();
	}
}

class Shader extends FlxShader {
	@:glFragmentSource('
    // Credits to FNF Codename Engine Team!

    #pragma header

    void main() {
        float len = length(openfl_TextureCoordv - vec2(0.5, 0.5));
        float r = 0.5 - (1.0 / openfl_TextureSize.x);
        vec4 c = flixel_texture2D(bitmap, openfl_TextureCoordv);
        vec4 color = mix(vec4(0.0, 0.0, 0.0, 0.5), c, c.a);
        gl_FragColor = color * clamp(1.0 - ((len - r) * openfl_TextureSize.x), 0.0, 1.0);
    }
    ')
	public function new() {
		super();
	}
}
#end
