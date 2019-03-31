package bitwig.extension.controller.api;

import bitwig.extension.callback.ValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "Value")
interface Value
{
public function addValueObserver(callback:ObserverType):Void;
}
