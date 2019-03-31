package bitwig.extension.controller.api;

import bitwig.extension.callback.StringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "BrowserFilterColumn")
interface BrowserFilterColumn extends BrowserColumn
{
public function createItemBank(size:Int):BrowserFilterItemBank;
public function addNameObserver(maxCharacters:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
}
