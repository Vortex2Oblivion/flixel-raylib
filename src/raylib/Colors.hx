package raylib;

@:buildXml("<include name='${haxelib:flixel-raylib}/src/Build.xml'/>")
@:include("raylib.h")
@:structAccess
@:keep

extern class Colors{
    @:native("LIGHTGRAY") static final LIGHTGRAY:Color; // Light Gray
    @:native("GRAY") static final GRAY:Color; // Gray
    @:native("DARKGRAY") static final DARKGRAY:Color; // Dark Gray
    @:native("YELLOW") static final YELLOW:Color; // Yellow
    @:native("GOLD") static final GOLD:Color; // Gold
    @:native("ORANGE") static final ORANGE:Color; // Orange
    @:native("PINK") static final PINK:Color; // Pink
    @:native("RED") static final RED:Color; // Red
    @:native("MAROON") static final MAROON:Color; // Maroon
    @:native("GREEN") static final GREEN:Color; // Green
    @:native("LIME") static final LIME:Color; // Lime
    @:native("DARKGREEN") static final DARKGREEN:Color; // Dark Green
    @:native("SKYBLUE") static final SKYBLUE:Color; // Sky Blue
    @:native("BLUE") static final BLUE:Color; // Blue
    @:native("DARKBLUE") static final DARKBLUE:Color; // Dark Blue
    @:native("PURPLE") static final PURPLE:Color; // Purple
    @:native("VIOLET") static final VIOLET:Color; // Violet
    @:native("DARKPURPLE") static final DARKPURPLE:Color; // Dark Purple
    @:native("BEIGE") static final BEIGE:Color; // Beige
    @:native("BROWN") static final BROWN:Color; // Brown
    @:native("DARKBROWN") static final DARKBROWN:Color; // Dark Brown

    @:native("WHITE") static final WHITE:Color; // White
    @:native("BLACK") static final BLACK:Color; // Black
    @:native("BLANK") static final BLANK:Color; // Blank (Transparent)
    @:native("MAGENTA") static final MAGENTA:Color; // Magenta
    @:native("RAYWHITE") static final RAYWHITE:Color; // Raysan's white (raylib logo)
}