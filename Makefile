all:
    gcc src/main.c -o hello-world

install:
    mkdir -p $(DESTDIR)/usr/bin
    install -m 755 hello-world $(DESTDIR)/usr/bin/

# 生成deb包需要先安装dh-make build-essential
deb:
    dpkg-buildpackage -us -uc
