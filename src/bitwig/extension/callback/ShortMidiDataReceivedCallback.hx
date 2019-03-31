package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "ShortMidiDataReceivedCallback")
interface ShortMidiDataReceivedCallback extends Callback
{
public function midiReceived(statusByte:Int,data1:Int,data2:Int):Void;
}
