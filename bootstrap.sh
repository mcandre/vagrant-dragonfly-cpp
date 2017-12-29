#!/bin/sh

sudo pkg update && \
    sudo pkg install -y llvm50

# Remove trailing '50' from binaries
for f in $(find /usr/local/bin -type f -name '*50' -print); do
    f_sans50="$(echo $f | sed 's/50//')" &&
        ln -s "$f" "$f_sans50"
done
