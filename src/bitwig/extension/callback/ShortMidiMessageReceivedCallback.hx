package bitwig.extension.callback;

import bitwig.extension.api.util.midi.ShortMidiMessage;
@:jsRequire("com.bitwig.extension.callback", "ShortMidiMessageReceivedCallback")
interface ShortMidiMessageReceivedCallback extends ShortMidiDataReceivedCallback
{
public function midiReceived(msg:ShortMidiMessage):Void;
}
