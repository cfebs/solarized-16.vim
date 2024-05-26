#!/usr/bin/env bash
cat solarized.vim | sed 's/^exe "hi!/echom "hi!/g; s/^hi!\(.*\)/echom "hi!\1"/g; /^".*/d'
