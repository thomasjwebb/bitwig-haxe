package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "CursorBrowserItem")
interface CursorBrowserItem extends BrowserItem extends Cursor
{
public function createSiblingsBank(numSiblings:Int):BrowserItemBank;
}
