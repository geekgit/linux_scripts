#!/bin/bash
echo "gqrx setup"
# no bladerf for xenial
# PPA - xenial
sudo add-apt-repository -y ppa:ettusresearch/uhd
sudo geekgit-tweak-custom-ppa ppa:ettusresearch/xenial/uhd
# PPA - xenial
sudo add-apt-repository -y ppa:myriadrf/drivers
sudo geekgit-tweak-custom-ppa ppa:myriadrf/xenial/drivers
# PPA - xenial
sudo add-apt-repository -y ppa:myriadrf/gnuradio
sudo geekgit-tweak-custom-ppa ppa:myriadrf/xenial/gnuradio
# PPA - xenial
sudo add-apt-repository -y ppa:gqrx/gqrx-sdr
sudo geekgit-tweak-custom-ppa ppa:gqrx/xenial/gqrx-sdr
# install
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y gqrx-sdr
