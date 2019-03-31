package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "FloatValueChangedCallback")
interface FloatValueChangedCallback extends Callback
{
public function valueChanged(newValue:Float):Void;
}
