package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "MidiOut")
interface MidiOut
{
public function sendMidi(status:Int,data1:Int,data2:Int):Void;
public function sendSysex(hexString:String):Void;
public function sendSysex(data:js.lib.Uint8Array):Void;
public function setShouldSendMidiBeatClock(shouldSendClock:Bool):Void;
}
