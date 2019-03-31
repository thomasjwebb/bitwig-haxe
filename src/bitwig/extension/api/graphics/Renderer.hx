package bitwig.extension.api.graphics;

import bitwig.extension.api.graphics.GraphicsOutput;
@:jsRequire("com.bitwig.extension.api.graphics", "Renderer")
interface Renderer
{
public function render(gc:GraphicsOutput):Void;
}
