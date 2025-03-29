all:
	gcc src/main.c -o hello-world

install:
	mkdir -p $(DESTDIR)/usr/bin
	install -m 755 hello-world $(DESTDIR)/usr/bin/

deb:
	dpkg-buildpackage -us -uc
