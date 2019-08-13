# pypi-package-cython-example

This is an example project for how to use travis to build wheels for Linux, OSX
and Windows, for python 2.7 and 3.x and publish them to pypi.

## Notes

#### pyproject.toml

Using the `[build-system]` entry in [pyproject.toml](./pyproject.toml) is the
only way I could get `pip install .` working if no _cython_ is installed
previously. (And that is mainly because using _setup_requires_ for installing
_cython_ before installing does not actually work...) that requires
