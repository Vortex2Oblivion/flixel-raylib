package raylib;


@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:structAccess
@:keep
@:native("BoundingBox")
extern class BoundingBox {
    public var min:Vector3;

    public var max:Vector3;
}
