#!/bin/bash
SwapFilePath="/file_swap"
swapoff -a
rm -f "${SwapFilePath}"
