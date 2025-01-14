#!/bin/bash
echo "Running shell script via GitHub Actions"
# Your commands here
sudo bash -c 'echo "This is a file created with sudo" > hey.txt'
sudo cat hey.txt