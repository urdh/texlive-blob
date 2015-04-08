# Prebuilt TeX live blobs

[![Travis CI](https://img.shields.io/travis/urdh/texlive-blob.svg)](https://travis-ci.org/urdh/texlive-blob)
[![Github release](https://img.shields.io/github/release/urdh/texlive-blob.svg)](https://github.com/urdh/texlive-blob/releases/latest)

Prebuilt bundles of TeX Live for use in the Travis CI environment.

See it in action: [skmath](https://github.com/urdh/skmath/blob/master/.travis.yml), [skdoc](https://github.com/urdh/skdoc/blob/master/.travis.yml), [skrapport](https://github.com/urdh/skrapport/blob/master/.travis.yml), [download](https://github.com/urdh/download/blob/master/.travis.yml).

# Usage

To use the tarfile, do something like this in your `.travis.yml`:

```
before_install:
  - curl -L https://github.com/urdh/texlive-blob/releases/download/20150408/texlive.tar.xz | tar -JxC /usr/local/texlive

install:
  - PATH=/usr/local/texlive/bin/x86_64-linux:$PATH
```
