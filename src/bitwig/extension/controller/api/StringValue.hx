package bitwig.extension.controller.api;

import bitwig.extension.callback.StringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "StringValue")
interface StringValue extends Value<StringValueChangedCallback>
{
public function getLimited(maxLength:Int):String;
}
