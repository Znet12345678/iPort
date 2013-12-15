	ACLOCAL_AMFLAGS = -I m4
	SUBDIRS = src
	bin_PROGRAMS=iPort
	iPort_SOURCES=src/main.c
	EXTRA_DIST = autogen.sh
all:
	cc src/main.c -o iport
install:
	cp -rv iport ${prefix}/bin/
	if [[ -e ${prefix}/scripts ]];then cp -rv src/ports ${prefix}/scripts/iPorts; else mkdir ${prefix}/scripts; cp -rv src/ports ${prefix}/scripts/iPorts; fi
clean:
	rm -rv ${prefix}/scripts
	rm -rv ${prefix}/bin/iport
