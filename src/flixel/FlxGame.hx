package flixel;

class FlxGame {
	public function new(gameWidth:Int = 0, gameHeight:Int = 0, initialState:FlxState, updateFramerate:Int = 60) {
		initWindow(gameWidth, gameHeight, "FlxProject");
		initAudioDevice();
		setTargetFPS(updateFramerate);
		FlxG.init(this, gameWidth, gameHeight);
		FlxG.switchState(initialState);
		while (!windowShouldClose()) {
			beginDrawing();
			clearBackground(FlxG.state.bgColor);
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
			FlxG.sound.update(getFrameTime());
			FlxG.state.update(getFrameTime());
			endDrawing();
		}
		closeAudioDevice();
		closeWindow();
	}
}
