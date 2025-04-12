package raylib;

import cpp.RawPointer;

@:native("AudioStream")
extern class AudioStream {
	public var buffer:RawPointer<RAudioBuffer>;
	public var processor:RawPointer<RAudioProcessor>;

	public var sampleRate:UInt;
	public var sampleSize:UInt;
	public var channels:UInt;
}
