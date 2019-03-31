package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
import bitwig.extension.api.opensoundcontrol.OscNode;
import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.ColorValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
import bitwig.extension.callback.NotePlaybackCallback;
@:jsRequire("com.bitwig.extension.controller.api", "Channel")
interface Channel extends DeviceChain
{
public function addVuMeterObserver(range:Int,channel:Int,peak:Bool,callback:IntegerValueChangedCallback):Void;
public function addNoteObserver(callback:NotePlaybackCallback):Void;
public function addColorObserver(callback:ColorValueChangedCallback):Void;
public function getSend(index:Int):Send;
public function addIsSelectedInMixerObserver(callback:BooleanValueChangedCallback):Void;
}
