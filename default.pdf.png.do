#!/bin/sh
redo-ifchange "$2".pdf
pdftoppm -png -r 300 "$2".pdf
