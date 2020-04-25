#!/bin/bash
sudo apt-get install -y docker-compose
cd $HOME
git clone https://github.com/jitsi/docker-jitsi-meet
cd docker-jitsi-meet
cat env.example > .env
./gen-passwords.sh
mkdir -p $HOME/.jitsi-meet-cfg/web
mkdir -p $HOME/.jitsi-meet-cfg/letsencrypt
mkdir -p $HOME/.jitsi-meet-cfg/transcripts
mkdir -p $HOME/.jitsi-meet-cfg/prosody
mkdir -p $HOME/.jitsi-meet-cfg/jicofo
mkdir -p $HOME/.jitsi-meet-cfg/jvb
mkdir -p $HOME/.jitsi-meet-cfg/jigasi
mkdir -p $HOME/.jitsi-meet-cfg/jibri
docker-compose up -d
