#!/bin/bash
echo "Gpu Fan Full Speed..."
nvidia-settings -a "[gpu:0]/GPUFanControlState=1"
nvidia-settings -a "[fan-0]/GPUTargetFanSpeed=100"
