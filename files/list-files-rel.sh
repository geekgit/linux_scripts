#!/bin/bash
{ find . -type f 2>/dev/null; find . -type l 2>/dev/null; } | sort | uniq | sort
