package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "BrowserFilterColumnBank")
interface BrowserFilterColumnBank extends Bank<BrowserFilterColumn>
{
public function getItem(index:Int):BrowserFilterColumn;
public function addScrollPositionObserver(callback:IntegerValueChangedCallback):Void;
public function addCanScrollUpObserver(callback:BooleanValueChangedCallback):Void;
public function addCanScrollDownObserver(callback:BooleanValueChangedCallback):Void;
public function addEntryCountObserver(callback:IntegerValueChangedCallback):Void;
}
