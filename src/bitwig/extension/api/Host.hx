package bitwig.extension.api;

import bitwig.extension.api.graphics.Bitmap;
import bitwig.extension.api.graphics.BitmapFormat;
import bitwig.extension.api.graphics.FontFace;
import bitwig.extension.api.graphics.FontOptions;
import bitwig.extension.api.graphics.Image;
import bitwig.extension.api.opensoundcontrol.OscModule;
@:jsRequire("com.bitwig.extension.api", "Host")
interface Host
{
public function setErrorReportingEMail(address:String):Void;
public function allocateMemoryBlock(size:Int):MemoryBlock;
public function createBitmap(width:Int,height:Int,format:BitmapFormat):Bitmap;
public function loadFontFace(path:String):FontFace;
public function loadPNG(path:String):Image;
public function loadSVG(path:String,scale:Float):Image;
}
