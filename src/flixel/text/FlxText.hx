package flixel.text;

import flixel.FlxSprite;
import raylib.Font;
import raylib.Vector2;

class FlxText extends FlxSprite {
	var _font:Font;

	public var font(default, set):String;

	public var text:String;

	public var size:Float;

	public var letterSpacing:Float;

	public function new(x:Float, y:Float, text:String, size:Float = 8) {
		super(x, y);
		this.text = text;
		this.size = size;
		this.letterSpacing = 1;
        this._font = getFontDefault();
	}

    override public function destroy() {
        unloadFont(_font);
    }

	override public function draw() {
		drawTextPro(_font, text, Vector2.create(x + (width / 2), y + (height / 2)), Vector2.create(width / 2, height / 2), angle, size, letterSpacing, color);
	}

	@:noCompletion function set_font(font:String):String {
        unloadFont(_font);
		_font = loadFont(font);
		return this.font = font;
	}

	@:noCompletion override function get_width():Float {
		return measureTextEx(_font, text, size, letterSpacing).x;
	}

	@:noCompletion override function get_height():Float {
		return measureTextEx(_font, text, size, letterSpacing).y;
	}
}
