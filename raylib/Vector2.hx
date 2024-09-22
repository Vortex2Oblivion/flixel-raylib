package raylib;

@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:structAccess
@:keep
@:native("Vector2")
extern class Vector2 {
    public var x:Float;

    public var y:Float;

    public static inline function create(x:Float, y:Float):Vector2 {
        return untyped __cpp__("Vector3{(float){0}, (float){1}}", x, y);
    }
}
