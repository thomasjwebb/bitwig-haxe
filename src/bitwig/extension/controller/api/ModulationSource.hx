package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.StringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "ModulationSource")
interface ModulationSource
{
public function addIsMappingObserver(callback:BooleanValueChangedCallback):Void;
public function addNameObserver(numChars:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
public function addIsMappedObserver(callback:BooleanValueChangedCallback):Void;
}
