package bitwig.extension.controller.api;

import bitwig.extension.api.opensoundcontrol.OscMethod;
import bitwig.extension.api.opensoundcontrol.OscNode;
import bitwig.extension.callback.BooleanValueChangedCallback;
import bitwig.extension.callback.DirectParameterDisplayedValueChangedCallback;
import bitwig.extension.callback.DirectParameterNameChangedCallback;
import bitwig.extension.callback.DirectParameterNormalizedValueChangedCallback;
import bitwig.extension.callback.IntegerValueChangedCallback;
import bitwig.extension.callback.StringArrayValueChangedCallback;
import bitwig.extension.callback.StringValueChangedCallback;
@:jsRequire("com.bitwig.extension.controller.api", "Device")
interface Device extends ObjectProxy
{
public function addPositionObserver(callback:IntegerValueChangedCallback):Void;
public function getParameter(indexInPage:Int):Parameter;
public function createCursorRemoteControlsPage(parameterCount:Int):CursorRemoteControlsPage;
public function getEnvelopeParameter(index:Int):Parameter;
public function getCommonParameter(index:Int):Parameter;
public function getModulationSource(index:Int):ModulationSource;
public function getMacro(index:Int):Macro;
public function addHasSelectedDeviceObserver(callback:BooleanValueChangedCallback):Void;
public function addIsPluginObserver(callback:BooleanValueChangedCallback):Void;
public function addPreviousParameterPageEnabledObserver(callback:BooleanValueChangedCallback):Void;
public function addNextParameterPageEnabledObserver(callback:BooleanValueChangedCallback):Void;
public function setParameterPage(page:Int):Void;
public function createDeviceBrowser(numFilterColumnEntries:Int,numResultsColumnEntries:Int):Browser;
public function addNameObserver(len:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
public function addPresetNameObserver(len:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
public function addPresetCategoryObserver(len:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
public function addPresetCreatorObserver(len:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
public function addSelectedPageObserver(valueWhenUnassigned:Int,callback:IntegerValueChangedCallback):Void;
public function addPageNamesObserver(callback:StringArrayValueChangedCallback):Void;
public function addPresetNamesObserver(callback:StringArrayValueChangedCallback):Void;
public function loadPreset(index:Int):Void;
public function addPresetCategoriesObserver(callback:StringArrayValueChangedCallback):Void;
public function setPresetCategory(index:Int):Void;
public function addPresetCreatorsObserver(callback:StringArrayValueChangedCallback):Void;
public function setPresetCreator(index:Int):Void;
public function addIsEnabledObserver(callback:BooleanValueChangedCallback):Void;
public function addSlotsObserver(callback:StringArrayValueChangedCallback):Void;
public function createLayerBank(numChannels:Int):DeviceLayerBank;
public function createDrumPadBank(numPads:Int):DrumPadBank;
public function addDirectParameterIdObserver(callback:StringArrayValueChangedCallback):Void;
public function addDirectParameterNameObserver(maxChars:Int,callback:DirectParameterNameChangedCallback):Void;
public function addDirectParameterNormalizedValueObserver(callback:DirectParameterNormalizedValueChangedCallback):Void;
public function setDirectParameterValueNormalized(id:String,value:Int,resolution:Int):Void;
public function incDirectParameterValueNormalized(id:String,increment:Int,resolution:Int):Void;
public function addSampleNameObserver(maxChars:Int,textWhenUnassigned:String,callback:StringValueChangedCallback):Void;
public function createSiblingsDeviceBank(numDevices:Int):DeviceBank;
}
