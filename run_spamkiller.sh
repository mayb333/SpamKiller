#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export PYTHONPATH="${PYTHONPATH}:${DIR}"
python ${DIR}/app/app.py
