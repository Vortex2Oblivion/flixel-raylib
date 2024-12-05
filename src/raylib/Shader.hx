package raylib;

import cpp.RawPointer;

@:native("Shader")
extern class Shader {
	public var id:UInt;

	public var locs:RawPointer<Int>;
}
