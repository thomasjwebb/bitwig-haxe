package bitwig.extension.api.opensoundcontrol;

@:jsRequire("com.bitwig.extension.api.opensoundcontrol", "OscMethodCallback")
interface OscMethodCallback
{
public function handle(source:OscConnection,message:OscMessage):Void;
}
