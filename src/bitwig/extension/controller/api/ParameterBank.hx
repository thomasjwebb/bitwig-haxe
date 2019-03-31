package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "ParameterBank")
interface ParameterBank
{
public function getParameter(indexInBank:Int):Parameter;
public function setHardwareLayout(type:HardwareControlType,columns:Int):Void;
}
