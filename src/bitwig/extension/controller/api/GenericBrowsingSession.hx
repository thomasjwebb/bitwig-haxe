package bitwig.extension.controller.api;

import bitwig.extension.callback.StringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "GenericBrowsingSession")
interface GenericBrowsingSession extends BrowsingSession
{
public function addNameObserver(maxCharacters:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
}
