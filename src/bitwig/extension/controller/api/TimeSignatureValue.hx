package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
import bitwig.extension.api.opensoundcontrol.OscNode;
import bitwig.extension.callback.StringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "TimeSignatureValue")
interface TimeSignatureValue extends Value<StringValueChangedCallback>
{
public function set(name:String):Void;
}
