package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "NotificationSettings")
interface NotificationSettings
{
public function setShouldShowSelectionNotifications(shouldShowNotifications:Bool):Void;
public function setShouldShowChannelSelectionNotifications(shouldShowNotifications:Bool):Void;
public function setShouldShowTrackSelectionNotifications(shouldShowNotifications:Bool):Void;
public function setShouldShowDeviceSelectionNotifications(shouldShowNotifications:Bool):Void;
public function setShouldShowDeviceLayerSelectionNotifications(shouldShowNotifications:Bool):Void;
public function setShouldShowPresetNotifications(shouldShowNotifications:Bool):Void;
public function setShouldShowMappingNotifications(shouldShowNotifications:Bool):Void;
public function setShouldShowValueNotifications(shouldShowNotifications:Bool):Void;
}
