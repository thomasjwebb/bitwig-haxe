package bitwig.extension.controller.api;

import bitwig.extension.api.Host;
import bitwig.extension.callback.ConnectionEstablishedCallback;
import bitwig.extension.callback.DataReceivedCallback;
import bitwig.extension.controller.ControllerExtensionDefinition;
import bitwig.extension.controller.HardwareDeviceMatcher;
import jdk.nashorn.api.scripting.JSObject;
@:jsRequire("com.bitwig.extension.controller.api", "ControllerHost")
interface ControllerHost extends Host
{
public function loadAPI(version:Int):Void;
public function setShouldFailOnDeprecatedUse(value:Bool):Void;
public function load(path:String):Void;
public function defineController(vendor:String,name:String,version:String,uuid:String,author:String):Void;
public function defineMidiPorts(numInports:Int,numOutports:Int):Void;
public function getMidiInPort(index:Int):MidiIn;
public function getMidiOutPort(index:Int):MidiOut;
public function hardwareDevice(index:Int):HardwareDevice;
public function addDeviceNameBasedDiscoveryPair(inputs:Array<String>,outputs:Array<String>):Void;
public function defineSysexIdentityReply(reply:String):Void;
public function createArranger(window:Int):Arranger;
public function createMixer(panelLayout:String):Mixer;
public function createMixer(window:Int):Mixer;
public function createMixer(panelLayout:String,window:Int):Mixer;
public function createTrackBank(numTracks:Int,numSends:Int,numScenes:Int):TrackBank;
public function createMainTrackBank(numTracks:Int,numSends:Int,numScenes:Int):TrackBank;
public function createEffectTrackBank(numTracks:Int,numScenes:Int):TrackBank;
public function createMasterTrack(numScenes:Int):MasterTrack;
public function createArrangerCursorTrack(numSends:Int,numScenes:Int):CursorTrack;
public function createCursorTrack(name:String,numSends:Int,numScenes:Int):CursorTrack;
public function createSceneBank(numScenes:Int):SceneBank;
public function createEditorCursorDevice(numSends:Int):CursorDevice;
public function createCursorClip(gridWidth:Int,gridHeight:Int):Clip;
public function createLauncherCursorClip(gridWidth:Int,gridHeight:Int):Clip;
public function createArrangerCursorClip(gridWidth:Int,gridHeight:Int):Clip;
public function createUserControls(numControllers:Int):UserControlBank;
public function scheduleTask(callback:JSObject,args:Array<js.Object>,delay:long):Void;
public function scheduleTask(callback:Runnable,delay:long):Void;
public function println(s:String):Void;
public function errorln(s:String):Void;
public function showPopupNotification(text:String):Void;
public function createRemoteConnection(name:String,defaultPort:Int):RemoteSocket;
public function connectToRemoteHost(host:String,port:Int,callback:ConnectionEstablishedCallback):Void;
public function sendDatagramPacket(host:String,port:Int,data:js.lib.Uint8Array):Void;
public function addDatagramPacketObserver(name:String,port:Int,callback:DataReceivedCallback):Bool;
public function defineController(vendor:String,name:String,version:String,uuid:String):Void;
public function createCursorTrack(numSends:Int,numScenes:Int):CursorTrack;
public function createArrangerSection(screenIndex:Int):Arranger;
public function createMixerSection(perspective:String,screenIndex:Int):Mixer;
public function createTrackBankSection(numTracks:Int,numSends:Int,numScenes:Int):TrackBank;
public function createMainTrackBankSection(numTracks:Int,numSends:Int,numScenes:Int):TrackBank;
public function createEffectTrackBankSection(numTracks:Int,numScenes:Int):TrackBank;
public function createCursorTrackSection(numSends:Int,numScenes:Int):CursorTrack;
public function createMasterTrackSection(numScenes:Int):Track;
public function createCursorClipSection(gridWidth:Int,gridHeight:Int):Clip;
public function createCursorDeviceSection(numControllers:Int):CursorDevice;
public function createUserControlsSection(numControllers:Int):UserControlBank;
public function defineSysexDiscovery(request:String,reply:String):Void;
public function setDefaultBeatTimeFormatter(formatter:BeatTimeFormatter):Void;
}
