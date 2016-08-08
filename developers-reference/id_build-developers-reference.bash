#!/bin/bash
LANG="id"
VERSION="3.4.18"
PUBDATE="2016-08-08"
echo "Memperbaharui berkas po..."
make updatepo LINGUA=$LANG
echo "Validasi XML..."
make validate
echo "Membuat PDF..."
make $LANG/developers-reference.pdf VERSION=$VERSION PUBDATE=$PUBDATE
echo "Membuat TXT..."
make $LANG/developers-reference.txt VERSION=$VERSION PUBDATE=$PUBDATE
