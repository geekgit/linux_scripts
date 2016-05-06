#!/bin/bash
echo "gqrx setup"
# PPA - wily only
sudo add-apt-repository -y ppa:bladerf/wily/bladerf
# PPA - current version
sudo add-apt-repository -y ppa:ettusresearch/uhd
# PPA - wily only
sudo add-apt-repository -y ppa:myriadrf/wily/drivers
# PPA - wily only
sudo add-apt-repository -y ppa:myriadrf/wily/gnuradio
# PPA - wily only
sudo add-apt-repository -y ppa:gqrx/wily/gqrx-sdr
# install
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y gqrx-sdr
