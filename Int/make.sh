#!/bin/bash

sed -i 's/ghc -\([^d]\)/ghc -dynamic -\1/' Makefile
make "$@"
