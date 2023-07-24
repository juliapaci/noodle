#!/bin/sh -e

ID="noodle"
ASM="uxncli $HOME/roms/drifblim.rom"
EMU="uxnemu"
LIN="uxncli $HOME/roms/uxnlin.rom"
APP="$HOME/bin/butler push"
SRC="src/${ID}.tal"
DST="bin/${ID}.rom"

CPY="$HOME/roms"
ARG="lemon15x12.icn"

APPID="hundredrabbits/noodle:uxn"

rm -rf bin
mkdir bin

if [[ "$*" == *"--lint"* ]]
then
	$LIN $SRC
fi

$ASM $SRC $DST

if [[ "$*" == *"--save"* ]]
then
	cp $DST $CPY
fi

if [[ "$*" == *"--push"* ]]
then
	$APP $DST $APPID
fi

$EMU $DST $ARG

