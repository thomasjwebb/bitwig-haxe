package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "DirectParameterValueDisplayObserver")
interface DirectParameterValueDisplayObserver
{
public function setObservedParameterIds(parameterIds:Array<String>):Void;
}
