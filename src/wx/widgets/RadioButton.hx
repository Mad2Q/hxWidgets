package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/radiobut.h")
@:unreflective
@:native("wxRadioButton")
@:structAccess
extern class RadioButton extends Control {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxRadioButton")       private static function _new():RawPointer<RadioButton>;
                                        public static inline function createInstance():Pointer<RadioButton> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, label:WxString, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetValue")                public function setValue(value:Bool):Void;
    @:native("GetValue")                public function getValue():Bool;

}
