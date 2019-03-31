package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "DrumPadBank")
interface DrumPadBank extends ChannelBank<DrumPad>
{
public function setIndication(shouldIndicate:Bool):Void;
}
