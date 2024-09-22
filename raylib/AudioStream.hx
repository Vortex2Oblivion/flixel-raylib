package raylib;

import cpp.Star;

@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:native("AudioStream")
@:keep
@:structAccess
extern class AudioStream {
    public var buffer:Star<RAudioBuffer>;
    public var processor:Star<RAudioProcessor>;

    public var sampleRate:UInt;
    public var sampleSize:UInt;
    public var channels:UInt;
}
