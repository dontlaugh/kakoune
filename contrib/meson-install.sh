#!/bin/sh

set -e
set +x
# Try to use native install directives in meson.build files,
# but sometimes it's easier to use a script
#
# Adapted from `make install`.

root="${MESON_SOURCE_ROOT}"
PREFIX="/usr/local"

sharedir="$PREFIX/share/kak"
libexecdir="$PREFIX/libexec/kak"
docdir="$PREFIX/share/doc/kak"

mkdir -p \
  $libexecdir \
  $sharedir \
  $docdir

# link up and over to /usr/local/bin/kak
ln -sf ../../bin/kak ${libexecdir}/kak

cp "${root}/share/kak/kakrc" $sharedir
chmod 0644 ${sharedir}/kakrc

cp -r ${root}/rc/* "${sharedir}/rc"
find "${sharedir}/rc" -type f -exec chmod 0644 {} +
[ -e ${sharedir}/autoload ] || ln -s rc ${sharedir}/autoload

cp ${root}/colors/* "${sharedir}/colors"
chmod 0644 ${sharedir}/colors/*

cp ${root}/README.asciidoc ${docdir}
chmod 0644 ${docdir}/*.asciidoc
cp ${root}/doc/pages/*.asciidoc ${sharedir}/doc
chmod 0644 ${sharedir}/doc/*.asciidoc

