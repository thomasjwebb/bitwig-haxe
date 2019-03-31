package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "BrowsingSessionBank")
interface BrowsingSessionBank extends Bank<GenericBrowsingSession>
{
public function getSession(index:Int):GenericBrowsingSession;
public function addScrollPositionObserver(callback:IntegerValueChangedCallback):Void;
public function addCanScrollUpObserver(callback:BooleanValueChangedCallback):Void;
public function addCanScrollDownObserver(callback:BooleanValueChangedCallback):Void;
public function addEntryCountObserver(callback:IntegerValueChangedCallback):Void;
}
