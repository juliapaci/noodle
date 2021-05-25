#!/usr/bin/env bash

rm -rf bin
mkdir bin
uxnasm noodle.usm bin/noodle.rom 
uxnemu bin/noodle.rom