#!/bin/bash
src=emacs-25.2.tar.gz 
if [ -f $src ]
then
	echo using local $src
else
   	echo downloading $src ......
   	wget http://git.savannah.gnu.org/cgit/emacs.git/snapshot/emacs-25.2.tar.gz
fi

yum install -y ncurses-devel gnutls-devel libxml2-devel automake autoconf

tar xzvf emacs-25.2.tar.gz
cd emacs-25.2
./autogen.sh
./configure –without-makeinfo –with-x-toolkit=no –with-xpm=no –with-jpeg=no –with-png=no –with-gif=no –with-tiff=no
make install
