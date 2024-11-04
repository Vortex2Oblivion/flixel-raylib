package flixel;

import raylib.Raylib;

class FlxG {
    public static var state(default, null):FlxState;

    public static var width(get, null):Int;

    public static var height(get, null):Int;

    @:noCompletion 
    static function get_width() {
        return Raylib.getScreenWidth();
    }

    @:noCompletion 
    static function get_height() {
        return Raylib.getScreenHeight();
    }

    public static function switchState(nextState:FlxState):Void {
        state?.destroy();
        state = null;
        state = nextState;
        nextState.create();
    }
}