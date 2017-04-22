package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/image.h")
@:unreflective
@:native("wxImage")
@:structAccess
extern class Image extends Object {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxImage")             private static function _new(stream:MemoryInputStream):RawPointer<Image>;
                                        public static inline function createInstance(stream:MemoryInputStream):Pointer<Image> {
                                            return Pointer.fromRaw(_new(stream));
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetWidth")                public function getWidth():Int;
    @:native("GetHeight")               public function getHeight():Int;

}
