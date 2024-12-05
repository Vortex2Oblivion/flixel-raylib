package raylib;

import cpp.RawPointer;

@:native("Material")
extern class Material {
	public var shader:Shader;
	public var maps:RawPointer<MaterialMap>;
	public var params:Array<Float>;
}
