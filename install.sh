#!/bin/bash
if [ -z "$1" ]
  then
    PREFIX=/usr/bin
  else
    PREFIX=$1
fi

cp overleafv2-git $PREFIX
chmod +x $PREFIX/overleafv2-git

