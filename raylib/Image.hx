package raylib;

@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:structAccess
@:keep
@:native("Image")
extern class Image {
    public var data:Dynamic;

    public var width:Int;
    public var height:Int;

    public var mipmaps:Int;

    public var format:Int;
}
