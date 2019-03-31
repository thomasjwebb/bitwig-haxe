package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "BrowserItemBank")
interface BrowserItemBank
{
public function getItem(index:Int):BrowserItem;
public function addScrollPositionObserver(callback:IntegerValueChangedCallback):Void;
public function addCanScrollUpObserver(callback:BooleanValueChangedCallback):Void;
public function addCanScrollDownObserver(callback:BooleanValueChangedCallback):Void;
}
