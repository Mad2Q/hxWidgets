package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/object.h")
@:unreflective
@:native("wxClassInfo")
@:structAccess
extern class ClassInfo {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxClassInfo")         private static function _new():RawPointer<ClassInfo>;
                                        public static inline function createInstance():Pointer<ClassInfo> {
                                            return Pointer.fromRaw(_new());
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetClassName")            public function getClassName():WxString;

}
