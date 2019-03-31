package bitwig.extension.api.opensoundcontrol;

@:jsRequire("com.bitwig.extension.api.opensoundcontrol", "OscModule")
interface OscModule
{
public function createUdpServer(port:Int,addressSpace:OscAddressSpace):Void;
public function connectToUdpServer(host:String,port:Int,addressSpace:OscAddressSpace):OscConnection;
}
