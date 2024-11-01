package raylib;

@:buildXml("<include name='${haxelib:flixel-raylib}/src/Build.xml'/>")
@:include("raylib.h")
@:native("MaterialMap")
@:keep
@:structAccess
extern class MaterialMap {
    public var texture:Texture2D;
    public var color:Color;
    public var value:Float;
}