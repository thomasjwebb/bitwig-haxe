package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "DirectParameterNormalizedValueChangedCallback")
interface DirectParameterNormalizedValueChangedCallback extends Callback
{
public function directParameterNormalizedValueChanged(id:String,normalizedValue:Float):Void;
}
