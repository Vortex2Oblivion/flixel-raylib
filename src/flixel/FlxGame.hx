package flixel;

import raylib.Raylib;

class FlxGame {
    public function new(gameWidth:Int = 0, gameHeight:Int = 0, initialState:FlxState, updateFramerate:Int = 60) {
        Raylib.initWindow(gameWidth, gameHeight, "FlxProject");
        Raylib.setTargetFPS(updateFramerate);
        initialState.create();
        while (!Raylib.windowShouldClose()) {
            Raylib.clearBackground(initialState.bgColor);
            Raylib.beginDrawing();
            initialState.draw();
            initialState.update(Raylib.getFrameTime());
            Raylib.drawText('Current State: ${Type.getClassName(Type.getClass(initialState))}', 0, 15, 20, raylib.Colors.LIME);
            Raylib.drawFPS(0, 0);
            Raylib.endDrawing();
        }
        Raylib.closeWindow();
    }
}