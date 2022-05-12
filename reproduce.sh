#!/bin/bash

if [[ ! -d .venv ]]; then
    python -m venv .venv
fi
source .venv/bin/activate
pip install cython==3.0.0a10
python -c 'import test'
cythonize -i -3 test.py
python -c 'import test'
