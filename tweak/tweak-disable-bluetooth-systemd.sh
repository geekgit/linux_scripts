#!/bin/bash
sudo systemctl stop bluetooth.service
sudo systemctl disable bluetooth.service
sudo systemctl mask bluetooth.service