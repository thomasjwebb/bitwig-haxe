package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "IntegerValueChangedCallback")
interface IntegerValueChangedCallback extends ValueChangedCallback
{
public function valueChanged(newValue:Int):Void;
}
