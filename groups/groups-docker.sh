#!/bin/bash
Group="docker"
User="bionic"
sudo usermod -a -G "${Group}" "${User}"
