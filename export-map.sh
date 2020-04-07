#!/bin/bash

echo "Writing PCI map..."
grep "alias pci:" modules.alias | \
	sed -E 's/.*v0000(....)d0000(....).* (.*)$/\1:\2 \3/' | \
	sort | uniq > \
	pci.map
