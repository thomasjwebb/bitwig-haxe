package bitwig.extension.api.opensoundcontrol;

import java.io.IOException;
@:jsRequire("com.bitwig.extension.api.opensoundcontrol", "OscAddressSpace")
interface OscAddressSpace
{
public function registerMethod(address:String,typeTagPattern:String,desc:String,callback:OscMethodCallback):Void;
public function registerDefaultMethod(callback:OscMethodCallback):Void;
public function setShouldLogMessages(shouldLogMessages:Bool):Void;
public function setName(name:String):Void;
}
