ID=noodle
DIR=~/roms
ASM=uxncli ${DIR}/drifblim.rom
LIN=uxncli ${DIR}/uxnlin.rom
EMU=uxnemu
ROM=bin/${ID}.rom

all: ${ROM}

lint:
	@ ${LIN} src/${ID}.tal
test:
	@ ${EMU} ${ROM} lemon15x12.icn
run: all
	@ ${EMU} ${ROM}
clean:
	@ rm -f ${ROM} ${ROM}.sym
install: ${ROM}
	@ cp ${ROM} ${DIR}
uninstall:
	@ rm -f ${DIR}/${ID}.rom
push: all
	@ ~/bin/butler push ${ROM} hundredrabbits/${ID}:uxn
archive: all
	@ cat src/${ID}.tal src/manifest.tal src/assets.tal | sed 's/~[^[:space:]]\+//' > bin/res.tal
	@ ${ASM} bin/res.tal bin/res.rom && ${EMU} bin/res.rom
	@ cp bin/res.tal ../oscean/etc/${ID}.tal.txt

.PHONY: all clean lint run install uninstall push archive

${ROM}: src/*
	@ mkdir -p bin
	@ ${ASM} src/${ID}.tal ${ROM}
