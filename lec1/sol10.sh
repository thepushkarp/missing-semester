#!/bin/bash

# Prints battery percentage to standard output (Mat differ on different systems)
echo "Battery is $(cat /sys/class/power_supply/BAT0/capacity)%"
