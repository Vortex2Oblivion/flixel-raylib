package flixel.input;

import raylib.KeyboardKey;

class FlxBaseKeyList {

    public var state(default, null):FlxInputState;

    public function new(state:FlxInputState) {
        this.state = state;
    }

    public function check(key:KeyboardKey):Bool {
        switch (this.state) {
            case JUST_RELEASED:
                return isKeyReleased(key);
            case RELEASED:
                return !isKeyDown(key);
            case PRESSED:
                return isKeyDown(key);
            case JUST_PRESSED:
                return isKeyPressed(key);
        }
        return false;
    }
}