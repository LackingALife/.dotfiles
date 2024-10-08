#!/bin/bash

BAT=$(acpi -b | grep -E -o '[0-1][0-9][0-9]?%')

# Full and short texts
echo "$BAT"

# Set urgent flag below 5% or use orange below 20%
[ ${BAT%?} -ge 95 ] && echo "#008000" 
[ ${BAT%?} -le 5 ] && exit 33
[ ${BAT%?} -le 20 ] && echo "#FF8000"

exit 0
