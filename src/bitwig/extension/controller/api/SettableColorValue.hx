package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
@:jsRequire("com.bitwig.extension.controller.api", "SettableColorValue")
interface SettableColorValue extends ColorValue
{
public function set(red:Float,green:Float,blue:Float):Void;
public function set(red:Float,green:Float,blue:Float,alpha:Float):Void;
}
