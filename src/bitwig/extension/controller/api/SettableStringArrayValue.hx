package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "SettableStringArrayValue")
interface SettableStringArrayValue extends StringArrayValue
{
public function set(value:Array<String>):Void;
}
