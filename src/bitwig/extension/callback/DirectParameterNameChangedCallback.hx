package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "DirectParameterNameChangedCallback")
interface DirectParameterNameChangedCallback extends Callback
{
public function directParameterNameChanged(id:String,name:String):Void;
}
