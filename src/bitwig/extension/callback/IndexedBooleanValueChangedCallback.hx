package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "IndexedBooleanValueChangedCallback")
interface IndexedBooleanValueChangedCallback extends IndexedValueChangedCallback
{
public function valueChanged(index:Int,newValue:Bool):Void;
}
