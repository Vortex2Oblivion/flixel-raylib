package raylib;


@:buildXml("<include name='${haxelib:flixel-raylib}/src/Build.xml'/>")
@:include("raylib.h")
@:structAccess
@:keep
@:native("BoundingBox")
extern class BoundingBox {
    public var min:Vector3;

    public var max:Vector3;
}
