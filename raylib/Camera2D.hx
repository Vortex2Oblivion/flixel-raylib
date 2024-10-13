package raylib;

@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:keep
@:structAccess
@:native("Camera2D")
extern class Camera2D {
    public var position:Vector2;

    public var target:Vector2;

    public var rotation:Float;

    public var zoom:Float;

    public static inline function create():Camera2D {
        return untyped __cpp__("Camera2D{0}");
    }
}