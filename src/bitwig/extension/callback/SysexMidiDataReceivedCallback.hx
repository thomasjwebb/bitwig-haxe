package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "SysexMidiDataReceivedCallback")
interface SysexMidiDataReceivedCallback extends Callback
{
public function sysexDataReceived(data:String):Void;
}
