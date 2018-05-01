#!/bin/bash
export VERSION="0.0.1"
export OSLO_VERSION="0.1"
source config.sh # Load Settings

INSTALL_STEP="start"

echo "  System Builder $VERSION"
echo "-------------------------"
echo "Platform Version: $OSLO_VERSION"
if [ -e ".last_step" ]
then
  INSTALL_STEP="$(cat .last_step)"
fi
echo "Continuing build at stage: $INSTALL_STEP"

# Installer Targets
case $INSTALL_STEP in
  start)
    echo ":: Starting Pipeline"
  ;&

  download)
    echo ":: Downloading"
    echo "download" > .last_step
    source src/001-download.sh
  ;&

  compile-kernel)
    echo ":: Compiling Kernel"
    echo "compile-kernel" > .last_step
    source src/002-compile-kernel.sh
  ;&

  make-iso)
    echo ":: Creating ISO Image"
    echo "make-iso" > .last_step
    source src/010-make-iso.sh

  ;&

  finalize)
    echo ":: Pipeline Done"
  ;;
esac

echo "System builder exited normaly"
