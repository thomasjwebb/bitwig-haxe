package bitwig.extension.controller.api;

import bitwig.extension.api.MemoryBlock;
@:jsRequire("com.bitwig.extension.controller.api", "OutputPipe")
interface OutputPipe extends Pipe
{
public function writeAsync(data:MemoryBlock,callback:AsyncTransferCompledCallback,timeoutInMs:Int):Void;
public function write(data:MemoryBlock,timeoutInMs:Int):Int;
}
