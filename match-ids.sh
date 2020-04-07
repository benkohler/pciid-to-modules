#!/bin/bash
echo "PCI Matches:"
for i in $(lspci -n | sed -E 's/.* ([0-9a-fA-F]{4}\:[0-9a-fA-F]{4}).*/\1/')
do
	grep -i ${i} pci.map
done
