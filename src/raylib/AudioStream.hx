package raylib;

import cpp.Star;

@:native("AudioStream")
extern class AudioStream {
	public var buffer:Star<RAudioBuffer>;
	public var processor:Star<RAudioProcessor>;

	public var sampleRate:UInt;
	public var sampleSize:UInt;
	public var channels:UInt;
}
