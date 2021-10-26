sudo groupadd docker
sudo usermod -aG docker $USER

#
docker info
# see the root directory
systemctl status docker.service
# edit file and put something like this: ExecStart =/usr/bin/dockerd -g /new/docker/root/dir -H fd://
sudo systemctl daemon-reload
sudo systemctl restart docker.service