package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
import bitwig.extension.api.opensoundcontrol.OscNode;
@:jsRequire("com.bitwig.extension.controller.api", "CursorDevice")
interface CursorDevice extends Cursor extends Device
{
public function selectDevice(device:Device):Void;
public function selectFirstInChannel(channel:Channel):Void;
public function selectLastInChannel(channel:Channel):Void;
public function selectFirstInSlot(chain:String):Void;
public function selectLastInSlot(chain:String):Void;
public function selectFirstInKeyPad(key:Int):Void;
public function selectLastInKeyPad(key:Int):Void;
public function selectFirstInLayer(index:Int):Void;
public function selectLastInLayer(index:Int):Void;
public function selectFirstInLayer(name:String):Void;
public function selectLastInLayer(name:String):Void;
}
