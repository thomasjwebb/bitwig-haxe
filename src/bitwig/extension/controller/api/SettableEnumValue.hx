package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
@:jsRequire("com.bitwig.extension.controller.api", "SettableEnumValue")
interface SettableEnumValue extends EnumValue
{
public function set(value:String):Void;
}
