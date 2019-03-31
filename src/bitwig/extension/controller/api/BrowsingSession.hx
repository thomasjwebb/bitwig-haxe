package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "BrowsingSession")
interface BrowsingSession extends ObjectProxy
{
public function addIsAvailableObserver(callback:BooleanValueChangedCallback):Void;
public function addIsActiveObserver(callback:BooleanValueChangedCallback):Void;
public function createFilterBank(numColumns:Int):BrowserFilterColumnBank;
public function addHitCountObserver(callback:IntegerValueChangedCallback):Void;
}
