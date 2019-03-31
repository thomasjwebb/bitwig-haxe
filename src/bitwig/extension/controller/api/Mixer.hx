package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "Mixer")
interface Mixer
{
public function addMeterSectionVisibilityObserver(callback:BooleanValueChangedCallback):Void;
public function addIoSectionVisibilityObserver(callback:BooleanValueChangedCallback):Void;
public function addSendsSectionVisibilityObserver(callback:BooleanValueChangedCallback):Void;
public function addClipLauncherSectionVisibilityObserver(callback:BooleanValueChangedCallback):Void;
public function addDeviceSectionVisibilityObserver(callback:BooleanValueChangedCallback):Void;
public function addCrossFadeSectionVisibilityObserver(callback:BooleanValueChangedCallback):Void;
}
