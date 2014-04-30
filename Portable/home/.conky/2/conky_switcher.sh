#!/bin/bash
#A script to switch conky
## Conkyswitch V.3 ;-) [Credits- genesis300, yoshi314 and combined by sHy ;-D]
 
pkill -2 -f conky
cp /home/renaud/.conky/conkyrc /home/renaud/.conky/conkyrc.bak
cp /home/renaud/.conky/conkyrc1 /home/renaud/.conky/conkyrc
mv /home/renaud/.conky/conkyrc.bak /home/renaud/.conky/conkyrc1
conky -c /home/renaud/.conky/conkyrc -q &