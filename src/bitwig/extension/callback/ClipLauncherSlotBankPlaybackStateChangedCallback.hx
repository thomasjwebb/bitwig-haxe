package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "ClipLauncherSlotBankPlaybackStateChangedCallback")
interface ClipLauncherSlotBankPlaybackStateChangedCallback extends Callback
{
public function playbackStateChanged(slotIndex:Int,playbackState:Int,isQueued:Bool):Void;
}
