package bitwig.extension.api.graphics;

@:jsRequire("com.bitwig.extension.api.graphics", "MeshPattern")
interface MeshPattern extends Pattern
{
public function moveTo(x:Float,y:Float):Void;
public function lineTo(x:Float,y:Float):Void;
public function curveTo(x1:Float,y1:Float,x2:Float,y2:Float,x3:Float,y3:Float):Void;
public function setCornerColor(corner:Int,red:Float,green:Float,blue:Float):Void;
public function setCornerColor(corner:Int,red:Float,green:Float,blue:Float,alpha:Float):Void;
}
