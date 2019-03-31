package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "DataReceivedCallback")
interface DataReceivedCallback extends Callback
{
public function dataReceived(data:js.lib.Uint8Array):Void;
}
