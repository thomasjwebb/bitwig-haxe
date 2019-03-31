package bitwig.extension.controller.api;

import java.io.IOException;
import bitwig.extension.callback.DataReceivedCallback;
import bitwig.extension.callback.NoArgsCallback;
@:jsRequire("com.bitwig.extension.controller.api", "RemoteConnection")
interface RemoteConnection
{
public function setDisconnectCallback(callback:NoArgsCallback):Void;
public function setReceiveCallback(callback:DataReceivedCallback):Void;
}
