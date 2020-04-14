BIN=/bin
MAN=/sys/man/1
RC=path run mnt cd man vt

all:VQ:
	echo 'An unsightly package appears: "Meal, Mk-install-to-Eat."'

install:V: ${RC:%=%.install} $MAN/x

%.install:V: % $BIN/x
	cp $stem $BIN/x
$BIN/x:
	mkdir -p $BIN/x

$MAN/x: x.man
	cp x.man $MAN/x

uninstall:V:
	rm -rf $BIN/x
	rm -f $MAN/x
