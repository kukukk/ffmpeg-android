#!/bin/bash

echo "============================================"
echo "Updating submodules"
git submodule update --init
echo "============================================"
echo "Updating libpng, expat and fribidi"
rm -rf libpng-*
rm -rf expat-*
rm -rf fribidi-*
rm -rf lame-*
rm -rf libogg-*
rm -rf libvorbis-*
rm -rf libtheora-*

wget -O- http://downloads.sourceforge.net/project/libpng/libpng16/older-releases/1.6.13/libpng-1.6.13.tar.xz | tar xJ
wget -O- http://downloads.sourceforge.net/project/expat/expat/2.1.0/expat-2.1.0.tar.gz | tar xz
wget -O- http://fribidi.org/download/fribidi-0.19.6.tar.bz2 | tar xj
wget -O- http://sourceforge.net/projects/lame/files/lame/3.99/lame-3.99.5.tar.gz | tar xz
wget -O- http://downloads.xiph.org/releases/ogg/libogg-1.3.2.tar.gz | tar xz
wget -O- http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.5.tar.gz | tar xz
wget -O- http://downloads.xiph.org/releases/theora/libtheora-1.1.1.tar.bz2 | tar xj
echo "============================================"
