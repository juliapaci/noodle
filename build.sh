#!/bin/sh -e

ASM="uxncli $HOME/roms/drifblim.rom"
EMU="uxnemu"
LIN="uxncli $HOME/roms/uxnlin.rom"
APP="$HOME/bin/butler push"

SRC="src/noodle.tal"
DST="bin/noodle.rom"

CPY="$HOME/roms"
ARG="lemon15x12.icn"
ARG="etc/boxgly.tga"

APPID="hundredrabbits/noodle:uxn"

echo ">> Cleaning"
rm -rf bin
mkdir bin

if [[ "$*" == *"--lint"* ]]
then
    echo ">> Linting $SRC"
	$LIN $SRC
fi

echo ">> Assembling $SRC"
$ASM $SRC $DST

if [[ "$*" == *"--save"* ]]
then
    echo ">> Saving $DST"
	cp $DST $CPY
fi

if [[ "$*" == *"--push"* ]]
then
    echo ">> Pushing $DST"
	$APP $DST $APPID
fi

echo ">> Running $DST"
$EMU $DST $ARG

