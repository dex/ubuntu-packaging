# Run docker
  docker run --rm -it -v `pwd`:/develop -v /home/dex/.gnupg:/root/.gnupg -e DEBFULLNAME="Dex Chen" -e DEBEMAIL="chienhua@gmail.com" -w /develop ppa /bin/bash

# Change the author in the debian/control
  vim debian/control

# Update change log
  dch -i

# Apply patch and commit
  dpkg-source --commit

# Build and sign
  debuild -S -k0x69C51CF4 
  exit

# Upload package from host
  sudo apt install dput
  dput ppa:dex0827/ppa xxx.changes

# Reference
  * http://packaging.ubuntu.com/html/
