#!/usr/bin/env bash

# Use from project root directory
# Assumes artifacts were generated into build directory.
pdftk build/card*.pdf cat output build/cards_combined.pdf
