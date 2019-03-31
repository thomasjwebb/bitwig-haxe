package bitwig.extension.controller.api;

import java.util.List;
import bitwig.extension.controller.UsbInterfaceMatcher;
@:jsRequire("com.bitwig.extension.controller.api", "UsbInterface")
interface UsbInterface
{
public function pipe(index:Int):UsbPipe;
}
