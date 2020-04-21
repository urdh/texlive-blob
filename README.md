# Prebuilt TeX live blobs

[![Travis CI](https://img.shields.io/travis/urdh/texlive-blob/master)](https://travis-ci.org/urdh/texlive-blob)
[![Github release](https://img.shields.io/github/release/urdh/texlive-blob)](https://github.com/urdh/texlive-blob/releases/latest)


Prebuilt bundles of TeX Live for use in the Travis CI environment.

See it in action: [skmath](https://github.com/urdh/skmath/blob/master/.travis.yml), [skdoc](https://github.com/urdh/skdoc/blob/master/.travis.yml), [skrapport](https://github.com/urdh/skrapport/blob/master/.travis.yml), [download](https://github.com/urdh/download/blob/master/.travis.yml).

## Usage

To use the tarfile, do something like this in your `.travis.yml`:

```
before_install:
  - mkdir -p $HOME/texlive && curl -L https://github.com/urdh/texlive-blob/releases/download/20200421/texlive.tar.xz | tar -JxC $HOME/texlive
install:
  - PATH=$HOME/texlive/bin/x86_64-linux:$PATH
```

Note that the tarfile is missing some package collections, so you may need to `tlmgr install` some missing packages.
