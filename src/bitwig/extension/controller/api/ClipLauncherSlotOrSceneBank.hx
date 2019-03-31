package bitwig.extension.controller.api;

import bitwig.extension.callback.IndexedStringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "ClipLauncherSlotOrSceneBank")
interface ClipLauncherSlotOrSceneBank
{
public function launch(slot:Int):Void;
public function addNameObserver(callback:IndexedStringValueChangedCallback):Void;
}
