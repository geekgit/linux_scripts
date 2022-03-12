#!/bin/bash
Link="$1"
aria2c -x 16 -s 16 --file-allocation=none "${Link}"
