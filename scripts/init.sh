#!/bin/bash

export PYENV_ROOT="/root/.pyenv" && \
export PATH="$PYENV_ROOT/bin:$PATH" && \
export CFLAGS='-O2' && \
eval "$(pyenv init -)" && \
source /root/.pyenv/completions/pyenv.bash
