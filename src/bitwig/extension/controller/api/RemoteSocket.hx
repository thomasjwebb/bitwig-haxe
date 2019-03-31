package bitwig.extension.controller.api;

import bitwig.extension.callback.ConnectionEstablishedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "RemoteSocket")
interface RemoteSocket
{
public function setClientConnectCallback(callback:ConnectionEstablishedCallback):Void;
}
