#!/bin/bash
echo "gqrx setup"
# PPA - wily only
sudo add-apt-repository -y ppa:bladerf/bladerf
sudo geekgit-tweak-custom-ppa ppa:bladerf/wily/bladerf
# PPA - wily only
sudo add-apt-repository -y ppa:ettusresearch/uhd
sudo geekgit-tweak-custom-ppa ppa:ettusresearch/wily/uhd
# PPA - wily only
sudo add-apt-repository -y ppa:myriadrf/drivers
sudo geekgit-tweak-custom-ppa ppa:myriadrf/wily/drivers
# PPA - wily only
sudo add-apt-repository -y ppa:myriadrf/gnuradio
sudo geekgit-tweak-custom-ppa ppa:myriadrf/wily/gnuradio
# PPA - wily only
sudo add-apt-repository -y ppa:gqrx/gqrx-sdr
sudo geekgit-tweak-custom-ppa ppa:gqrx/wily/gqrx-sdr
# install
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y gqrx-sdr
