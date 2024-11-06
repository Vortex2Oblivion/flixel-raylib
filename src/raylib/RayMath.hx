package raylib;


@:buildXml("<include name='${haxelib:flixel-raylib}/src/Build.xml'/>")
@:include("raymath.h")
@:keep
extern class RayMath {

    @:native("EPSILON")
    public static final EPSILON:Float;

    @:native("DEG2RAD")
    public static final DEG2RAD:Float;

    @:native("RAD2DEG")
    public static final RAD2DEG:Float;

    @:native("Clamp")
    public static function name(value:Float, min:Float, max:Float):Float;

    @:native("Lerp")
    public static function lerp(start:Float, end:Float, amount:Float):Float;

}