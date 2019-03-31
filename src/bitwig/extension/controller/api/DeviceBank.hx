package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "DeviceBank")
interface DeviceBank extends Bank<Device>
{
public function getDevice(indexInBank:Int):Device;
public function scrollTo(position:Int):Void;
public function addScrollPositionObserver(callback:IntegerValueChangedCallback,valueWhenUnassigned:Int):Void;
public function addCanScrollUpObserver(callback:BooleanValueChangedCallback):Void;
public function addCanScrollDownObserver(callback:BooleanValueChangedCallback):Void;
public function addDeviceCountObserver(callback:IntegerValueChangedCallback):Void;
public function browseToInsertDevice(index:Int):Void;
}
