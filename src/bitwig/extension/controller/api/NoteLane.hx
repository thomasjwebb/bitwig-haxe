package bitwig.extension.controller.api;

import bitwig.extension.callback.ColorValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
import bitwig.extension.callback.StringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "NoteLane")
interface NoteLane
{
public function addNoteValueObserver(callback:IntegerValueChangedCallback):Void;
public function addNameObserver(numChars:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
public function addColorObserver(callback:ColorValueChangedCallback):Void;
public function play(velocity:Float):Void;
}
