package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
@:jsRequire("com.bitwig.extension.controller.api", "SettableRangedValue")
interface SettableRangedValue extends RangedValue
{
public function set(value:Float):Void;
public function setImmediately(value:Float):Void;
public function set(value:Int,resolution:Int):Void;
public function inc(increment:Float):Void;
public function inc(increment:Int,resolution:Int):Void;
public function setRaw(value:Float):Void;
public function incRaw(delta:Float):Void;
}
