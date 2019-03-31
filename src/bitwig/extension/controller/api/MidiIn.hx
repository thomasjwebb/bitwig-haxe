package bitwig.extension.controller.api;

import bitwig.extension.callback.ShortMidiDataReceivedCallback;
import bitwig.extension.callback.SysexMidiDataReceivedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "MidiIn")
interface MidiIn
{
public function setMidiCallback(callback:ShortMidiDataReceivedCallback):Void;
public function setSysexCallback(callback:SysexMidiDataReceivedCallback):Void;
public function createNoteInput(name:String,masks:String...):NoteInput;
}
