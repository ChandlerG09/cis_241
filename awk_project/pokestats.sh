#!/bin/bash

echo "Retrieving Pokemon Statistics..."
echo ""
echo "The Most Powerful Pokemon is" |sort -t "," Pokemon.csv -k5,5|awk '{print $5}'


