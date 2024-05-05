#!/usr/bin/env bash
set -e

source "./env/bin/activate"

pip install opencv-python


python3 QRCode.py