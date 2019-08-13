#!/bin/bash
echo "Building wheel"
python --version
pip --version
pip wheel . -w wheelhouse/

# should use delocate on wheels ??
