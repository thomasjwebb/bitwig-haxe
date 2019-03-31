package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "CursorChannel")
interface CursorChannel extends Cursor extends Channel
{
public function selectChannel(channel:Channel):Void;
}
