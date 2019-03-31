package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
import bitwig.extension.api.opensoundcontrol.OscNode;
import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.StringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "DeviceChain")
interface DeviceChain extends ObjectProxy
{
public function addNameObserver(numChars:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
public function addIsSelectedInEditorObserver(callback:BooleanValueChangedCallback):Void;
public function addIsSelectedObserver(callback:BooleanValueChangedCallback):Void;
public function createDeviceBank(numDevices:Int):DeviceBank;
public function createDeviceBrowser(numFilterColumnEntries:Int,numResultsColumnEntries:Int):Browser;
}
