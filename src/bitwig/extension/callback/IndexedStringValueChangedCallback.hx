package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "IndexedStringValueChangedCallback")
interface IndexedStringValueChangedCallback extends IndexedValueChangedCallback
{
public function valueChanged(index:Int,newValue:String):Void;
}
