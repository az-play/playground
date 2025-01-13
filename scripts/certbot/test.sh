#!/bin/bash

echo "Running Python script..."

echo "The RG IS $1"
python "${GITHUB_WORKSPACE}/scripts/certbot/hello.py"

