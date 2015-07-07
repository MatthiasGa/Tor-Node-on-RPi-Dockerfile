# Tor-Node-on-RPi-Dockerfile
Tor Node on RaspberryPi Dockerfile

### Base Docker Image
* resin/rpi-raspbian

### Installation
1. Use Docker for RaspberryPi from hypriot.com
2. Download and build image
```sh
git clone https://github.com/MatthiasGa/Tor-Node-on-RPi-Dockerfile
cd Tor-Node-on-RPi-Dockerfile
docker build -t matthiasga/tor .
```

### Usage
1. Run
```sh
docker run -d -p 9001:9001 -p 9030:9030 --restart=always  matthiasga/tor
```

2. Show details
```sh
docker ps 
docker logs DOCKER_NAME
```