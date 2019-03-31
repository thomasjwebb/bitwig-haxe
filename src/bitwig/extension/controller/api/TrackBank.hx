package bitwig.extension.controller.api;

import java.util.concurrent.Callable;
import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "TrackBank")
interface TrackBank extends ChannelBank<Track>
{
public function getTrack(indexInBank:Int):Track;
public function getChannel(indexInBank:Int):Track;
public function setTrackScrollStepSize(stepSize:Int):Void;
public function scrollToTrack(position:Int):Void;
public function addTrackScrollPositionObserver(callback:IntegerValueChangedCallback,valueWhenUnassigned:Int):Void;
public function scrollToScene(position:Int):Void;
public function addSceneScrollPositionObserver(callback:IntegerValueChangedCallback,valueWhenUnassigned:Int):Void;
public function addCanScrollTracksUpObserver(callback:BooleanValueChangedCallback):Void;
public function addCanScrollTracksDownObserver(callback:BooleanValueChangedCallback):Void;
public function addCanScrollScenesUpObserver(callback:BooleanValueChangedCallback):Void;
public function addCanScrollScenesDownObserver(callback:BooleanValueChangedCallback):Void;
public function addSceneCountObserver(callback:IntegerValueChangedCallback):Void;
public function launchScene(indexInWindow:Int):Void;
public function followCursorTrack(cursorTrack:CursorTrack):Void;
}
