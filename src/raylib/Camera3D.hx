package raylib;

@:buildXml("<include name='${haxelib:flixel-raylib}/src/Build.xml'/>")
@:include("raylib.h")
@:keep
@:structAccess
@:native("Camera3D")
extern class Camera3D {
    public var position:Vector3;

    public var target:Vector3;

    public var up:Vector3;

    public var fovy:Float;

    public var projection:CameraProjection;

    // https://github.com/foreignsasquatch/raylib-hx/blob/5e365324c678d215332370e732f084d02ee797e9/source/Raylib.cpp.hx#L417
    public static inline function create():Camera3D {
        return untyped __cpp__("Camera3D{ 0 }");
    }
}