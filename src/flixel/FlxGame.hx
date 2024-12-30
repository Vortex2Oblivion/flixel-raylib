package flixel;

import cpp.Lib;
import flixel.util.FlxStringUtil;
import flixel.system.FlxMemory;
import raylib.Colors;

class FlxGame {
	public function new(gameWidth:Int = 0, gameHeight:Int = 0, initialState:FlxState, updateFramerate:Int = 60) {
		#if !debug
		setTraceLogLevel(LOG_NONE);
		#end
		initWindow(gameWidth, gameHeight, "FlxProject");
		initAudioDevice();
		setTargetFPS(updateFramerate);
		FlxG.init(this, gameWidth, gameHeight);
		FlxG.switchState(initialState);
		while (!windowShouldClose()) {
			beginDrawing();
			clearBackground(FlxG.state.bgColor);
			FlxG.sound.update(getFrameTime());
			FlxG.state.update(getFrameTime());
			for (camera in FlxG.cameras.list) {
				if (camera != null && camera.exists && camera.active) {
					beginMode2D(camera._camera);
					camera.update(getFrameTime());
					for (member in FlxG.state.members) {
						if (member.camera == camera) {
							member.draw();
						}
					}
					endMode2D();
				}
			}
			drawFPS(1, 1);
			drawText("\n"+FlxStringUtil.formatBytes(FlxMemory.getMemory()) +" / " + FlxStringUtil.formatBytes(FlxMemory.getPeakMemory()), 1, 1, 20, Colors.LIME);
			endDrawing();
		}
		closeAudioDevice();
		traceLog(LOG_INFO, 'Unloaded ${Lib.unloadAllLibraries()} libraries.');
		closeWindow();
	}
}
