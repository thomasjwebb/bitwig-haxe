package bitwig.extension.controller.api;

import java.util.List;
import bitwig.extension.controller.UsbDeviceMatcher;
import bitwig.extension.controller.UsbInterfaceMatcher;
@:jsRequire("com.bitwig.extension.controller.api", "UsbDevice")
interface UsbDevice extends HardwareDevice
{
public function iface(index:Int):UsbInterface;
}
