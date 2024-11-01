package flixel;

import raylib.Texture;
import raylib.Raylib;
import raylib.Color;
import raylib.Colors;
import raylib.Vector2;
import raylib.Rectangle;

class FlxSprite extends FlxObject {
	public var raylibTexture:Texture;

	public var color:Color = Colors.WHITE;

	public function new(?x:Float = 0, ?y:Float = 0, ?graphic:String) {
		super(x, y);
		if (graphic != null) {
			loadGraphic(graphic);
		}
	}

	public function loadGraphic(graphic:String):FlxSprite {
		raylibTexture = Raylib.loadTexture(graphic);
		return this;
	}

	override public function draw() {
		super.draw();
		Raylib.drawTexturePro(raylibTexture, Rectangle.create(0, 0, raylibTexture.width, raylibTexture.height),
			Rectangle.create(raylibTexture.width / 2, raylibTexture.height / 2, raylibTexture.width, raylibTexture.height),
			Vector2.create(raylibTexture.width / 2, raylibTexture.height / 2), angle, color);
	}
}
