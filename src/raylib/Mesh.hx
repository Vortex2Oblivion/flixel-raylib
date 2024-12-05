package raylib;

import cpp.RawPointer;
import cpp.ConstStar;
import cpp.UInt8;
import cpp.UInt16;

@:native("Mesh")
extern class Mesh {
	public var vertexCount:Int;
	public var triangleCount:Int;

	public var vertices:RawPointer<Float>;
	public var texcoords:RawPointer<Float>;
	public var texcoords2:RawPointer<Float>;
	public var normals:RawPointer<Float>;
	public var tangents:RawPointer<Float>;

	public var colors:ConstStar<UInt8>;
	public var indices:ConstStar<UInt16>;

	public var animVertices:RawPointer<Float>;
	public var animNormals:RawPointer<Float>;
	public var boneIds:ConstStar<UInt8>;
	public var boneWeights:RawPointer<Float>;

	public var vaoId:UInt;
	public var vboId:RawPointer<UInt>;
}
