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
}