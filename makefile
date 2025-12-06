include .env

MODDIR=$(QUAKEDIR)/final

all: 
	@echo "Building"
	@bash "build.sh" "Release"
	@echo "Copying"
	cp "build/release/gamex86.dll" $(MODDIR)

env:
	@echo QUAKEDIR=$(QUAKEDIR)
