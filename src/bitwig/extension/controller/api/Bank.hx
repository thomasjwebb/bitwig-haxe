package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscNode;
@:jsRequire("com.bitwig.extension.controller.api", "Bank")
interface Bank
{
public function setSizeOfBank(size:Int):Void;
public function getItemAt(index:Int):ItemType;
}
