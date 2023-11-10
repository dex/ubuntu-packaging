# Run docker
```  
docker run --rm -it -v `pwd`:/develop -v /home/dex/.gnupg:/root/.gnupg -e DEBFULLNAME="Dex Chen" -e DEBEMAIL="chienhua@gmail.com" -w /develop ppa /bin/bash
```

# Change the author in the debian/control
```bash
vim debian/control
```

# Update change log
```bash
dch -i
```

# Apply patch and commit
```bash
dpkg-source --commit
```

# Build
```bash
dpkg-buildpackage -b -uc -us
```

# Sign
```bash
debsign -S -k0xF14CECE2809C38510FBA8286C758E34A69C51CF4 <package>.changes
```

# Upload package from host
```bash
dput ppa:dex0827/ppa <package>.changes
```

# Reference
  * http://packaging.ubuntu.com/html/
