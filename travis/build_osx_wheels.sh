#!/bin/bash
curl https://github.com/matthew-brett/multibuild/blob/ed1cfaf365ed51bd309a80e60736915d3ec70d31/osx_utils.sh -s -o osx_utils.sh
source osx_utils.sh

get_macpython_environment ${PYTHON_VERSION} venv "10.6"

echo "Building wheel"
python --version
pip --version
pip wheel . -w wheelhouse/

repair_wheelhouse ./wheelhouse
