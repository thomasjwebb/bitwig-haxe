package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "PrimaryDevice")
interface PrimaryDevice extends Device
{
public function switchToDevice(deviceType:DeviceType,chainLocation:ChainLocation):Void;
}
