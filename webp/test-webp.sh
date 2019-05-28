#!/bin/bash
echo "i: $1" >> ~/test-webp.log
echo "s: $2" >> ~/test-webp.log
echo "s: $3" >> ~/test-webp.log
echo "o: $4" >> ~/test-webp.log
/usr/bin/dwebp $1 -scale $2 $3 -o $4
