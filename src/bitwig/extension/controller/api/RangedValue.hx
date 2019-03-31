package bitwig.extension.controller.api;

import bitwig.extension.callback.DoubleValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "RangedValue")
interface RangedValue extends Value<DoubleValueChangedCallback>
{
public function addValueObserver(range:Int,callback:IntegerValueChangedCallback):Void;
public function addRawValueObserver(callback:DoubleValueChangedCallback):Void;
}
