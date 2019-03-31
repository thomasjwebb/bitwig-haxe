package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscNode;
import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.ColorValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
import bitwig.extension.callback.StepDataChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "Clip")
interface Clip extends ObjectProxy
{
public function scrollToKey(key:Int):Void;
public function scrollToStep(step:Int):Void;
public function addCanScrollKeysUpObserver(callback:BooleanValueChangedCallback):Void;
public function addCanScrollKeysDownObserver(callback:BooleanValueChangedCallback):Void;
public function addCanScrollStepsBackwardsObserver(callback:BooleanValueChangedCallback):Void;
public function addCanScrollStepsForwardObserver(callback:BooleanValueChangedCallback):Void;
public function toggleStep(x:Int,y:Int,insertVelocity:Int):Void;
public function setStep(x:Int,y:Int,insertVelocity:Int,insertDuration:Float):Void;
public function clearStep(x:Int,y:Int):Void;
public function clearSteps(y:Int):Void;
public function selectStepContents(x:Int,y:Int,clearCurrentSelection:Bool):Void;
public function setStepSize(lengthInBeatTime:Float):Void;
public function addStepDataObserver(callback:StepDataChangedCallback):Void;
public function addPlayingStepObserver(callback:IntegerValueChangedCallback):Void;
public function setName(name:String):Void;
public function addColorObserver(callback:ColorValueChangedCallback):Void;
public function transpose(semitones:Int):Void;
public function quantize(amount:Float):Void;
}
