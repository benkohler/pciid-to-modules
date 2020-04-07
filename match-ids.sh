#!/bin/sh
echo "PCI Matches:"
for i in $(lspci -n | sed -E 's/.* (....:....) .*/\1/')
	do grep -i ${i} pci.map
done
