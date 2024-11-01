package flixel;

import raylib.Texture;
import raylib.Raylib;
import raylib.Color;
import raylib.Colors;
import raylib.Vector2;
import raylib.Rectangle;

class FlxSprite extends FlxObject {
	private var texture(default, set):Texture;

	public var color:Color = Colors.WHITE;

	public function new(?x:Float = 0, ?y:Float = 0, ?graphic:String) {
		super(x, y);
		if (graphic != null) {
			loadGraphic(graphic);
		}
	}

	public function loadGraphic(graphic:String):FlxSprite {
		texture = Raylib.loadTexture(graphic);
		return this;
	}

	override public function draw() {
		super.draw();
		Raylib.drawTexturePro(texture, Rectangle.create(0, 0, texture.width, texture.height),
			Rectangle.create((texture.width / 2) + x, (texture.height / 2) + y, texture.width, texture.height),
			Vector2.create(texture.width / 2, texture.height / 2), angle, color);
	}

    @:noCompletion
	function set_texture(texture:Texture):Texture
	{
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
