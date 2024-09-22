package raylib;

import cpp.Star;

@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:keep
extern class Raylib {
	@:native("InitWindow")
	public static function initWindow(width:Int, height:Int, title:String):Void;

	@:native("WindowShouldClose")
	public static function windowShouldClose():Bool;

	@:native("IsWindowReady")
	public static function isWindowReady():Bool;

	@:native("IsWindowFullscreen")
	public static function isWindowFullscreen():Bool;

	@:native("IsWindowHidden")
	public static function isWindowHidden():Bool;

	@:native("IsWindowMinimized")
	public static function isWindowMinimized():Bool;

	@:native("IsWindowMaximized")
	public static function isWindowMaximized():Bool;

	@:native("IsWindowFocused")
	public static function isWindowFocused():Bool;

	@:native("IsWindowResized")
	public static function isWindowResized():Bool;

	@:native("IsWindowState")
	public static function isWindowState(flag:UInt):Bool;

	@:native("SetWindowState")
	public static function setWindowState(flags:UInt):Void;

	@:native("ClearWindowState")
	public static function clearWindowState(flags:UInt):Void;

	@:native("ToggleFullscreen")
	public static function toggleFullscreen():Void;

	@:native("ToggleBorderlessWindowed")
	public static function toggleBorderlessWindowed():Void;

	@:native("MaximizeWindow")
	public static function maximizeWindow():Void;

	@:native("MinimizeWindow")
	public static function minimizeWindow():Void;

	@:native("RestoreWindow")
	public static function restoreWindow():Void;

	@:native("SetWindowIcon")
	public static function setWindowIcon(image:Image):Void;

	@:native("SetWindowIcons")
	public static function setWindowIcons(image:Star<Image>, count:Int):Void;

	@:native("SetWindowTitle")
	public static function setWindowTitle(title:String):Void;

	@:native("SetWindowPosition")
	public static function setWindowPosition(x:Int, y:Int):Void;

	@:native("SetWindowMonitor")
	public static function setWindowMonitor(monitor:Int):Void;

	@:native("SetWindowMinSize")
	public static function setWindowMinSize(width:Int, height:Int):Void;

	@:native("SetWindowMaxSize")
	public static function setWindowMaxSize(width:Int, height:Int):Void;

	@:native("SetWindowSize")
	public static function setWindowSize(width:Int, height:Int):Void;

	@:native("SetWindowOpacity")
	public static function setWindowOpacity(opacity:Float):Void;

	@:native("SetWindowFocused")
	public static function setWindowFocused():Void;

	@:native("GetWindowHandle")
	public static function getWindowHandle():Dynamic;

	@:native("GetScreenWidth")
	public static function getScreenWidth():Int;

	@:native("GetScreenHeight")
	public static function getScreenHeight():Int;

    @:native("GetRenderWidth")
	public static function getRenderWidth():Int;

	@:native("GetRenderHeight")
	public static function getRenderHeight():Int;

    @:native("GetMonitorCount")
	public static function getMonitorCount():Int;

    @:native("GetCurrentMonitor")
	public static function getCurrentMonitor():Int;

    @:native("GetMonitorPosition")
	public static function getMonitorPosition(monitor:Int):Vector2;

	@:native("CloseWindow")
	public static function closeWindow():Void;

	@:native("BeginDrawing")
	public static function beginDrawing():Void;

	@:native("EndDrawing")
	public static function endDrawing():Void;

    @:native("GetMousePosition")
	public static function getMousePosition():Vector2;

	@:native("GetMouseDelta")
	public static function getMouseDelta():Vector2;

	@:native("SetMousePosition")
	public static function setMousePosition(x:Int, y:Int):Void;

	@:native("SetMouseOffset")
	public static function setMouseOffset(offsetX:Int, offsetY:Int):Void;

	@:native("SetMouseScale")
	public static function setMouseScale(scaleX:Float, scaleY:Float):Void;

	@:native("GetMouseWheelMove")
	public static function getMouseWheelMove():Float;

	@:native("GetMouseWheelMoveV")
	public static function getMouseWheelMoveV():Vector2;

	@:native("SetMouseCursor")
	public static function setMouseCursor(cursor:Int):Void;

	@:native("GetTouchX")
	public static function getTouchX():Int;

	@:native("GetTouchY")
	public static function getTouchY():Int;

	@:native("GetTouchPosition")
	public static function getTouchPosition(index:Int):Vector2;

	@:native("GetTouchPointId")
	public static function getTouchPointId(index:Int):Int;

	@:native("GetTouchPointCount")
	public static function getTouchPointCount():Int;

	@:native("SetGesturesEnabled")
	public static function setGesturesEnabled(flags:UInt):Void;

	@:native("IsGestureDetected")
	public static function isGestureDetected(gesture:UInt):Bool;

	@:native("GetGestureDetected")
	public static function getGestureDetected():Int;

	@:native("GetGestureHoldDuration")
	public static function getGestureHoldDuration():Float;

	@:native("GetGestureDragVector")
	public static function getGestureDragVector():Vector2;

	@:native("GetGestureDragAngle")
	public static function getGestureDragAngle():Float;

	@:native("GetGesturePinchVector")
	public static function getGesturePinchVector():Vector2;

	@:native("GetGesturePinchAngle")
	public static function getGesturePinchAngle():Float;

	@:native("UpdateCamera")
	public static function updateCamera(camera:Star<Camera>, mode:Int):Void;

	@:native("UpdateCameraPro")
	public static function updateCameraPro(camera:Star<Camera>, movement:Vector3, rotation:Vector3, zoom:Float):Void;

    @:native("LoadImage")
	public static function loadImage(fileName:String):Image;

    @:native("LoadTexture")
	public static function loadTexture(fileName:String):Texture2D;

    @:native("DrawTexture")
	public static function drawTexture(texture:Texture2D, posX:Int, posY:Int, tint:Color):Void;

    @:native("GetTime")
	public static function getTime():Float;

    @:native("ColorFromHSV")
	public static function colorFromHSV(hue:Float, saturation:Float, value:Float):Color;

	@:native("InitAudioDevice")
	public static function initAudioDevice():Void;

    @:native("LoadSound")
	public static function loadSound(fileName:String):Sound;

    @:native("PlaySound")
	public static function playSound(sound:Sound):Void;

	@:native("ClearBackground")
	public static function clearBackground(color:Color):Void;
}
