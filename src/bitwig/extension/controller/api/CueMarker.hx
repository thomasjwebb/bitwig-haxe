package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "CueMarker")
interface CueMarker extends ObjectProxy
{
public function launch(quantized:Bool):Void;
}
