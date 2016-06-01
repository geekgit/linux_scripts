#!/bin/bash
Argument="$1"
User="$Argument"
Group="$Argument"
find . -type f -exec chown $User:$Group {} +
find . -type d -exec chown $User:$Group {} +
