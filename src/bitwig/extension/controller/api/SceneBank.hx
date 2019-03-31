package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "SceneBank")
interface SceneBank extends ClipLauncherSlotOrSceneBank<Scene>
{
public function getScene(indexInBank:Int):Scene;
public function scrollTo(position:Int):Void;
public function addScrollPositionObserver(callback:IntegerValueChangedCallback,valueWhenUnassigned:Int):Void;
public function addCanScrollUpObserver(callback:BooleanValueChangedCallback):Void;
public function addCanScrollDownObserver(callback:BooleanValueChangedCallback):Void;
public function addSceneCountObserver(callback:IntegerValueChangedCallback):Void;
public function launchScene(indexInWindow:Int):Void;
}
