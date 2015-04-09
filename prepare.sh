#!/bin/sh
set -e
TARFILE_NAME=$1

wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar xf install-tl-unx.tar.gz

TARGET=$PWD/texlive
rm -rf $TARGET

PROFILE=/tmp/texlive.profile
sed "s#<TARGET>#$TARGET#g" texlive.profile > $PROFILE

install-tl-*/install-tl -profile $PROFILE

tar -cJf $TARFILE_NAME -C $TARGET .
