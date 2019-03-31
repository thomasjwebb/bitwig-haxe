package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "Scrollable")
interface Scrollable
{
public function scrollIntoView(position:Int):Void;
public function scrollBy(amount:Int):Void;
public function scrollByPages(amount:Int):Void;
}
