package bitwig.extension.callback;

@:jsRequire("com.bitwig.extension.callback", "NotePlaybackCallback")
interface NotePlaybackCallback extends Callback
{
public function notePlaybackEventOccurred(isNoteOn:Bool,key:Int,velocity:Float):Void;
}
