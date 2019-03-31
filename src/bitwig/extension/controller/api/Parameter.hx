package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
import bitwig.extension.api.opensoundcontrol.OscNode;
import bitwig.extension.callback.StringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "Parameter")
interface Parameter extends SettableRangedValue extends ObjectProxy
{
public function addNameObserver(maxChars:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
public function addValueDisplayObserver(maxChars:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
public function touch(isBeingTouched:Bool):Void;
public function setIndication(shouldIndicate:Bool):Void;
public function setLabel(label:String):Void;
}
