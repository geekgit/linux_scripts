#!/usr/bin/fontforge -lang=ff
# Usage: ./font-names-count.sh file.ttf
Open($1)
names = FontsInFile($1)
count = SizeOf(names)
Print("Font names count: "+count)
Quit()
