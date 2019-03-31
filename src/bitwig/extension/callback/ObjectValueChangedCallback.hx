package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "ObjectValueChangedCallback")
interface ObjectValueChangedCallback
{
public function valueChanged(newValue:ValueType):Void;
}
