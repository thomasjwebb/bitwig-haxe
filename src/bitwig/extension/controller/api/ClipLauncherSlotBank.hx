package bitwig.extension.controller.api;

import bitwig.extension.callback.ClipLauncherSlotBankPlaybackStateChangedCallback;
import bitwig.extension.callback.IndexedBooleanValueChangedCallback;
import bitwig.extension.callback.IndexedColorValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "ClipLauncherSlotBank")
interface ClipLauncherSlotBank extends ClipLauncherSlotOrSceneBank<ClipLauncherSlot>
{
public function select(slot:Int):Void;
public function record(slot:Int):Void;
public function showInEditor(slot:Int):Void;
public function createEmptyClip(slot:Int,lengthInBeats:Int):Void;
public function deleteClip(slot:Int):Void;
public function duplicateClip(slot:Int):Void;
public function addIsSelectedObserver(callback:IndexedBooleanValueChangedCallback):Void;
public function addHasContentObserver(callback:IndexedBooleanValueChangedCallback):Void;
public function addPlaybackStateObserver(callback:ClipLauncherSlotBankPlaybackStateChangedCallback):Void;
public function addIsPlayingObserver(callback:IndexedBooleanValueChangedCallback):Void;
public function addIsRecordingObserver(callback:IndexedBooleanValueChangedCallback):Void;
public function addIsPlaybackQueuedObserver(callback:IndexedBooleanValueChangedCallback):Void;
public function addIsRecordingQueuedObserver(callback:IndexedBooleanValueChangedCallback):Void;
public function addIsStopQueuedObserver(callback:IndexedBooleanValueChangedCallback):Void;
public function addIsQueuedObserver(callback:IndexedBooleanValueChangedCallback):Void;
public function addColorObserver(callback:IndexedColorValueChangedCallback):Void;
public function setIndication(shouldIndicate:Bool):Void;
}
