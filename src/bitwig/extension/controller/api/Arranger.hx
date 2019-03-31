package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "Arranger")
interface Arranger
{
public function createCueMarkerBank(size:Int):CueMarkerBank;
public function addPlaybackFollowObserver(callback:BooleanValueChangedCallback):Void;
public function addTrackRowHeightObserver(callback:BooleanValueChangedCallback):Void;
public function addCueMarkerVisibilityObserver(callback:BooleanValueChangedCallback):Void;
}
