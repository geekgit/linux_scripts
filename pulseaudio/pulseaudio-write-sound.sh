#!/bin/bash
parec -d "$1".monitor | oggenc -b 256 -o "$2".ogg --raw -
