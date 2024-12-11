package raylib;

import cpp.RawPointer;

@:native("Music")
extern class Music {
	public var stream:AudioStream;
	public var frameCount:UInt;
	public var looping:Bool;
	public var ctxType:Int;
	public var ctxData:RawPointer<cpp.Void>;
}
