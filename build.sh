#!/usr/bin/bash

set -e

FILE="minesweeper"
SRC="$FILE.tal"
BUILD="$FILE.rom"

UXNLIN="$HOME/roms/uxnlin.rom"

if [ -f "$UXNLIN" ]; then
	uxncli "$UXNLIN" "$SRC"
fi

uxnasm "$SRC" "$BUILD"
