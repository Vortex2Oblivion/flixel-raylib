package raylib;

@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:structAccess
@:keep
@:native("Texture")
extern class Texture {
    public var id:UInt;

    public var width:Int;
    public var height:Int;

    public var mipmaps:Int;

    public var format:Int;
}
