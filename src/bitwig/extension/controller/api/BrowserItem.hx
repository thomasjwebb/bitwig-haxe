package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.StringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "BrowserItem")
interface BrowserItem extends ObjectProxy
{
public function addExistsObserver(callback:BooleanValueChangedCallback):Void;
public function addValueObserver(maxCharacters:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
}
