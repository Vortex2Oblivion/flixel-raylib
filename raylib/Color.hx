package raylib;

import cpp.UInt8;

@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:structAccess
@:keep
@:native("Color")
extern class Color {
    public var r:UInt8;

    public var g:UInt8;

    public var b:UInt8;

    public var a:UInt8;

    public static inline function create(r:UInt8, g:UInt8, b:UInt8, a:UInt8):Color {
        return untyped __cpp__("Color{(int){0}, (int){1} , (int){2}, (int){3}}", r, g, b, a);
    }
}