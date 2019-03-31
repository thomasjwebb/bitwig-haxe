package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "StepDataChangedCallback")
interface StepDataChangedCallback extends Callback
{
public function stepStateChanged(x:Int,y:Int,state:Int):Void;
}
