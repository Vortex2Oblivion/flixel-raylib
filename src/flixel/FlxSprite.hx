package flixel;

import flixel.math.FlxPoint;
import flixel.animation.FlxAnimation;
import sys.FileSystem;
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

	public static var defaultGraphic:String = "assets/images/logo16.png";

	public var animation:FlxAnimation;

	public var origin:FlxPoint;

	public function new(x:Float = 0, y:Float = 0, ?graphic:String) {
		super(x, y);
		origin = new FlxPoint();
		loadGraphic(defaultGraphic);
	}
	

	public function loadGraphic(graphic:String):FlxSprite {
		unloadTexture(texture);
		var _graphic:String = FileSystem.exists(graphic) ? graphic : defaultGraphic;
		if(FlxG.bitmap.cache.exists(_graphic)){
			texture = FlxG.bitmap.cache.get(_graphic);
		}
		else{
			texture = loadTexture(_graphic);
			FlxG.bitmap.cache.set(_graphic, texture);
		}
		return this;
	}

	public inline function isOnScreen():Bool {
		return !((y + height < 0 || y > FlxG.height) || (x + width < 0 || x > FlxG.width));
	}

	override public function draw() {
		if (!visible || alpha < 0.001 || !camera.visible || !isOnScreen()) {
			return;
		}
		drawTexturePro(texture, Rectangle.create(animation.x, animation.y, width, height),
			Rectangle.create((texture.width / 2) + x - animation.offsetX, (texture.height / 2) + y - animation.offsetY, width, height),
			origin, angle, color);
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
		animation = new FlxAnimation(texture.width, texture.height);
		origin.x = texture.width / 2;
		origin.y = texture.height / 2;
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
	override function get_width() {
		return animation.width;
	}

	@:noCompletion
	override function get_height() {
		return animation.height;
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
