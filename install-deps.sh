#!/bin/sh
# install run dependencies for pstoestudio

if [ -f /etc/debian_version ]; then
	apt install bash ghostscript imagemagick inotify-tools jbigkit-bin procps
else
	echo "Your distribution is not supported, run dependencies not installed."
fi

