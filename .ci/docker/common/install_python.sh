#!/bin/bash
set -ex

apt-get update
apt-get install -y python${PYTHON_VERSION} python${PYTHON_VERSION}-dev python3-pip
ln -s /usr/bin/python3.9 /usr/bin/python
rm -rf /usr/bin/python3
ln -s /usr/bin/python3.9 /usr/bin/python3
python --version
python3 --version
pip3 --version
pip --version
python -mpip install --upgrade pip
pip --version
pip3 --version
python -mpip install -r /opt/requirements-ci.txt
python -mpip install cmake

pip --version
