#!/bin/bash

dir=`pwd`

if [ ! -e config.py ]; then
	echo "### creating default config.py"
	cp config.sample.py config.py
fi

if [ ! -d queue ]; then
	echo "### making $dir/queue"
	mkdir queue
fi

if [ -e $HOME/bin ]; then
	echo "### checking symlinks"
	py=$dir/cpq_mvq.py
	cd $HOME/bin
	[ ! -e mvq    ] && ln -s $py mvq
	[ ! -e cpq    ] && ln -s $py cpq
	[ ! -e rsyncq ] && ln -s $py rsyncq
fi

