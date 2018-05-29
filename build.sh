#!/bin/bash

set -ex

if [ $# -lt 1 ]; then
  echo "Usage: $0 <lang>"
fi

LANG=$1

sphinx-build -W -b gettext -d doc/build/doctrees.gettext doc/source doc/source/locale
msgcat --no-wrap doc/source/locale/$LANG/LC_MESSAGES/doc.po | sed -f ./adjust.sed > doc/source/locale/$LANG/LC_MESSAGES/index.po
sphinx-build -a -W -b html -D language=$LANG -d doc/build/doctrees.$LANG doc/source doc/build/html/$LANG
