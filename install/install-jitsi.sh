#!/bin/bash
create_rw_directory_jitsi()
{
	DirName="$1"
	sudo mkdir -p "${HOME}/.jitsi-meet-cfg/${DirName}"
	sudo chown "${USER}":"${USER}" "${HOME}/.jitsi-meet-cfg/${DirName}"
	sudo chmod a+rwx "${HOME}/.jitsi-meet-cfg/${DirName}"
}
sudo apt-get install -y docker-compose
cd $HOME
git clone https://github.com/jitsi/docker-jitsi-meet
cd $HOME/docker-jitsi-meet
cat env.example > .env
./gen-passwords.sh
cd $HOME
create_rw_directory_jitsi web
create_rw_directory_jitsi letsencrypt
create_rw_directory_jitsi transcripts
create_rw_directory_jitsi prosody
create_rw_directory_jitsi jicofo
create_rw_directory_jitsi jvb
create_rw_directory_jitsi jigasi
create_rw_directory_jitsi jibri
cd $HOME/docker-jitsi-meet
docker-compose up -d
