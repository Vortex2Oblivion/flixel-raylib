package raylib;

@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:structAccess
@:keep
@:native("GlyphInfo")
extern class GlyphInfo {
    public var value:Int;
    public var offsetX:Int;
    public var offsetY:Int;
    public var advanceX:Int;
    public var image:Image;
}
