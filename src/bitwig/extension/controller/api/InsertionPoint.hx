package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "InsertionPoint")
interface InsertionPoint
{
public function copyTracks(tracks:Track...):Void;
public function moveTracks(tracks:Track...):Void;
public function copyDevices(devices:Device...):Void;
public function moveDevices(devices:Device...):Void;
public function copySlotsOrScenes(clipLauncherSlotOrScenes:ClipLauncherSlotOrScene...):Void;
public function moveSlotsOrScenes(clipLauncherSlotOrScenes:ClipLauncherSlotOrScene...):Void;
public function insertFile(path:String):Void;
public function insertVST2Device(id:Int):Void;
public function insertVST3Device(id:String):Void;
}
