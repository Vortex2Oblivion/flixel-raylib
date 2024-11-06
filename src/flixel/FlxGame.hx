package flixel;

import raylib.Raylib;
import raylib.Colors;

class FlxGame {
    public function new(gameWidth:Int = 0, gameHeight:Int = 0, initialState:FlxState, updateFramerate:Int = 60) {
        Raylib.initWindow(gameWidth, gameHeight, "FlxProject");
        Raylib.initAudioDevice();
        Raylib.setTargetFPS(updateFramerate);
        FlxG.switchState(initialState);
        while (!Raylib.windowShouldClose()) {
            Raylib.clearBackground(FlxG.state.bgColor);
            Raylib.beginDrawing();
            FlxG.state.draw();
            FlxG.state.update(Raylib.getFrameTime());
            Raylib.drawText('Current State: ${Type.getClassName(Type.getClass(FlxG.state))}', 0, 15, 20, Colors.LIME);
            Raylib.drawFPS(0, 0);
            Raylib.endDrawing();
        }
        Raylib.closeAudioDevice();
        Raylib.closeWindow();
    }
}