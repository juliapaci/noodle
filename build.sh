#!/usr/bin/env bash

echo "Cleaning.."
rm -rf bin
mkdir bin

echo "Assembling.."
uxnasm src/noodle.tal bin/noodle.rom 

echo "Installing.."
if [ -d "$HOME/roms" ] && [ -e ./bin/noodle.rom ]
then
	cp ./bin/noodle.rom $HOME/roms
    echo "Installed in $HOME/roms" 
fi

echo "Running.."
uxnemu bin/noodle.rom
