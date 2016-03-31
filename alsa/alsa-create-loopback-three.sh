#!/bin/bash
sudo modprobe snd-aloop enable=1,1,1 index=10,11,12
pacmd update-sink-proplist alsa_output.platform-snd_aloop.0.analog-stereo device.description="Alsa_0"
pacmd update-sink-proplist alsa_output.platform-snd_aloop.1.analog-stereo device.description="Alsa_1"
pacmd update-sink-proplist alsa_output.platform-snd_aloop.2.analog-stereo device.description="Alsa_2"
