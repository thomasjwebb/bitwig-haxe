package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "SoloValue")
interface SoloValue extends SettableBooleanValue
{
public function toggle(exclusive:Bool):Void;
}
