package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
@:jsRequire("com.bitwig.extension.controller.api", "SettableIntegerValue")
interface SettableIntegerValue extends IntegerValue
{
public function set(value:Int):Void;
public function inc(amount:Int):Void;
}
