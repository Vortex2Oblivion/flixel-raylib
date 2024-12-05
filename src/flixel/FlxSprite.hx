package flixel;

import raylib.Color;
import raylib.Colors;
import raylib.Image;
import raylib.Rectangle;
import raylib.Vector2;
import raylib.Texture;

class FlxSprite extends FlxObject {
	private var texture(default, set):Texture;

	public var color:Color = Colors.WHITE;

	public function new(x:Float = 0, y:Float = 0, ?graphic:String) {
		super(x, y);
		if (graphic != null) {
			loadGraphic(graphic);
		}
	}

	public inline overload extern function loadGraphic(graphic:String):FlxSprite {
		texture = loadTexture(graphic);
		return this;
	}

	public inline overload extern function loadGraphic(image:Image):FlxSprite {
		texture = loadTextureFromImage(image);
		return this;
	}

	override public function draw() {
		super.draw();
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

	override function set_width(value:Float) {
		texture.width = Std.int(value);
		return super.set_width(value);
	}

	override function set_height(value:Float) {
		texture.height = Std.int(value);
		return super.set_height(value);
	}
}
