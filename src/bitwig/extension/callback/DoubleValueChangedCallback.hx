package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "DoubleValueChangedCallback")
interface DoubleValueChangedCallback extends ValueChangedCallback
{
public function valueChanged(newValue:Float):Void;
}
