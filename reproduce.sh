#!/bin/bash

if [[ ! -d .venv ]]; then
    python -m venv .venv
fi
source .venv/bin/activate

rm *.c *.so
pip install numpy==1.23.1 cython==0.29.31
cythonize -i -3 test.py
python -c 'import test'

rm *.c *.so
pip install numpy==1.23.1 cython==3.0.0a11
cythonize -i -3 test.py
python -c 'import test'
