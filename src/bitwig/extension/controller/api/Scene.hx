package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "Scene")
interface Scene extends ClipLauncherSlotOrScene
{
public function addClipCountObserver(callback:IntegerValueChangedCallback):Void;
public function addPositionObserver(callback:IntegerValueChangedCallback):Void;
public function addIsSelectedInEditorObserver(callback:BooleanValueChangedCallback):Void;
}
