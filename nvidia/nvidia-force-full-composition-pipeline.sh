#!/bin/bash
# Source: https://wiki.archlinux.org/title/NVIDIA/Troubleshooting#Avoid_screen_tearing
# "Tearing can be avoided by forcing a full composition pipeline, regardless of the compositor you are using."
echo "Force full composition pipeline.."
nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"