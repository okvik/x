BIN=$home/bin/rc
MAN=/sys/man/1
RC=path run

install:V: $MAN/x rc

$MAN/x: x.man
	cp x.man $MAN/x

rc:V:
	mkdir -p $BIN/x
	for(f in $RC) cp $f $BIN

uninstall:V:
	rm -rf $BIN/x
	rm -f $MAN/x