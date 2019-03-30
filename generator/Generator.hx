package;

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

    public function new(_source:String)
    {
        source = _source;
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
        var interfaceFinder = ~/interface\s+(\w+)(?:\s+extends\s+([^{]+))/;
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
                        var argParams = ~/\s+/.split(argument);
                        if (argParams.length != 2) throw 'Not two proper tokens: ${argument}';
                        sourceMethod.arguments.push({argName: argParams[1], argType: argParams[0]});
                    }
                    methods.push(sourceMethod);
                    trace(sourceMethod.fnName);
                    trace(sourceMethod.returnType);
                    trace(sourceMethod.arguments);
                }
            }
        }
        trace(packageName);
        trace(imports);
        trace(className);
        trace(extendedInterfaces);
    }

    private static var typeTranslations = [
        'void' => 'Void',
        'int' => 'Int',
    ];

    private function translateType(inType:String):String
    {
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

        generatedHaxe += 'jsRequire("${packageName}", "${className}")\n';
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

    public static function main()
    {
        var generator = new Generator('package com.bitwig.extension.api.graphics;

        import com.bitwig.extension.api.MemoryBlock;

        public interface Bitmap extends Image
        {
        @Override
        int getWidth();

        @Override
        int getHeight();

        BitmapFormat getFormat();

        MemoryBlock getMemoryBlock();

        void render(Renderer renderer);

        void showDisplayWindow();

        void setDisplayWindowTitle(String title);

        void saveToDiskAsPPM(String path);
        }');
        generator.parse();
        trace(generator.generateHx());
    }
}