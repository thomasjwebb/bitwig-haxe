package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "IndexedColorValueChangedCallback")
interface IndexedColorValueChangedCallback extends IndexedValueChangedCallback
{
public function valueChanged(index:Int,red:Float,green:Float,blue:Float):Void;
}
