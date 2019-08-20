# pypi-package-cython-example

This is an work-in-progress example project for how to use travis to build
wheels for Linux, OSX and Windows, for python 2.7 and 3.x and publish them to
pypi.

## TODO

- [x] build wheels on Linux, OSX and Windows
- [x] build manylinux wheels for Linux cp27m cp27mu for 32bit and 64bit
- [x] build manylinux wheels for Linux cp35m cp36m cp37m for 32bit and 64bit
- [x] build osx wheels for 2.7 3.\[567\]
- [x] build 64bit windows wheels for 2.7 3.\[567\]
- [ ] build 32bit windows wheels
- [ ] deploy wheels to pypi

- [ ] do the same example for azure

## Notes

#### pyproject.toml

Using the `[build-system]` entry in [pyproject.toml](./pyproject.toml) is the
only way I could get `pip install .` working if no _cython_ is installed
previously. (And that is mainly because using _setup_requires_ for installing
_cython_ before installing does not actually work...) that requires
