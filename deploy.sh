#! /bin/bash

# If occur some error end this cript
set -e

# Move all dirs to parrent dir
find . -maxdepth 1 -type d ! -name '.' -exec mv {} .. \;
# Move files exept this script to parrent dir
find . -maxdepth 1 -type f ! -wholename "$0" -exec mv {} .. \;

# Append .davebashrc to .bashrc
echo -e "\n" >> ../.bashrc
echo "if [ -e .dave_bashrc ]; then " >> ../.bashrc
echo "  . .dave_bashrc" >> ../.bashrc
echo "fi" >> ../.bashrc

# Remove this script itself
rm $0
