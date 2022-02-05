VERSION   = 1.5
PREFIX    = /usr
MANPREFIX = ${PREFIX}/share/man

all: baph
	@:
baph:
	@:
clean:
	@:

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	sed "s/VERSION/${VERSION}/g" < baph > ${DESTDIR}${PREFIX}/bin/baph
	chmod 755 ${DESTDIR}${PREFIX}/bin/baph
	mkdir -p ${DESTDIR}${MANPREFIX}/man1
	sed "s/VERSION/${VERSION}/g" < baph.1 > ${DESTDIR}${MANPREFIX}/man1/baph.1
	chmod 644 ${DESTDIR}${MANPREFIX}/man1/baph.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/baph ${DESTDIR}${MANPREFIX}/man1/baph.1

.PHONY: all options install uninstall
