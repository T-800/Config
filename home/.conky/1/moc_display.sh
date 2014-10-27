#!/bin/sh

TITLE="`mocp -i | grep 'Title:' | sed -e 's/^.*: //'`";
if [ "$TITLE" != "" ]; then
  ARTIST="`mocp -i | grep 'Artist:' | sed -e 's/^.*: //'`";
  SONGTITLE="`mocp -i | grep 'SongTitle:' | sed -e 's/^.*: //'`";
  ALBUM="`mocp -i | grep 'Album:' | sed -e 's/^.*: //'`";
  if [ "$ALBUM" != "" ]; then ALBUM="($ALBUM)"; fi
  echo -e "$ARTIST\n$SONGTITLE\n$ALBUM"
else echo "MOC"
fi