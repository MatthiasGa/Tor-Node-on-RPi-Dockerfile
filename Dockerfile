#
# Tor Node on RaspberryPi Dockerfile
# Link:  https://github.com/MatthiasGa/Tor-Node-on-RPi-Dockerfile
# Email: MatthiasGa@users.noreply.github.com
#

FROM resin/rpi-raspbian

RUN apt-get update && apt-get install -y \
  tor \
  vim

RUN echo "RunAsDaemon 0" >> /etc/tor/torrc && \
  echo "ORPort 9001" >> /etc/tor/torrc && \
  echo "DirPort 9030" >> /etc/tor/torrc && \
  echo "ExitPolicy reject *:*" >> /etc/tor/torrc && \
  echo "RelayBandwidthRate 100 KB" >> /etc/tor/torrc && \
  echo "RelayBandwidthBurst 200 KB" >> /etc/tor/torrc

# set own nichname
RUN echo "Nickname TorNodeOnRPi" >> /etc/tor/torrc

EXPOSE 9001
EXPOSE 9030

CMD ["tor"]