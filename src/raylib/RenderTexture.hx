package raylib;

@:native("RenderTexture")
extern class RenderTexture {
	public var id:UInt;

	public var texture:Texture;
	public var depth:Texture;
}
