#!/usr/bin/sh
ffmpeg -f x11grab  -s 1366x768 -i :0.0 -r 25 -vcodec libx264  output.mkv
