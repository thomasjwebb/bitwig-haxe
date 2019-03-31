package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "NoteInput")
interface NoteInput
{
public function setShouldConsumeEvents(shouldConsumeEvents:Bool):Void;
public function setKeyTranslationTable(table:Array<js.Object>):Void;
public function setVelocityTranslationTable(table:Array<js.Object>):Void;
public function assignPolyphonicAftertouchToExpression(channel:Int,expression:NoteExpression,pitchRange:Int):Void;
public function setUseExpressiveMidi(useExpressiveMidi:Bool,baseChannel:Int,pitchBendRange:Int):Void;
public function setUseMultidimensionalPolyphonicExpression(useMPE:Bool,baseChannel:Int):Void;
public function sendRawMidiEvent(status:Int,data0:Int,data1:Int):Void;
}
