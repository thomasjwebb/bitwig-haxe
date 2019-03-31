package bitwig.extension.controller.api;

import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "ChannelBank")
interface ChannelBank
{
public function getChannel(indexInBank:Int):Channel;
public function setChannelScrollStepSize(stepSize:Int):Void;
public function scrollToChannel(position:Int):Void;
public function addChannelScrollPositionObserver(callback:IntegerValueChangedCallback,valueWhenUnassigned:Int):Void;
public function addCanScrollChannelsUpObserver(callback:BooleanValueChangedCallback):Void;
public function addCanScrollChannelsDownObserver(callback:BooleanValueChangedCallback):Void;
public function addChannelCountObserver(callback:IntegerValueChangedCallback):Void;
public function scrollToSend(position:Int):Void;
public function addCanScrollSendsUpObserver(callback:BooleanValueChangedCallback):Void;
public function addCanScrollSendsDownObserver(callback:BooleanValueChangedCallback):Void;
public function addSendCountObserver(callback:IntegerValueChangedCallback):Void;
}
