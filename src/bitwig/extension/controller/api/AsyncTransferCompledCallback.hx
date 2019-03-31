package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "AsyncTransferCompledCallback")
interface AsyncTransferCompledCallback
{
public function asyncTransferCompleted(amountTransferred:Int):Void;
}
