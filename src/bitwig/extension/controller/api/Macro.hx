package bitwig.extension.controller.api;

import bitwig.extension.callback.StringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "Macro")
interface Macro
{
public function addLabelObserver(numChars:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
}
