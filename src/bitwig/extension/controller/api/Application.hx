package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.StringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "Application")
interface Application
{
public function createAudioTrack(position:Int):Void;
public function createInstrumentTrack(position:Int):Void;
public function createEffectTrack(position:Int):Void;
public function getAction(id:String):Action;
public function getActionCategory(id:String):ActionCategory;
public function addHasActiveEngineObserver(callable:BooleanValueChangedCallback):Void;
public function addProjectNameObserver(callback:StringValueChangedCallback,maxChars:Int):Void;
public function navigateIntoTrackGroup(track:Track):Void;
public function setPanelLayout(panelLayout:String):Void;
public function addPanelLayoutObserver(callable:StringValueChangedCallback,maxChars:Int):Void;
public function addDisplayProfileObserver(callable:StringValueChangedCallback,maxChars:Int):Void;
public function setPerspective(perspective:String):Void;
public function addSelectedModeObserver(callable:StringValueChangedCallback,maxChars:Int,fallbackText:String):Void;
}
