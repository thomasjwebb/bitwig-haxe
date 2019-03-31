package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "Browser")
interface Browser extends ObjectProxy
{
public function addIsBrowsingObserver(callback:BooleanValueChangedCallback):Void;
public function activateSession(session:BrowsingSession):Void;
public function createSessionBank(size:Int):BrowsingSessionBank;
}
