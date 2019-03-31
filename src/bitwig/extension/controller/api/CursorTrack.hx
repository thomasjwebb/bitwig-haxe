package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
@:jsRequire("com.bitwig.extension.controller.api", "CursorTrack")
interface CursorTrack extends CursorChannel extends Track extends PinnableCursor
{
public function setCursorNavigationMode(mode:CursorNavigationMode):Void;
public function createCursorDevice(name:String):PinnableCursorDevice;
public function createCursorDevice(name:String,numSends:Int):PinnableCursorDevice;
}
