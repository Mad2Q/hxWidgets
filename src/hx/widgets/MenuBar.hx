package hx.widgets;

import cpp.Pointer;
import wx.widgets.MenuBar in WxMenuBar;
import wx.widgets.WxString;

class MenuBar extends Window {

    public function new(style:Int = 0, create:Bool = true) {
        super(null, -1);
        if (create) {
            _ref = WxMenuBar.createInstance(style).reinterpret();
        }
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:access(hx.widgets.Menu)
    public function append(menu:Menu, title:String) {
        var str = WxString.fromUTF8(title);
        menuBarRef.ptr.append(menu.menuRef.get_raw(), str);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var menuBarRef(get, null):Pointer<WxMenuBar>;
    private function get_menuBarRef():Pointer<WxMenuBar> {
        return _ref.reinterpret();
    }

}
