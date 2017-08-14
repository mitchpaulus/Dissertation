#!/bin/bash
for d in ./*/ ; do (cd "$d" && pwd && latexmk -lualatex); done

