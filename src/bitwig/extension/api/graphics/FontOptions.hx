package bitwig.extension.api.graphics;

@:jsRequire("com.bitwig.extension.api.graphics", "FontOptions")
interface FontOptions
{
public function setAntialiasMode(mode:GraphicsOutput.AntialiasMode):Void;
public function setSubPixelOrder(subPixelOrder:GraphicsOutput.SubPixelOrder):Void;
public function setHintStyle(hintStyle:GraphicsOutput.HintStyle):Void;
public function setHintMetrics(hintMetrics:GraphicsOutput.HintMetrics):Void;
}
