#!/bin/sh -e

echo "Cleaning.."
rm -rf bin
mkdir bin

if [ -e "$HOME/roms/uxnlin.rom" ]
then
	echo "Linting.."
	uxncli $HOME/roms/uxnlin.rom src/noodle.tal
fi

echo "Assembling.."
uxnasm src/noodle.tal bin/noodle.rom 

echo "Installing.."
if [ -d "$HOME/roms" ] && [ -e ./bin/noodle.rom ]
then
	cp ./bin/noodle.rom $HOME/roms
    echo "Installed in $HOME/roms" 
fi

if [ "${1}" = '--push' ]; 
then
	echo "Pushing.."
	~/Applications/butler push bin/noodle.rom hundredrabbits/noodle:uxn
fi

echo "Running.."
uxn11 bin/noodle.rom lemon15x12.icn
