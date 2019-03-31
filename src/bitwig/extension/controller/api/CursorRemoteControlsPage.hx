package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "CursorRemoteControlsPage")
interface CursorRemoteControlsPage extends Cursor extends RemoteControlsPage
{
public function selectNextPage(shouldCycle:Bool):Void;
public function selectPreviousPage(shouldCycle:Bool):Void;
public function selectNextPageMatching(expression:String,shouldCycle:Bool):Void;
public function selectPreviousPageMatching(expression:String,shouldCycle:Bool):Void;
}
