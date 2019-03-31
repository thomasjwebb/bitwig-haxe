package bitwig.extension.controller.api;

import bitwig.extension.callback.DoubleValueChangedCallback;
import bitwig.extension.callback.StringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "BeatTimeValue")
interface BeatTimeValue extends DoubleValue
{
public function addRawValueObserver(callback:DoubleValueChangedCallback):Void;
public function getFormatted(formatter:BeatTimeFormatter):String;
}
