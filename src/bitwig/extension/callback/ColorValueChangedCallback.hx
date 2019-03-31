package bitwig.extension.callback;

import bitwig.extension.api.Color;
@:jsRequire("com.bitwig.extension.callback", "ColorValueChangedCallback")
interface ColorValueChangedCallback extends ValueChangedCallback
{
public function valueChanged(red:Float,green:Float,blue:Float):Void;
}
