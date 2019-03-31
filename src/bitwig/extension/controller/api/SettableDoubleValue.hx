package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
@:jsRequire("com.bitwig.extension.controller.api", "SettableDoubleValue")
interface SettableDoubleValue extends DoubleValue
{
public function set(value:Float):Void;
public function inc(amount:Float):Void;
}
