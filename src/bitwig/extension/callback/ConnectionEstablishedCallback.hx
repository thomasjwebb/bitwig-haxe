package bitwig.extension.callback;

import bitwig.extension.controller.api.RemoteConnection;
@:jsRequire("com.bitwig.extension.callback", "ConnectionEstablishedCallback")
interface ConnectionEstablishedCallback extends Callback
{
public function connectionEstablished(connection:RemoteConnection):Void;
}
