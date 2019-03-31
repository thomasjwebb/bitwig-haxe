package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
@:jsRequire("com.bitwig.extension.controller.api", "Subscribable")
interface Subscribable
{
public function setIsSubscribed(value:Bool):Void;
}
