#!/bin/sh

set -e

. fsbuild/plugin.pre.sh

mkdir -p $PLUGIN_DIR
echo $PACKAGE_VERSION > $PLUGIN_DIR/Version.txt
cp README.md $PLUGIN_DIR/ReadMe.txt

mkdir -p $PLUGIN_BINDIR
echo $PACKAGE_VERSION > $PLUGIN_BINDIR/Version.txt
cp dosbox$EXE $PLUGIN_BINDIR

mkdir -p $PLUGIN_LICENSESDIR
cp fsbuild/_build/dosbox-src/COPYING $PLUGIN_LICENSESDIR/DOSBox.txt

. fsbuild/plugin.post.sh
