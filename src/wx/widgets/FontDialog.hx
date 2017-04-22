package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/fontdlg.h")
@:unreflective
@:native("wxFontDialog")
@:structAccess
extern class FontDialog extends Dialog {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxFontDialog")        private static function _new():RawPointer<FontDialog>;
                                        public static inline function createInstance():Pointer<FontDialog> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

}
