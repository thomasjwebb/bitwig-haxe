package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "BrowserColumn")
interface BrowserColumn extends ObjectProxy
{
public function addExistsObserver(callback:BooleanValueChangedCallback):Void;
public function addEntryCountObserver(callback:IntegerValueChangedCallback):Void;
public function createItemBank(size:Int):BrowserItemBank;
}
