# Uxn

An [illustration program](https://wiki.xxiivv.com/site/noodle.html), written in Uxambly. 

## Build

You must have the [Uxn](https://git.sr.ht/~rabbits/uxn/) assembler and emulator.

```
uxnasm noodle.usm noodle.rom && uxnemu noodle.rom
```

## Load on SD Card(Nintendo DS)

```
sudo mount -o loop sd_card.img sd_card/ && sudo cp ~/Git/noodle/noodle.rom sd_card/uxn/boot.rom && sync && sudo umount sd_card
```

## Controls

- `coming soon`