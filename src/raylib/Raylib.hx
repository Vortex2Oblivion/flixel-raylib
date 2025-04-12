package raylib;

import cpp.RawPointer;
import cpp.ConstStar;
import cpp.ConstCharStar;
import cpp.RawPointer;
import cpp.UInt8;

/**
 * Extern class that contains all the bindings to funtions in the Raylib header file.
 */
extern class Raylib {
	@:native("InitWindow")
	public static function initWindow(width:Int, height:Int, title:ConstCharStar):Void;

	@:native("CloseWindow")
	public static function closeWindow():Void;

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
	public static function setWindowIcons(image:RawPointer<Image>, count:Int):Void;

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
	public static function getWindowHandle():RawPointer<cpp.Void>;

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

	@:native("GetMonitorWidth")
	public static function getMonitorWidth(monitor:Int):Int;

	@:native("GetMonitorHeight")
	public static function getMonitorHeight(monitor:Int):Int;

	@:native("GetMonitorPhysicalWidth")
	public static function getMonitorPhysicalWidth(monitor:Int):Int;

	@:native("GetMonitorPhysicalHeight")
	public static function getMonitorPhysicalHeight(monitor:Int):Int;

	@:native("GetMonitorRefreshRate")
	public static function getMonitorRefreshRate(monitor:Int):Int;

	@:native("GetWindowPosition")
	public static function getWindowPosition():Vector2;

	@:native("GetWindowScaleDPI")
	public static function getWindowScaleDPI():Vector2;

	@:native("GetMonitorName")
	public static function getMonitorName(monitor:Int):ConstCharStar;

	@:native("SetClipboardText")
	public static function setClipboardText(text:ConstCharStar):Void;

	@:native("GetClipboardText")
	public static function getClipboardText():ConstCharStar;

	@:native("EnableEventWaiting")
	public static function enableEventWaiting():Void;

	@:native("DisableEventWaiting")
	public static function disableEventWaiting():Void;

	@:native("ShowCursor")
	public static function showCursor():Void;

	@:native("HideCursor")
	public static function hideCursor():Void;

	@:native("IsCursorHidden")
	public static function isCursorHidden():Bool;

	@:native("EnableCursor")
	public static function enableCursor():Void;

	@:native("DisableCursor")
	public static function disableCursor():Void;

	@:native("IsCursorOnScreen")
	public static function isCursorOnScreen():Bool;

	@:native("ClearBackground")
	public static function clearBackground(color:Color):Void;

	@:native("BeginDrawing")
	public static function beginDrawing():Void;

	@:native("EndDrawing")
	public static function endDrawing():Void;

	@:native("BeginMode2D")
	public static function beginMode2D(camera:Camera2D):Void;

	@:native("EndMode2D")
	public static function endMode2D():Void;

	@:native("BeginMode3D")
	public static function beginMode3D(camera:Camera3D):Void;

	@:native("EndMode3D")
	public static function endMode3D():Void;

	@:native("BeginTextureMode")
	public static function beginTextureMode(target:RenderTexture2D):Void;

	@:native("EndTextureMode")
	public static function endTextureMode():Void;

	@:native("BeginShaderMode")
	public static function beginShaderMode(shader:Shader):Void;

	@:native("beginShaderMode")
	public static function endnShaderMode():Void;

	@:native("BeginBlendMode")
	public static function beginBlendMode(mode:Int):Void;

	@:native("EndBlendMode")
	public static function endBlendMode():Void;

	@:native("BeginScissorMode")
	public static function beginScissorMode(x:Int, y:Int, width:Int, height:Int):Void;

	@:native("EndScissorMode")
	public static function endScissorMode():Void;

	@:native("BeginVrStereoMode")
	public static function beginVrStereoMode(config:VrStereoConfig):Void;

	@:native("EndVrStereoMode")
	public static function endVrStereoMode():Void;

	@:native("LoadVrStereoConfig")
	public static function loadVrStereoConfig(device:VrDeviceInfo):VrStereoConfig;

	@:native("UnloadVrStereoConfig")
	public static function unloadVrStereoConfig(device:VrStereoConfig):Void;

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
	public static function updateCamera(camera:RawPointer<Camera>, mode:Int):Void;

	@:native("UpdateCameraPro")
	public static function updateCameraPro(camera:RawPointer<Camera>, movement:Vector3, rotation:Vector3, zoom:Float):Void;

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
	public static function drawLineStrip(points:RawPointer<Vector2>, pointCount:Int, color:Color):Void;

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
	public static function drawRingLines(center:Vector2, innerRadius:Float, outerRadius:Float, startAngle:Float, endAngle:Float, segments:Int,
		color:Color):Void;

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
	public static function drawRectangleRounded(rec:Rectangle, roundness:Float, segments:Int, color:Color):Void;

	@:native("DrawRectangleRoundedLines")
	public static function drawRectangleRoundedLines(rec:Rectangle, roundness:Float, segments:Int, lineThick:Float, color:Color):Void;

	@:native("DrawTriangle")
	public static function drawTriangle(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;

	@:native("DrawTriangleLines")
	public static function drawTriangleLines(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;

	@:native("DrawTriangleFan")
	public static function drawTriangleFan(points:RawPointer<Vector2>, pointCount:Int, color:Color):Void;

	@:native("DrawTriangleStrip")
	public static function drawTriangleStrip(points:RawPointer<Vector2>, pointCount:Int, color:Color):Void;

	@:native("DrawPoly")
	public static function drawPoly(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void;

	@:native("DrawPolyLines")
	public static function drawPolyLines(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void;

	@:native("DrawPolyLinesEx")
	public static function drawPolyLinesEx(center:Vector2, sides:Int, radius:Float, rotation:Float, lineThick:Float, color:Color):Void;

	@:native("DrawSplineLinear")
	public static function drawSplineLinear(points:RawPointer<Vector2>, pointCount:Int, thick:Float, color:Color):Void;

	@:native("DrawSplineBasis")
	public static function drawSplineBasis(points:RawPointer<Vector2>, pointCount:Int, thick:Float, color:Color):Void;

	@:native("DrawSplineCatmullRom")
	public static function drawSplineCatmullRom(points:RawPointer<Vector2>, pointCount:Int, thick:Float, color:Color):Void;

	@:native("DrawSplineBezierQuadratic")
	public static function drawSplineBezierQuadratic(points:RawPointer<Vector2>, pointCount:Int, thick:Float, color:Color):Void;

	@:native("DrawSplineBezierCubic")
	public static function drawSplineBezierCubic(points:RawPointer<Vector2>, pointCount:Int, thick:Float, color:Color):Void;

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
	public static function checkCollisionPointPoly(point:Vector2, points:RawPointer<Vector2>, pointCount:Int):Bool;

	@:native("CheckCollisionLines")
	public static function checkCollisionLines(startPos1:Vector2, endPos1:Vector2, startPos2:Vector2, endPos2:Vector2, collisionPoint:RawPointer<Vector2>):Bool;

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
	public static function exportImageToMemory(image:Image, fileName:ConstCharStar, fileSize:RawPointer<Int>):RawPointer<UInt8>;

	@:native("ExportImageAsCode")
	public static function exportImageAsCode(image:Image, fileName:ConstCharStar):Bool;

	@:native("GenImageColor")
	public static function genImageColor(width:Int, height:Int, color:Color):Image;

	@:native("GenImageGradientLinear")
	public static function genImageGradientLinear(width:Int, height:Int, direction:Int, start:Color, end:Color):Image;

	@:native("GenImageGradientRadial")
	public static function genImageGradientRadial(width:Int, height:Int, density:Float, inner:Color, outer:Color):Image;

	@:native("GenImageGradientSquare")
	public static function genImageGradientSquare(width:Int, height:Int, density:Float, inner:Color, outer:Color):Image;

	@:native("GenImageChecked")
	public static function genImageChecked(width:Int, height:Int, checksX:Int, checksY:Int, col1:Color, col2:Color):Image;

	@:native("GenImageWhiteNoise")
	public static function genImageWhiteNoise(width:Int, height:Int, factor:Float):Image;

	@:native("GenImagePerlinNoise")
	public static function genImagePerlinNoise(width:Int, height:Int, offsetX:Int, offsetY:Int, scale:Float):Image;

	@:native("GenImageCellular")
	public static function genImageCellular(width:Int, height:Int, tileSize:Int):Image;

	@:native("GenImageText")
	public static function genImageText(width:Int, height:Int, text:ConstCharStar):Image;

	@:native("ImageCopy")
	public static function imageCopy(image:Image):Image;

	@:native("ImageFromImage")
	public static function imageFromImage(image:Image, rec:Rectangle):Image;

	@:native("ImageText")
	public static function imageText(text:ConstCharStar, fontSize:Int, color:Color):Image;

	@:native("ImageTextEx")
	public static function imageTextEx(font:Font, text:ConstCharStar, fontSize:Float, spacing:Float, tint:Color):Image;

	@:native("ImageFormat")
	public static function imageFormat(image:RawPointer<Image>, newFormat:Int):Void;

	@:native("ImageToPOT")
	public static function imageToPOT(image:RawPointer<Image>, fill:Color):Void;

	@:native("ImageCrop")
	public static function imageCrop(image:RawPointer<Image>, crop:Rectangle):Void;

	@:native("ImageAlphaCrop")
	public static function imageAlphaCrop(image:RawPointer<Image>, threshold:Float):Void;

	@:native("ImageAlphaClear")
	public static function imageAlphaClear(image:RawPointer<Image>, color:Color, threshold:Float):Void;

	@:native("ImageAlphaMask")
	public static function imageAlphaMask(image:RawPointer<Image>, alphaMask:Image):Void;

	@:native("ImageAlphaPremultiply")
	public static function imageAlphaPremultiply(image:RawPointer<Image>):Void;

	@:native("ImageBlurGaussian")
	public static function imageBlurGaussian(image:RawPointer<Image>, blurSize:Int):Void;

	@:native("ImageResize")
	public static function imageResize(image:RawPointer<Image>, newWidth:Int, newHeight:Int):Void;

	@:native("ImageResizeNN")
	public static function imageResizeNN(image:RawPointer<Image>, newWidth:Int, newHeight:Int):Void;

	@:native("ImageResizeCanvas")
	public static function imageResizeCanvas(image:RawPointer<Image>, newWidth:Int, newHeight:Int, offsetX:Int, offsetY:Int):Void;

	@:native("ImageMipmaps")
	public static function imageMipmaps(image:RawPointer<Image>):Void;

	@:native("ImageDither")
	public static function imageDither(image:RawPointer<Image>, rBpp:Int, gBpp:Int, bGbb:Int, aGbb:Int):Void;

	@:native("ImageFlipVertical")
	public static function imageFlipVertical(image:RawPointer<Image>):Void;

	@:native("ImageFlipHorizontal")
	public static function imageFlipHorizontal(image:RawPointer<Image>):Void;

	@:native("ImageRotate")
	public static function imageRotate(image:RawPointer<Image>, degrees:Int):Void;

	@:native("ImageRotateCW")
	public static function imageRotateCW(image:RawPointer<Image>):Void;

	@:native("ImageRotateCCW")
	public static function imageRotateCCW(image:RawPointer<Image>):Void;

	@:native("ImageColorTint")
	public static function imageColorTint(image:RawPointer<Image>, color:Color):Void;

	@:native("ImageColorInvert")
	public static function imageColorInvert(image:RawPointer<Image>):Void;

	@:native("ImageColorGrayscale")
	public static function imageColorGrayscale(image:RawPointer<Image>):Void;

	@:native("ImageColorContrast")
	public static function imageColorContrast(image:RawPointer<Image>, contrast:Float):Void;

	@:native("ImageColorBrightness")
	public static function imageColorBrightness(image:RawPointer<Image>, brightnes:Float):Void;

	@:native("ImageColorReplace")
	public static function imageColorReplace(image:RawPointer<Image>, color:Color, replace:Color):Void;

	@:native("LoadImageColors")
	public static function loadImageColors(image:Image):RawPointer<Color>;

	@:native("LoadImagePalette")
	public static function loadImagePalette(image:Image, maxPaletteSize:Int, maxPaletteSize:RawPointer<Int>):RawPointer<Color>;

	@:native("UnloadImageColors")
	public static function unloadImageColors(colors:RawPointer<Color>):Void;

	@:native("UnloadImagePalette")
	public static function unloadImagePalette(colors:RawPointer<Color>):Void;

	@:native("GetImageAlphaBorder")
	public static function getImageAlphaBorder(image:Image, threshold:Float):Rectangle;

	@:native("GetImageColor")
	public static function getImageColor(image:Image, x:Int, y:Int):Color;

	@:native("ImageClearBackground")
	public static function imageClearBackground(dst:RawPointer<Image>, color:Color):Void;

	@:native("ImageDrawPixel")
	public static function imageDrawPixel(dst:RawPointer<Image>, posX:Int, posY:Int, color:Color):Void;

	@:native("ImageDrawPixelV")
	public static function imageDrawPixelV(dst:RawPointer<Image>, position:Vector2, color:Color):Void;

	@:native("ImageDrawLine")
	public static function imageDrawLine(dst:RawPointer<Image>, startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;

	@:native("ImageDrawLineV")
	public static function imageDrawLineV(dst:RawPointer<Image>, startPos:Vector2, endPos:Vector2, color:Color):Void;

	@:native("ImageDrawCircle")
	public static function imageDrawCirle(dst:RawPointer<Image>, centerX:Int, centerY:Int, radius:Int, color:Color):Void;

	@:native("ImageDrawCircleV")
	public static function imageDrawCirleV(dst:RawPointer<Image>, center:Vector2, radius:Int, color:Color):Void;

	@:native("ImageDrawCircle")
	public static function imageDrawCirleLines(dst:RawPointer<Image>, centerX:Int, centerY:Int, radius:Int, color:Color):Void;

	@:native("ImageDrawCircleV")
	public static function imageDrawCirleLinesV(dst:RawPointer<Image>, center:Vector2, radius:Int, color:Color):Void;

	@:native("ImageDrawRectangle")
	public static function imageDrawRectangle(dst:RawPointer<Image>, posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;

	@:native("ImageDrawRectangleV")
	public static function imageDrawRectangleV(dst:RawPointer<Image>, position:Vector2, size:Vector2, color:Color):Void;

	@:native("ImageDrawRectangleRec")
	public static function imageDrawRectangleRec(dst:RawPointer<Image>, rec:Rectangle, color:Color):Void;

	@:native("ImageDrawRectangleLines")
	public static function imageDrawRectangleLines(dst:RawPointer<Image>, rec:Rectangle, thick:Int, color:Color):Void;

	@:native("ImageDraw")
	public static function imageDraw(dst:RawPointer<Image>, src:Image, srcRec:Rectangle, dstRec:Rectangle, tint:Color):Void;

	@:native("ImageDrawText")
	public static function imageDrawText(dst:RawPointer<Image>, text:ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:Color):Void;

	@:native("ImageDrawTextEx")
	public static function imageDrawTextEx(dst:RawPointer<Image>, font:Font, text:ConstCharStar, position:Vector2, fontSize:Int, spacing:Float, color:Color):Void;

	@:native("LoadTexture")
	public static function loadTexture(fileName:ConstCharStar):Texture2D;

	@:native("LoadTextureFromImage")
	public static function loadTextureFromImage(image:Image):Texture2D;

	@:native("LoadTextureCubemap")
	public static function loadTextureCubemap(image:Image, layout:Int):TextureCubemap;

	@:native("UnloadTexture")
	public static function unloadTexture(texture:Texture2D):Void;

	@:native("SetTextureFilter")
	public static function setTextureFilter(texture:Texture2D, filter:TextureFilter):Void;

	@:native("LoadRenderTexture")
	public static function loadRenderTexture(width:Int, height:Int):RenderTexture2D;

	@:native("IsTextureReady")
	public static function isTextureReady(texture:Texture2D):Bool;

	@:native("DrawTexture")
	public static function drawTexture(texture:Texture2D, posX:Int, posY:Int, tint:Color):Void;

	@:native("DrawTextureEx")
	public static function drawTextureEx(texture:Texture2D, position:Vector2, rotation:Float, scale:Float, tint:Color):Void;

	@:native("DrawTexturePro")
	public static function drawTexturePro(texture:Texture2D, source:Rectangle, dest:Rectangle, origin:Vector2, rotation:Float, tint:Color):Void;

	@:native("SetTargetFPS")
	public static function setTargetFPS(fps:Int):Void;

	@:native("GetFrameTime")
	public static function getFrameTime():Float;

	@:native("GetTime")
	public static function getTime():Float;

	@:native("GetFPS")
	public static function getFPS():Int;

	@:native("ColorFromHSV")
	public static function colorFromHSV(hue:Float, saturation:Float, value:Float):Color;

	@:native("InitAudioDevice")
	public static function initAudioDevice():Void;

	@:native("CloseAudioDevice")
	public static function closeAudioDevice():Void;

	@:native("LoadSound")
	public static function loadSound(fileName:ConstCharStar):Sound;

	@:native("LoadSoundFromWave")
	public static function loadSoundFromWave(fileName:Wave):Sound;

	@:native("LoadSoundAlias")
	public static function loadSoundAlias(source:Sound):Sound;

	@:native("UnloadSound")
	public static function unloadSound(sound:Sound):Void;

	@:native("PlaySound")
	public static function playSound(sound:Sound):Void;

	@:native("StopSound")
	public static function stopSound(sound:Sound):Void;

	@:native("PauseSound")
	public static function pauseSound(sound:Sound):Void;

	@:native("ResumeSound")
	public static function resumeSound(sound:Sound):Void;

	@:native("IsSoundPlaying")
	public static function isSoundPlaying(sound:Sound):Bool;

	@:native("SetSoundVolume")
	public static function setSoundVolume(sound:Sound, volume:Float):Void;

	@:native("SetSoundPitch")
	public static function setSoundPitch(sound:Sound, pitch:Float):Void;

	@:native("SetSoundPan")
	public static function setSoundPan(sound:Sound, pan:Float):Void;

	@:native("LoadMusicStream")
	public static function loadMusicStream(fileName:ConstCharStar):Music;

	@:native("UnloadMusicStream")
	public static function unloadMusicStream(music:Music):Void;

	@:native("PlayMusicStream")
	public static function playMusicStream(music:Music):Void;

	@:native("IsMusicStreamPlaying")
	public static function isMusicStreamPlaying(music:Music):Bool;

	@:native("UpdateMusicStream")
	public static function updateMusicStream(music:Music):Void;

	@:native("StopMusicStream")
	public static function stopMusicStream(music:Music):Void;

	@:native("PauseMusicStream")
	public static function pauseMusicStream(music:Music):Void;

	@:native("ResumeMusicStream")
	public static function resumeMusicStream(music:Music):Void;

	@:native("SetMusicVolume")
	public static function setMusicVolume(music:Music, volume:Float):Void;

	@:native("SetMusicPitch")
	public static function setMusicPitch(music:Music, pitch:Float):Void;

	@:native("SetMusicPan")
	public static function setMusicPan(music:Music, pan:Float):Void;

	@:native("DrawFPS")
	public static function drawFPS(x:Int, y:Int):Void;

	@:native("GetFontDefault")
	public static function getFontDefault():Font;

	@:native("LoadFont")
	public static function loadFont(fileName:ConstCharStar):Font;

	@:native("UnloadFont")
	public static function unloadFont(font:Font):Void;

	@:native("DrawText")
	public static function drawText(text:ConstCharStar, x:Int, y:Int, fontSize:Int, color:Color):Void;

	@:native("DrawTextEx")
	public static function drawTextEx(font:Font, text:ConstCharStar, position:Vector2, fontSize:Float, spacing:Float, tint:Color):Void;

	@:native("DrawTextPro")
	public static function drawTextPro(font:Font, text:ConstCharStar, position:Vector2, origin:Vector2, roation:Float, fontSize:Float, spacing:Float,
		tint:Color):Void;

	@:native("MeasureTextEx")
	public static function measureTextEx(font:Font, text:ConstCharStar, fontSize:Float, spacing:Float):Vector2;

	@:native("LoadModel")
	public static function loadModel(fileName:ConstCharStar):Model;

	@:native("DrawModel")
	public static function drawModel(model:Model, position:Vector3, scale:Float, tint:Color):Void;

	@:native("DrawGrid")
	public static function drawGrid(slices:Int, spacing:Float):Void;

	@:native("DrawCube")
	public static function drawCube(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;

	@:native("GetMeshBoundingBox")
	public static function getMeshBoundingBox(mesh:Mesh):BoundingBox;

	@:native("SetConfigFlags")
	public static function setConfigFlags(flags:ConfigFlags):Void;

	@:native("OpenURL")
	public static function openURL(url:ConstCharStar):Void;

	@:native("TraceLog")
	public static function traceLog(logLevel:TraceLogLevel, text:ConstCharStar):Void;

	@:native("SetTraceLogLevel")
	public static function setTraceLogLevel(logLevel:TraceLogLevel):Void;

	@:native("IsKeyPressed")
	public static function isKeyPressed(key:KeyboardKey):Bool;

	@:native("IsKeyPressedRepeat")
	public static function isKeyPressedRepeat(key:KeyboardKey):Bool;

	@:native("IsKeyDown")
	public static function isKeyDown(key:KeyboardKey):Bool;

	@:native("IsKeyReleased")
	public static function isKeyReleased(key:KeyboardKey):Bool;

	@:native("IsKeyUp")
	public static function isKeyUp(key:KeyboardKey):Bool;

	@:native("GetKeyPressed")
	public static function getKeyPressed():KeyboardKey;

	@:native("GetCharPressed")
	public static function getCharPressed():KeyboardKey;

	@:native("SetExitKey")
	public static function setExitKey(key:KeyboardKey):Void;
}
