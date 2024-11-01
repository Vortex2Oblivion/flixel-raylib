package raylib;

@:buildXml("<include name='${haxelib:flixel-raylib}/src/Build.xml'/>")
@:include("raylib.h")
@:structAccess
@:keep
@:native("Vector3")
extern class Vector3 {
    public var x:Float;

    public var y:Float;

    public var z:Float;
    
    public static inline function create(x:Float, y:Float, z:Float):Vector3 {
        return untyped __cpp__("Vector3{(float){0}, (float){1}, (float){2}}", x, y, z);
    }
}
