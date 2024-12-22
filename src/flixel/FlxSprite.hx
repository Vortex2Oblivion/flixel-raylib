package flixel;

import raylib.TextureFilter;
import raylib.Color;
import raylib.Colors;
import raylib.Image;
import raylib.Rectangle;
import raylib.Vector2;
import raylib.Texture;

class FlxSprite extends FlxObject {
	public static var defaultAntialiasing:Bool = false;

	private var texture(default, set):Texture;

	public var color:Color = Colors.WHITE;

	public var alpha(default, set):Float = 1.0;

	public var antialiasing(default, set):Bool = defaultAntialiasing;

	public var antialiasingLevel(default, set):TextureFilter = TEXTURE_FILTER_BILINEAR;

	public function new(x:Float = 0, y:Float = 0, ?graphic:String) {
		super(x, y);
		if (graphic != null) {
			loadGraphic(graphic);
		}
	}

	public inline overload extern function loadGraphic(graphic:String):FlxSprite {
		unloadTexture(texture);
		texture = loadTexture(graphic);
		return this;
	}

	public inline overload extern function loadGraphic(image:Image):FlxSprite {
		unloadTexture(texture);
		texture = loadTextureFromImage(image);
		return this;
	}

	public inline function isOnScreen():Bool {
		return !((y + height < 0 || y > FlxG.height) || (x + width < 0 || x > FlxG.width));
	}

	override public function draw() {
		super.draw();
		if (!visible || alpha < 0.001 || !camera.visible || !isOnScreen()) {
			return;
		}
		drawTexturePro(texture, Rectangle.create(0, 0, texture.width, texture.height),
			Rectangle.create((texture.width / 2) + x, (texture.height / 2) + y, texture.width, texture.height),
			Vector2.create(texture.width / 2, texture.height / 2), angle, color);
	}

	override public function destroy() {
		unloadTexture(texture);
		super.destroy();
	}

	@:noCompletion
	function set_texture(texture:Texture):Texture {
		this.texture = texture;
		width = texture.width;
		height = texture.height;
		return texture;
	}

	@:noCompletion
	override function set_width(value:Float) {
		texture.width = Std.int(value);
		return super.set_width(value);
	}

	@:noCompletion
	override function set_height(value:Float) {
		texture.height = Std.int(value);
		return super.set_height(value);
	}

	@:noCompletion
	inline function set_alpha(value:Float):Float {
		return alpha = value = color.a = Std.int(value * 255);
	}

	@:noCompletion
	function set_antialiasing(value:Bool):Bool {
		if (value) {
			setTextureFilter(texture, antialiasingLevel);
		} else {
			setTextureFilter(texture, TEXTURE_FILTER_POINT);
		}
		return antialiasing = value;
	}

	@:noCompletion
	function set_antialiasingLevel(value:TextureFilter):TextureFilter {
		if(antialiasing){
			setTextureFilter(texture, value);
		}
		return antialiasingLevel = value;
	}
}
