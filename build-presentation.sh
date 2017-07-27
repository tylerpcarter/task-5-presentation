#!/bin/bash

INPUT=$1
TEMPLATE=template-index.html
TRANSITION=slide
THEME=black

pandoc -t revealjs --template=$TEMPLATE -s --variable theme="$THEME" --variable transition="$TRANSITION" --variable revealjs-url="./" reveal.md -o revealhtml.html