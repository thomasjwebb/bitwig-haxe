# Bitwig Haxe

[Bitwig](https://www.bitwig.com/en/home.html) controller api externs for [haxe](https://haxe.org/).

NOTE: this is experimental and definitely doesn't work right now. The main thing lacking is the ability to have access to the java externs while targetting javascript. At the very least, we'll probably need to manually make the externs because `--macro allowPackage("java")` doesn't actually work :(

## Generating

The code here is generated periodically from updates to controller scripts. Done thusly:

```bash
haxe generator.hxml -python bin/generator.py
python3 bin/generator.py "/Applications/Bitwig Studio.app/Contents/Resources/Documentation/control-surface/api"
```

## License

Unlicense. See [LICENSE](LICENSE). You shouldn't have to worry about any licensing restrictions other than those imposed by Bitwig. These are simply externs to let you use haxe to make your controller scripts.
