package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "UserControlBank")
interface UserControlBank
{
public function getControl(index:Int):Parameter;
}
