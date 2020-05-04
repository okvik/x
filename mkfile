BIN=/bin
MAN=/sys/man
LIB=/sys/lib
RC=path run mnt cd man vt sh

all:VQ:
	echo 'An unsightly package appears: "Meal, Mk-install-to-Eat."'

install:V: ${RC:%=%.install} lib.rc.libinstall $MAN/1/x

%.install:V: % $BIN/x
	cp $stem $BIN/x

%.libinstall:V: % $LIB/x
	cp $stem $LIB/x

$BIN/x $LIB/x:
	mkdir -p $target

$MAN/1/x: x.man
	cp x.man $MAN/1/x

uninstall:V:
	rm -rf $BIN/x
	rm -rf $LIB/x
	rm -f $MAN/x
