#!/bin/sh -e

echo "Cleaning.."
rm -rf bin
mkdir bin

if [ -e "$HOME/roms/uxnlin.rom" ]
then
	echo "Linting.."
	uxncli $HOME/roms/uxnlin.rom src/main.tal
	uxncli $HOME/roms/uxnlin.rom src/manifest.tal
fi

echo "Assembling.."
uxncli $HOME/roms/drifblim.rom # .drifblim

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
uxnemu bin/noodle.rom lemon15x12.icn
