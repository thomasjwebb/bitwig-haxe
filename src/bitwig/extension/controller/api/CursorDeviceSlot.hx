package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "CursorDeviceSlot")
interface CursorDeviceSlot extends DeviceChain
{
public function selectSlot(slot:String):Void;
}
