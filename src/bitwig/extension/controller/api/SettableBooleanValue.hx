package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
@:jsRequire("com.bitwig.extension.controller.api", "SettableBooleanValue")
interface SettableBooleanValue extends BooleanValue
{
public function set(value:Bool):Void;
}
