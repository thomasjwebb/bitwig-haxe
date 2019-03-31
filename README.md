# Bitwig Haxe

[Bitwig](https://www.bitwig.com/en/home.html) controller api externs for [haxe](https://haxe.org/).

## Generating

The code here is generated periodically from updates to controller scripts. Done thusly:

```bash
haxe generator.hxml -python bin/generator.py
python3 bin/generator.py "/Applications/Bitwig Studio.app/Contents/Resources/Documentation/control-surface/api"
```

## License

Unlicense. See [LICENSE](LICENSE). You shouldn't have to worry about any licensing restrictions other than those imposed by Bitwig. These are simply externs to let you use haxe to make your controller scripts.