#!/bin/bash

cat /etc/passwd | sed '/\#/d' | awk 'NR%2 == 0 {print$0}' \
| cut -f 1 -d ':' | rev | sort -f -r | \
awk 'NR>='${FT_LINE1}' && NR<='${FT_LINE2}' {print;}' | \
tr '\n' ',' | sed -e 's/, */, /g' -e 's/.$//' -e 's/.\{3\}$/./'
