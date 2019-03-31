package bitwig.extension.controller.api;

@:jsRequire("com.bitwig.extension.controller.api", "ObjectProxy")
interface ObjectProxy extends Subscribable
{
public function createEqualsValue(other:ObjectProxy):BooleanValue;
}
