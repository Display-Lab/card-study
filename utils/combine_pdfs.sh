#!/usr/bin/env bash

# Use from project root directory
# Assumes artifacts were generated into build directory.
pdftk cards/build/card*.pdf cat output cards/build/cards_combined.pdf
