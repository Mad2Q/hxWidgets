package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/stattext.h")
@:unreflective
@:native("wxStaticText")
@:structAccess
extern class StaticText extends Control {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxStaticText")        private static function _new():RawPointer<StaticText>;
                                        public static inline function createInstance():Pointer<StaticText> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, title:WxString, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Wrap")                    public function wrap(width:Int):Void;

}
