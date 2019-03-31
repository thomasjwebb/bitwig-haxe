package bitwig.extension.controller.api;

import bitwig.extension.api.MemoryBlock;
@:jsRequire("com.bitwig.extension.controller.api", "InputPipe")
interface InputPipe extends Pipe
{
public function readAsync(data:MemoryBlock,callback:AsyncTransferCompledCallback,timeoutInMs:Int):Void;
public function read(data:MemoryBlock,timeoutInMs:Int):Int;
}
