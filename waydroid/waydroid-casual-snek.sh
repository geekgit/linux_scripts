#!/bin/bash
cd $HOME
git clone https://github.com/casualsnek/waydroid_script
cd $HOME/waydroid_script
python3 -m venv venv
venv/bin/pip install -r requirements.txt
sudo venv/bin/python3 main.py
