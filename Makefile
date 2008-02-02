all:
	./make-package.sh

build:
	$(MAKE) -C src/kext
	$(MAKE) -C pkginfo
	$(MAKE) -C prefpane

clean:
	$(MAKE) -C src/kext clean
	$(MAKE) -C prefpane clean
	sudo rm -rf pkgroot
	sudo rm -rf *.pkg
	sudo rm -rf *.tar.gz

source:
	./make-source.sh
