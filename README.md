# Noodle

[Noodle](https://wiki.xxiivv.com/site/noodle.html) is an illustration program, written in [Uxntal](https://wiki.xxiivv.com/site/uxntal.html).

## Build

You must have the [Uxn](https://git.sr.ht/~rabbits/uxn/) assembler and emulator.

```
uxnasm noodle.tal noodle.rom && uxnemu noodle.rom
```

If do not wish to assemble it yourself, you can download [noodle.rom](https://rabbits.srht.site/noodle/noodle.rom).

## Load on SD Card(Nintendo DS)

```
sudo mount -o loop sd_card.img sd_card/ && sudo cp ~/roms/noodle.rom sd_card/uxn/boot.rom && sync && sudo umount sd_card
```

## TGA Import

The tga file should not use RLE compression, and should be indexed from the top-left corner.

## Controls

- `right-click` or `escape`, erase
- `arrows`, move zoom
- `space` or `shift`, toogle zoom
- `tab`, invert image
- `backspace`, blank canvas
- `1-8`, select brush pattern
- `[]`, set brush size
- `ctrl+n`, clear
- `ctrl+r`, rename
- `ctrl+o`, load
- `ctrl+s`, save
- `q`, pen tool
- `w`, brush tool
- `e`, line tool
- `r`, magic tool
- `t`, rectangle tool
- `y`, zoom tool
