package raylib;

@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:keep
@:native("Matrix")
extern class Matrix {
    public var m0:Float;
    public var m4:Float;
    public var m8:Float;
    public var m12:Float;

    public var m1:Float;
    public var m5:Float;
    public var m9:Float;
    public var m13:Float;

    public var m2:Float;
    public var m6:Float;
    public var m10:Float;
    public var m14:Float;

    public var m3:Float;
    public var m7:Float;
    public var m11:Float;
    public var m15:Float;
}