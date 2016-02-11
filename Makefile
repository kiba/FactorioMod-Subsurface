PROJECT := "Subsurface_0.0.3"

build:
	mkdir $(PROJECT)
	cp -R info.json LICENSE data.lua config.lua lib.lua control.lua locale _tools prototypes graphics $(PROJECT)
	zip -r $(PROJECT).zip $(PROJECT) -x *.xcf* *.zip* *.DS_Store*

clean:
	rm -r $(PROJECT)

copy:
	cp $(PROJECT).zip ~/Library/Application\ Support/factorio/mods/

cycle:
	make build
	make copy
	make clean
