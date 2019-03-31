package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
import bitwig.extension.api.opensoundcontrol.OscNode;
import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.IndexedStringValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
import bitwig.extension.callback.StringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "Track")
interface Track extends Channel
{
public function addPositionObserver(callback:IntegerValueChangedCallback):Void;
public function addIsQueuedForStopObserver(callback:BooleanValueChangedCallback):Void;
public function setName(name:String):Void;
public function addPitchNamesObserver(callback:IndexedStringValueChangedCallback):Void;
public function playNote(key:Int,velocity:Int):Void;
public function startNote(key:Int,velocity:Int):Void;
public function stopNote(key:Int,velocity:Int):Void;
public function sendMidi(status:Int,data1:Int,data2:Int):Void;
public function addTrackTypeObserver(numChars:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
public function addIsGroupObserver(callback:BooleanValueChangedCallback):Void;
public function createCursorDevice(name:String):CursorDevice;
public function createCursorDevice(name:String,numSends:Int):CursorDevice;
public function createEffectTrackBank(numTracks:Int,numScenes:Int,hasFlatTrackList:Bool):TrackBank;
public function createMasterTrack(numScenes:Int):MasterTrack;
}
