package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
import bitwig.extension.api.opensoundcontrol.OscNode;
import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.DoubleValueChangedCallback;
import bitwig.extension.callback.EnumValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "Transport")
interface Transport extends ObjectProxy
{
public function addIsPlayingObserver(callback:BooleanValueChangedCallback):Void;
public function addIsRecordingObserver(callback:BooleanValueChangedCallback):Void;
public function addOverdubObserver(callback:BooleanValueChangedCallback):Void;
public function addLauncherOverdubObserver(callback:BooleanValueChangedCallback):Void;
public function addAutomationWriteModeObserver(callback:EnumValueChangedCallback):Void;
public function addIsWritingArrangerAutomationObserver(callback:BooleanValueChangedCallback):Void;
public function addIsWritingClipLauncherAutomationObserver(callback:BooleanValueChangedCallback):Void;
public function addAutomationOverrideObserver(callback:BooleanValueChangedCallback):Void;
public function addIsLoopActiveObserver(callback:BooleanValueChangedCallback):Void;
public function addPunchInObserver(callback:BooleanValueChangedCallback):Void;
public function addPunchOutObserver(callback:BooleanValueChangedCallback):Void;
public function addClickObserver(callback:BooleanValueChangedCallback):Void;
public function addMetronomeTicksObserver(callback:BooleanValueChangedCallback):Void;
public function addMetronomeVolumeObserver(callback:DoubleValueChangedCallback):Void;
public function addPreRollClickObserver(callback:BooleanValueChangedCallback):Void;
public function addPreRollObserver(callback:EnumValueChangedCallback):Void;
public function setLoop(isEnabled:Bool):Void;
public function setClick(isEnabled:Bool):Void;
public function setPreRoll(value:String):Void;
public function setMetronomeValue(amount:Int,range:Int):Void;
public function setOverdub(isEnabled:Bool):Void;
public function setLauncherOverdub(isEnabled:Bool):Void;
public function setAutomationWriteMode(mode:String):Void;
public function increaseTempo(amount:Int,range:Int):Void;
public function setPosition(beats:Float):Void;
public function incPosition(beats:Float,snap:Bool):Void;
public function addClipLauncherPostRecordingActionObserver(callback:EnumValueChangedCallback):Void;
public function setClipLauncherPostRecordingAction(action:String):Void;
}
