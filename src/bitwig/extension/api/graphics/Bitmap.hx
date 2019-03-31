package bitwig.extension.api.graphics;

import bitwig.extension.api.MemoryBlock;
@:jsRequire("com.bitwig.extension.api.graphics", "Bitmap")
interface Bitmap extends Image
{
public function render(renderer:Renderer):Void;
public function setDisplayWindowTitle(title:String):Void;
public function saveToDiskAsPPM(path:String):Void;
}
