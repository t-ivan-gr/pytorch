#!/bin/bash
set -ex

apt-get update
apt-get install -y python${PYTHON_VERSION} python${PYTHON_VERSION}-dev python3-pip
ln -s /usr/bin/python${PYTHON_VERSION} /usr/bin/python
rm -rf /usr/bin/python3
ln -s /usr/bin/python${PYTHON_VERSION} /usr/bin/python3
python -mpip install --upgrade pip
python -mpip install -r /opt/requirements-ci.txt
python -mpip install cmake
