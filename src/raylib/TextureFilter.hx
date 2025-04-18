package raylib;

enum abstract TextureFilter(Int) to Int from Int {
    var TEXTURE_FILTER_POINT = 0;
    var TEXTURE_FILTER_BILINEAR;
    var TEXTURE_FILTER_TRILINEAR;
    var TEXTURE_FILTER_ANISOTROPIC_4X;
    var TEXTURE_FILTER_ANISOTROPIC_8X;
    var TEXTURE_FILTER_ANISOTROPIC_16X;
}