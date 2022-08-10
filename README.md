# Noodle

[Noodle](https://100r.co/site/noodle.html) is an illustration program, written in [Uxntal](https://wiki.xxiivv.com/site/uxntal.html).

## Build

You must have an [Uxn](https://git.sr.ht/~rabbits/uxn/) assembler and emulator.

```sh
cat src/main.tal src/manifest.tal src/assets.tal > bin/noodle.tal
uxnasm bin/noodle.tal bin/noodle.rom
uxnemu bin/noodle.rom
```

If do not wish to assemble it yourself, you can download [noodle.rom](https://rabbits.srht.site/noodle/noodle.rom).

## Support

- [theme](https://wiki.xxiivv.com/site/theme.html)
- [snarf](https://wiki.xxiivv.com/site/snarf.html)
- [manifest](https://wiki.xxiivv.com/site/manifest.html)
- Linted with [uxnlin](https://git.sr.ht/~rabbits/uxnlin)
- Assembled with [drifblim](https://git.sr.ht/~rabbits/drifblim)
