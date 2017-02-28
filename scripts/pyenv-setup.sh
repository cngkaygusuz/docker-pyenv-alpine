#!/bin/bash

git clone --depth 1 https://github.com/yyuu/pyenv.git ~/.pyenv && \
rm -rfv /root/.pyenv/.git && \
export PYENV_ROOT="/root/.pyenv" && \
export PATH="$PYENV_ROOT/bin:$PATH" && \
export CFLAGS='-O2' && \
eval "$(pyenv init -)" && \
pyenv install $1 && \
pyenv global $1 && \
pip install --upgrade pip && \
pyenv rehash
