package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "BooleanValueChangedCallback")
interface BooleanValueChangedCallback extends ValueChangedCallback
{
public function valueChanged(newValue:Bool):Void;
}
