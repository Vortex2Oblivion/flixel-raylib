package raylib;


@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:structAccess
@:keep
@:native("Vector4")
extern class Vector4 {
    public var x:Float;

    public var y:Float;

    public var z:Float;

    public var w:Float;
    
    public static inline function create(x:Float, y:Float, z:Float, w:Float):Vector4 {
        return untyped __cpp__("Vector4{(float){0}, (float){1}, (float){2}, (float){3}}", x, y, z, w);
    }
}
