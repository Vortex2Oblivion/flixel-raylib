package raylib;

import cpp.Star;
import cpp.ConstStar;
import cpp.ConstCharStar;

import cpp.UInt8;

@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:keep
extern class Raylib {
	@:native("InitWindow")
	public static function initWindow(width:Int, height:Int, title:ConstCharStar):Void;

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

	@:native("SetShapesTexture")
	public static function setShapesTexture(texture:Texture2D, source:Rectangle):Void;

	@:native("DrawPixel")
	public static function drawPixel(posX:Int, posY:Int, color:Color):Void;

	@:native("DrawPixelV")
	public static function drawPixelV(positon:Vector2, color:Color):Void;

	@:native("DrawLine")
	public static function drawLine(startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;

	@:native("DrawLineV")
	public static function drawLineV(startPos:Vector2, endPos:Vector2, color:Color):Void;

	@:native("DrawLineEx")
	public static function drawLineEx(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void;

	@:native("DrawLineStrip")
	public static function drawLineStrip(points:Star<Vector2>, pointCount:Int, color:Color):Void;

	@:native("DrawLineBezier")
	public static function drawLineBezier(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void;

	@:native("DrawCircle")
	public static function drawCircle(centerX:Int, centerY:Int, radius:Float, color:Color):Void;
	
	@:native("DrawCircleSector")
	public static function drawCircleSector(center:Vector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void;

	@:native("DrawCircleSectorLines")
	public static function drawCircleSectorLines(centerX:Int, centerY:Int, radius:Float, color:Color):Void;

	@:native("DrawCircleSectorLinesV")
	public static function drawCircleSectorLinesV(center:Vector2, radius:Float, color:Color):Void;

	@:native("DrawEllipse")
	public static function drawEllipse(centerX:Int, centerY:Int, radiusH:Float, radiusV:Float, color:Color):Void;

	@:native("DrawEllipseLines")
	public static function drawEllipseLines(centerX:Int, centerY:Int, radiusH:Float, radiusV:Float, color:Color):Void;

	@:native("DrawRing")
	public static function drawRing(center:Vector2, innerRadius:Float, outerRadius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void;

	@:native("DrawRingLines")
	public static function drawRingLines(center:Vector2, innerRadius:Float, outerRadius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void;

	@:native("DrawRectangle")
	public static function drawRectangle(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;

	@:native("DrawRectangleV")
	public static function drawRectangleV(pos:Vector2, size:Vector2, color:Color):Void;

	@:native("DrawRectangleRec")
	public static function drawRectangleRec(rec:Rectangle, color:Color):Void;

	@:native("DrawRectanglePro")
	public static function drawRectanglePro(rec:Rectangle, origin:Vector2, rotation:Float, color:Color):Void;

	@:native("DrawRectangleGradientV")
	public static function drawRectangleGradientV(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void;

	@:native("DrawRectangleGradientH")
	public static function drawRectangleGradientH(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void;

	@:native("DrawRectangleGradientEx")
	public static function drawRectangleGradientEx(rec:Rectangle, color1:Color, color2:Color, color3:Color, color4:Color):Void;

	@:native("DrawRectangleLines")
	public static function drawRectangleLines(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;

	@:native("DrawRectangleLinesEx")
	public static function drawRectangleLinesEx(rec:Rectangle, lineThick:Int, color:Color):Void;

	@:native("DrawRectangleRounded")
	public static function drawRectangleRounded(rec:Rectangle, roundness:Float, segments:Int,color:Color):Void;

	@:native("DrawRectangleRoundedLines")
	public static function drawRectangleRoundedLines(rec:Rectangle, roundness:Float, segments:Int, lineThick:Float, color:Color):Void;

	@:native("DrawTriangle")
	public static function drawTriangle(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;

	@:native("DrawTriangleLines")
	public static function drawTriangleLines(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;

	@:native("DrawTriangleFan")
	public static function drawTriangleFan(points:Star<Vector2>, pointCount:Int, color:Color):Void;

	@:native("DrawTriangleStrip")
	public static function drawTriangleStrip(points:Star<Vector2>, pointCount:Int, color:Color):Void;

	@:native("DrawPoly")
	public static function drawPoly(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void;

	@:native("DrawPolyLines")
	public static function drawPolyLines(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void;

	@:native("DrawPolyLinesEx")
	public static function drawPolyLinesEx(center:Vector2, sides:Int, radius:Float, rotation:Float, lineThick:Float, color:Color):Void;

	@:native("DrawSplineLinear")
	public static function drawSplineLinear(points:Star<Vector2>, pointCount:Int, thick:Float, color:Color):Void;

	@:native("DrawSplineBasis")
	public static function drawSplineBasis(points:Star<Vector2>, pointCount:Int, thick:Float, color:Color):Void;

	@:native("DrawSplineCatmullRom")
	public static function drawSplineCatmullRom(points:Star<Vector2>, pointCount:Int, thick:Float, color:Color):Void;

	@:native("DrawSplineBezierQuadratic")
	public static function drawSplineBezierQuadratic(points:Star<Vector2>, pointCount:Int, thick:Float, color:Color):Void;

	@:native("DrawSplineBezierCubic")
	public static function drawSplineBezierCubic(points:Star<Vector2>, pointCount:Int, thick:Float, color:Color):Void;

	@:native("DrawSplineSegmentLinear")
	public static function drawSplineSegmentLinear(p1:Vector2, p2:Vector2, thick:Float, color:Color):Void;

	@:native("DrawSplineSegmentBasis")
	public static function drawSplineSegmentBasis(p1:Vector2, p2:Vector2, p3:Vector2, p4:Vector2, thick:Float, color:Color):Void;

	@:native("DrawSplineSegmentCatmullRom")
	public static function drawSplineSegmentCatmullRom(p1:Vector2, p2:Vector2, p3:Vector2, p4:Vector2, thick:Float, color:Color):Void;

	@:native("DrawSplineSegmentBezierQuadratic")
	public static function drawSplineSegmentBezierQuadratic(p1:Vector2, c2:Vector2, p3:Vector2, thick:Float, color:Color):Void;

	@:native("DrawSplineSegmentBezierCubic")
	public static function drawSplineSegmentBezierCubic(p1:Vector2, c2:Vector2, c3:Vector2, thick:Float, color:Color):Void;

	@:native("GetSplinePointLinear")
	public static function getSplinePointLinear(startPos:Vector2, endPos:Vector2, t:Float):Vector2;

	@:native("GetSplinePointBasis")
	public static function getSplinePointBasis(p1:Vector2, p2:Vector2, p3:Vector2, p4:Vector2, t:Float):Vector2;

	@:native("GetSplinePointCatmullRom")
	public static function getSplinePointCatmullRom(p1:Vector2, p2:Vector2, p3:Vector2, p4:Vector2, t:Float):Vector2;

	@:native("GetSplinePointBezierQuad")
	public static function getSplinePointBezierQuad(p1:Vector2, c2:Vector2, p3:Vector2, t:Float):Vector2;

	@:native("GetSplinePointBezierCubic")
	public static function getSplinePointBezierCubic(p1:Vector2, c2:Vector2, c3:Vector2, p4:Vector2, t:Float):Vector2;

	@:native("CheckCollisionRecs")
	public static function checkCollisionRecs(rect1:Rectangle, rect1:Rectangle):Bool;

	@:native("CheckCollisionCircles")
	public static function checkCollisionCircles(center1:Vector2, radius1:Float, center2:Vector2, radius2:Float):Bool;

	@:native("CheckCollisionCircleRec")
	public static function checkCollisionCircleRec(center:Vector2, radius:Float, rec:Rectangle):Bool;

	@:native("CheckCollisionPointRec")
	public static function checkCollisionPointRec(point:Vector2, rec:Rectangle):Bool;

	@:native("CheckCollisionPointCircle")
	public static function checkCollisionPointCircle(point:Vector2, center:Vector2, radius:Float):Bool;

	@:native("CheckCollisionPointTriangle")
	public static function checkCollisionPointTriangle(point:Vector2, p1:Vector2, p2:Vector2, p3:Vector2):Bool;

	@:native("CheckCollisionPointPoly")
	public static function checkCollisionPointPoly(point:Vector2, points:Star<Vector2>, pointCount:Int):Bool;

	@:native("CheckCollisionLines")
	public static function checkCollisionLines(startPos1:Vector2, endPos1:Vector2, startPos2:Vector2, endPos2:Vector2, collisionPoint:Star<Vector2>):Bool;

	@:native("CheckCollisionPointLine")
	public static function checkCollisionPointLine(point:Vector2, p1:Vector2, p2:Vector2, threshold:Int):Bool;

	@:native("GetCollisionRec")
	public static function getCollisionRec(rec1:Rectangle, rec2:Rectangle):Rectangle;

    @:native("LoadImage")
	public static function loadImage(fileName:ConstCharStar):Image;
	
	@:native("LoadImageRaw")
	public static function loadImageRaw(fileName:ConstCharStar, width:Int, height:Int, format:Int, headerSize:Int):Image;

	@:native("LoadImageSvg")
	public static function loadImageSvg(fileNameOrString:ConstCharStar, width:Int, height:Int):Image;

	@:native("LoadImageAnim")
	public static function loadImageAnim(fileName:ConstCharStar, frames:Int):Image;

	@:native("LoadImageFromMemory")
	public static function loadImageFromMemory(fileType:ConstCharStar, fileData:ConstStar<UInt8>, dataSize:Int):Image;

	@:native("LoadImageFromTexture")
	public static function loadImageFromTexture(texture:Texture2D):Image;

	@:native("LoadImageFromScreen")
	public static function loadImageFromScreen():Image;

	@:native("IsImageReady")
	public static function isImageReady(image:Image):Bool;

	@:native("UnloadImage")
	public static function unloadImage(image:Image):Void;

	@:native("ExportImage")
	public static function exportImage(image:Image, fileName:ConstCharStar):Bool;

	@:native("ExportImageToMemory")
	public static function exportImageToMemory(image:Image, fileName:ConstCharStar, fileSize:Star<Int>):Star<UInt8>;
	
	@:native("ExportImageAsCode")
	public static function exportImageAsCode(image:Image, fileName:ConstCharStar):Bool;

    @:native("LoadTexture")
	public static function loadTexture(fileName:ConstCharStar):Texture2D;

    @:native("DrawTexture")
	public static function drawTexture(texture:Texture2D, posX:Int, posY:Int, tint:Color):Void;

    @:native("GetTime")
	public static function getTime():Float;

    @:native("ColorFromHSV")
	public static function colorFromHSV(hue:Float, saturation:Float, value:Float):Color;

	@:native("InitAudioDevice")
	public static function initAudioDevice():Void;

    @:native("LoadSound")
	public static function loadSound(fileName:ConstCharStar):Sound;

    @:native("PlaySound")
	public static function playSound(sound:Sound):Void;

	@:native("ClearBackground")
	public static function clearBackground(color:Color):Void;
}
