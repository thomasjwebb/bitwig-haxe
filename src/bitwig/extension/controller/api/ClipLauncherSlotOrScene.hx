package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "ClipLauncherSlotOrScene")
interface ClipLauncherSlotOrScene extends ObjectProxy
{
public function copyFrom(source:ClipLauncherSlotOrScene):Void;
public function moveTo(dest:ClipLauncherSlotOrScene):Void;
}
