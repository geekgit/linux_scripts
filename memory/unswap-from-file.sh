#!/bin/bash
SwapFilePath="/file_swap"
sudo swapoff -a
sudo rm -f "${SwapFilePath}"
