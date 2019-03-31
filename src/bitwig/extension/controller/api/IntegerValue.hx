package bitwig.extension.controller.api;

import bitwig.extension.callback.IntegerValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "IntegerValue")
interface IntegerValue extends Value<IntegerValueChangedCallback>
{
public function addValueObserver(callback:IntegerValueChangedCallback,valueWhenUnassigned:Int):Void;
}
