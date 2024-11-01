package raylib;

@:buildXml("<include name='${haxelib:flixel-raylib}/src/Build.xml'/>")
@:include("raylib.h")
@:native("Transform")
@:keep
@:structAccess
extern class Transform {
    public var translation:Vector3;
    public var rotation:Quaternion;
    public var scale:Vector3;
}