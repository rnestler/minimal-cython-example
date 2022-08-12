#!/bin/bash

if [[ ! -d .venv ]]; then
    python -m venv .venv
fi
source .venv/bin/activate

rm *.c *.so
pip install cython==3.0.0a11
cythonize -i -3 test.py
python -c 'import test'
