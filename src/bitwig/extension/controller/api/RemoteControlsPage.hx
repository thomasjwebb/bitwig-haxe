package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "RemoteControlsPage")
interface RemoteControlsPage extends ParameterBank
{
public function getParameter(indexInBank:Int):RemoteControl;
}
