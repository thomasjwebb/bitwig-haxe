package;

import haxe.io.Path;
import sys.FileSystem;
using StringTools;

/**
 * Represents a method
 */
class SourceMethod
{
    public var fnName:String;
    public var returnType:String;
    public var arguments = new Array<{argName:String, argType:String}>();

    public function new() {}
}

/**
 * Takes in java source used by Bitwig to generate externs for js
 */
class Generator
{
    private var source:String;
    private var packageName:String = '';
    private var className:String = '';
    private var imports = new Array<String>();
    private var extendedInterfaces = new Array<String>();
    private var methods = new Array<SourceMethod>();

    private static function findCode(xml:Xml):Xml
    {
        for (child in xml.iterator()) {
            if (child.nodeType != Element) continue;
            if (child.nodeName == 'div' && child.get('class') == 'fragment') {
                return child;
            }
            var code = findCode(child);
            if (code != null) return code;
        }
        return null;
    }

    private static function parseCode(xml:Xml):String
    {
        var code = '';

        for (child in xml.iterator()) {
            if (child.nodeType == Element) {
                if (child.get('class') == 'lineno' || child.get('class') == 'ttc') continue;
                code += parseCode(child);
            }
            else if (child.nodeType == PCData) {
                code += child.nodeValue;
            }
        }

        return code;
    }

    public function new(path:String)
    {
        var xmlContents = sys.io.File.getContent(path);
        var xml = Xml.parse(xmlContents);
        var code = findCode(xml);
        source = parseCode(code);
    }

    private function removeCom(inStr:String):String
    {
        if (inStr.startsWith('com.')) {
            return inStr.substring(4);
        }
        return inStr;
    }

    public function parse()
    {
        // Very braindead parsing that makes big assumptions about what the files look like
        var inClass = false;
        var packageFinder = ~/^\s*package\s+([^;]+);\s*$/;
        var importFinder = ~/^\s*import\s+([^;]+);\s*$/;
        var interfaceFinder = ~/interface\s+(\w+)(?:\s+extends\s+([^{]+))?/;
        var fnFinder = ~/^\s*(\w+)\s+(\w+)\s*\(\s*([^)]+)\s*\)\s*;\s*/;
        for (line in source.split('\n')) {
            if (!inClass) {
                if (packageFinder.match(line)) {
                    packageName = packageFinder.matched(1);
                }
                else if (importFinder.match(line)) {
                    imports.push(importFinder.matched(1));
                }
                else if (interfaceFinder.match(line)) {
                    className = interfaceFinder.matched(1);
                    if (interfaceFinder.matched(2) != null) {
                        for (extendedInterface in interfaceFinder.matched(2).split(',')) {
                            extendedInterfaces.push(extendedInterface.trim());
                        }
                    }
                    inClass = true;
                }
            }
            else {
                if (fnFinder.match(line)) {
                    var sourceMethod = new SourceMethod();
                    sourceMethod.returnType = fnFinder.matched(1);
                    sourceMethod.fnName = fnFinder.matched(2);
                    for (argument in fnFinder.matched(3).split(',')) {
                        argument = argument.trim();
                        var argParams = ~/\s+/g.split(argument);
                        if (argParams.length < 2) throw 'Not at least two proper tokens: ${argument}';
                        sourceMethod.arguments.push({argName: argParams[argParams.length - 1], argType: argParams[argParams.length - 2]});
                    }
                    methods.push(sourceMethod);
                    // trace(sourceMethod.fnName);
                    // trace(sourceMethod.returnType);
                    // trace(sourceMethod.arguments);
                }
            }
        }
        // trace(packageName);
        // trace(imports);
        // trace(className);
        // trace(extendedInterfaces);
    }

    private static var typeTranslations = [
        'void' => 'Void',
        'int' => 'Int',
        'boolean' => 'Bool',
        'float' => 'Float',
        'double' => 'Float',
        'Object' => 'js.Object',
        'Number' => 'Int',
    ];

    private function translateType(inType:String):String
    {
        if (inType == 'byte[]') return 'js.lib.Uint8Array';
        var arrayMatcher = ~/^(.+)\[\]$/;
        if (arrayMatcher.match(inType)) {
            var a = 'Array<${translateType(arrayMatcher.matched(1))}>';
            trace(a);
            return a;
        }
        if (typeTranslations.exists(inType)) {
            return typeTranslations[inType];
        }
        trace('Not translating type: $inType');
        return inType;
    }

    public function generateHx():String
    {
        var generatedHaxe = '';

        generatedHaxe += 'package ${removeCom(packageName)};\n\n';

        for (importName in imports) {
            generatedHaxe += 'import ${removeCom(importName)};\n';
        }

        generatedHaxe += '@:jsRequire("${packageName}", "${className}")\n';
        generatedHaxe += 'interface $className';
        for (extendedInterface in extendedInterfaces) {
            generatedHaxe += ' extends $extendedInterface';
        }
        generatedHaxe += '\n{\n';

        for (method in methods) {
            var argumentString = [for (argument in method.arguments) argument.argName + ':' + translateType(argument.argType)].join(',');
            generatedHaxe += 'public function ${method.fnName}($argumentString):${translateType(method.returnType)};\n';
        }

        generatedHaxe += '}\n';

        return generatedHaxe;
    }

    public function save():Void
    {
        parse();
        if (className == '') {
            trace('skipping empty class');
            return;
        }
        var code = generateHx();
        var path = [Sys.getCwd(), 'src'];
        path = path.concat(removeCom(packageName).split('.'));
        // path.push(className + '.hx');
        var savePath = haxe.io.Path.join(path);
        FileSystem.createDirectory(savePath);
        sys.io.File.saveContent(Path.join([savePath, className + '.hx']), code);
    }

    public static function main()
    {
        if (Sys.args().length != 1) {
            trace('Usage: generator BITWIG_DOCS_PATH');
            return;
        }
        var path = Sys.args()[0];
        for (fileName in sys.FileSystem.readDirectory(path)) {
            if (~/_source\.html/.match(fileName)) {
                var generator = new Generator(haxe.io.Path.join([path, fileName]));
                generator.save();
            }
        }
    }
}