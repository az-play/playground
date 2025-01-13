#!/bin/bash

echo "Running Python script..."

echo "The RG is ${env.RG}"
python "${GITHUB_WORKSPACE}/scripts/certbot/hello.py"

