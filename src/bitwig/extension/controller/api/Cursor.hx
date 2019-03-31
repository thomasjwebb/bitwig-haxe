package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
import bitwig.extension.callback.BooleanValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "Cursor")
interface Cursor
{
public function addCanSelectPreviousObserver(callback:BooleanValueChangedCallback):Void;
public function addCanSelectNextObserver(callback:BooleanValueChangedCallback):Void;
}
