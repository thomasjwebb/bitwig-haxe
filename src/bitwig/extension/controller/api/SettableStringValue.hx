package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
@:jsRequire("com.bitwig.extension.controller.api", "SettableStringValue")
interface SettableStringValue extends StringValue
{
public function set(value:String):Void;
}
