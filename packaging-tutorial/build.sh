#!/bin/bash
#
# Author: Izharul Haq <atoz.chevara [at] yahoo [dot] com>
# Usage: ./build.sh <lang>
# Version: 1.0

set -e

LANG=$1

if ! [[ "${LANG}" != "" && "${LANG}" =~ ^[^abc]*$ ]]
then
    echo "Usage: ./build.sh <lang>" >&2
    echo "ex: ./build.sh id"
    exit 1
fi

po4a po4a/po4a.cfg --verbose
pdflatex packaging-tutorial.$LANG.tex
cp packaging-tutorial.$LANG.tex{,.bak}
cp packaging-tutorial.$LANG.toc{,.bak}
rm debiantutorial.*.sty
mv packaging-tutorial.$LANG.pdf pdf/
