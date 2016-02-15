#!/bin/bash
#Usage: ./fontforge-show-fontname.sh <Font Name> <Index>
#Example 1: ./fontforge-show-fontname.sh test.ttf 0
ScriptName="$HOME/fontforge-show-fontname-$(uuidgen).sh"
echo "#!/usr/bin/fontforge -lang=ff" > $ScriptName
echo "Open(\$1)" >> $ScriptName
echo "names = FontsInFile(\$1)" >> $ScriptName
echo "Print(\"FontName #$2:{\"+names[$2]+\"}\")" >> $ScriptName
echo "Quit()" >> $ScriptName
chmod +rx "$ScriptName"
$ScriptName "$1"
rm $ScriptName
