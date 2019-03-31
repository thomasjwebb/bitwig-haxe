package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "DirectParameterDisplayedValueChangedCallback")
interface DirectParameterDisplayedValueChangedCallback extends Callback
{
public function directParameterDisplayedValueChanged(id:String,value:String):Void;
}
