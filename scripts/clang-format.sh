#!/bin/sh

repoRoot=$1
clangFormatExe=clang-format-5.0
numThreads=$(getconf _NPROCESSORS_ONLN)

find $repoRoot -regex ".*\.\(h\|cpp\)" \
  | xargs -n 1 -P $numThreads $clangFormatExe -i
