package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "DeviceLayerBank")
interface DeviceLayerBank extends ChannelBank<DeviceLayer>
{
public function getChannel(indexInBank:Int):DeviceLayer;
}
