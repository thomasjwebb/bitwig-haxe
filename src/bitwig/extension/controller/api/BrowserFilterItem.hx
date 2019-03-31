package bitwig.extension.controller.api;

import bitwig.extension.callback.IntegerValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "BrowserFilterItem")
interface BrowserFilterItem extends BrowserItem
{
public function addHitCountObserver(callback:IntegerValueChangedCallback):Void;
}
