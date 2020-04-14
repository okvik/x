BIN=$home/bin/rc
MAN=/sys/man/1
RC=path run mnt cd man vt

all:VQ:
	echo 'An unsightly package appears: "Meal, Mk-install-to-Eat."'

install:V: $MAN/x rc

$MAN/x: x.man
	cp x.man $MAN/x

rc:V:
	mkdir -p $BIN/x
	for(f in $RC) cp $f $BIN/x

uninstall:V:
	rm -rf $BIN/x
	rm -f $MAN/x
