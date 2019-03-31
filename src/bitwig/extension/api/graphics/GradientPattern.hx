package bitwig.extension.api.graphics;

import bitwig.extension.api.Color;
@:jsRequire("com.bitwig.extension.api.graphics", "GradientPattern")
interface GradientPattern extends Pattern
{
public function addColorStop(offset:Float,color:Color):Void;
}
