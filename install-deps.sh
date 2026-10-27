#!/bin/sh
# install run dependencies for pstoestudio

if [ -f /etc/debian_version ]; then
	apt install bash ghostscript imagemagick inotify-tools jbigkit-bin procps
elif [ "$(uname -s)" = "FreeBSD" ]; then
	pkg install bash ghostscript10 ImageMagick7 inotify-tools jbigkit
else
	echo "Your distribution is not supported, run dependencies not installed."
fi

