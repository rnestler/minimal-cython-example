#!/bin/bash

if [[ ! -d .venv ]]; then
    python -m venv .venv
fi
source .venv/bin/activate
rm *.c *.so

python -c 'import test'

pip install cython==0.29.28
cythonize -i -3 test.py
python -c 'import test'

rm *.c *.so
pip install cython==3.0.0a10
cythonize -i -3 test.py
python -c 'import test'
