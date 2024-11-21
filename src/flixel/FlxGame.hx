package flixel;

import raylib.Colors;

class FlxGame {
    public function new(gameWidth:Int = 0, gameHeight:Int = 0, initialState:FlxState, updateFramerate:Int = 60) {
        initWindow(gameWidth, gameHeight, "FlxProject");
        initAudioDevice();
        setTargetFPS(updateFramerate);
        FlxG.switchState(initialState);
        while (!windowShouldClose()) {
            clearBackground(FlxG.state.bgColor);
            beginDrawing();
            FlxG.state.draw();
            FlxG.state.update(getFrameTime());
            drawText('Current State: ${Type.getClassName(Type.getClass(FlxG.state))}', 0, 15, 20, Colors.LIME);
            drawFPS(0, 0);
            endDrawing();
        }
        closeAudioDevice();
        closeWindow();
    }
}