#!/bin/bash
UserAgent0="TW96aWxsYS81LjAgKFgxMTsgTGludXggeDg2XzY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNTMuMC4yNzg1LjEwMSBTYWZhcmkvNTM3LjM2Cg=="
UserAgent0Plain=$(echo "$UserAgent0" | base64 --decode)
echo "$UserAgent0Plain"
