package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "BrowserResultsColumn")
interface BrowserResultsColumn extends BrowserColumn
{
public function createItemBank(size:Int):BrowserResultsItemBank;
}
