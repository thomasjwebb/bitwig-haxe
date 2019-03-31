package bitwig.extension.controller.api;

import bitwig.extension.api.Color;
@:jsRequire("com.bitwig.extension.controller.api", "Settings")
interface Settings
{
public function getSignalSetting(label:String,category:String,action:String):Signal;
}
