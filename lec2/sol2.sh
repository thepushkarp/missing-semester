#!/usr/bin/bash

# Saves the working directory to MARCO
marco () {
	export MARCO=$(pwd)
}

# Changes directory to MARCO
polo () {
	cd $MARCO
}
