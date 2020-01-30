NAME = $(shell jq -j ".name" info.json)
VERSION = $(shell jq -j ".version" info.json)

DATA_FOLDER = ~/Library/Application\ Support/factorio
STEAM_FOLDER = ~/Library/Application\ Support/Steam/steamapps/common

FACTORIO_APP = $(STEAM_FOLDER)/Factorio/factorio.app/Contents/MacOS/factorio


test: target/$(NAME)_$(VERSION).zip
	$(shell ps aux | grep factorio.app | grep -v grep | awk '{print $$2}' | xargs kill -9 && sleep 3 || true)
	$(FACTORIO_APP) --load-game $(DATA_FOLDER)/saves/_autosave2.zip
.PHONY: test

target: target/$(NAME)_$(VERSION).zip;

target/$(NAME)_$(VERSION).zip:
	faketorio package
	cp $@ $(DATA_FOLDER)/mods/$(NAME)_$(VERSION).zip
.PHONY: target/$(NAME)_$(VERSION).zip