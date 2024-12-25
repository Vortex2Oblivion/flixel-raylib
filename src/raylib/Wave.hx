package raylib;

import cpp.RawPointer;

@:native("Wave")
extern class Wave {
    public var frameCount:UInt;

	public var sampleRate:UInt;

	public var sampleSize:UInt;

	public var channels:UInt;

	public var data:RawPointer<cpp.Void>;
}
