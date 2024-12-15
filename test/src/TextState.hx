package;

import flixel.FlxState;
import flixel.text.FlxText;
import raylib.Raylib;

class TextState extends FlxState {
    var text:FlxText;

    override public function create() {
        super.create();

        text = new FlxText(0, 0, "This is FlxText!", 32);
        text.screenCenter();
        text.antialiasing = true;
        text.font = "dumbnerd.ttf";
        add(text);
    }

    override public function update(elapsed:Float) {
        super.update(elapsed);
        text.size  = Math.sin(Raylib.getTime()) * 10 + 32;

        if(Raylib.isKeyPressed(32)) {
            text.antialiasingLevel = TEXTURE_FILTER_ANISOTROPIC_16X;
        }
    }
}