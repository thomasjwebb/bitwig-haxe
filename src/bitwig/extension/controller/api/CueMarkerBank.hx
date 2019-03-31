package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "CueMarkerBank")
interface CueMarkerBank extends Bank<CueMarker>
{
public function scrollToMarker(position:Int):Void;
}
