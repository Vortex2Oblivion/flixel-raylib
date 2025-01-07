package flixel.text;

import sys.FileSystem;
import raylib.TextureFilter;
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
        this._font = FileSystem.exists("assets/fonts/nokiafc22.ttf") ? loadFont("assets/fonts/nokiafc22.ttf") : getFontDefault();
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
		// reapply antialiasing after generating a new font.
		set_antialiasing(antialiasing);
		set_antialiasingLevel(antialiasingLevel);
		return this.font = font;
	}

	@:noCompletion 
	override function get_width():Float {
		return measureTextEx(_font, text, size, letterSpacing).x;
	}

	@:noCompletion 
	override function get_height():Float {
		return measureTextEx(_font, text, size, letterSpacing).y;
	}

	@:noCompletion
	override function set_antialiasing(value:Bool):Bool {
		if (value) {
			setTextureFilter(_font.texture, antialiasingLevel);
		} else {
			setTextureFilter(_font.texture, TEXTURE_FILTER_POINT);
		}
		setTextureFilter(getFontDefault().texture, TEXTURE_FILTER_POINT); // reset default font
		return antialiasing = value;
	}

	@:noCompletion
	override function set_antialiasingLevel(value:TextureFilter):TextureFilter {
		if(antialiasing){
			setTextureFilter(_font.texture, value);
		}
		return antialiasingLevel = value;
	}
}
