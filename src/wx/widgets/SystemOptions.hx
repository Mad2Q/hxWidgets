package wx.widgets;

@:include("wx/sysopt.h")
@:unreflective
@:native("wxSystemOptions")
@:structAccess
extern class SystemOptions extends Object {

    @:native("wxSystemOptions::GetOptionInt")   public static function getOptionInt(name:WxString):Int;
    @:native("wxSystemOptions::SetOption")      public static function setOption(name:WxString, value:Int):Void;

}