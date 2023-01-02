# THIS SCRIPT FOR INSTALL TELEPORT DIRECT IN TO SERVER

wget https://get.gravitational.com/teleport-v11.1.2-linux-arm64-bin.tar.gz

tar -xf teleport-v11.1.2-linux-arm64-bin.tar.gz

cd teleport

./install

# INSTALL SERVER AND CLIENT, THE DIFFERENT IS USE DIFFERENT CONFIG FILE
# REMEMBER: INSTALL SERVER FIRST AND CLIENT AFTER
# IF YOU INSTALL SERVER PLEASE USE server.yml
# IF YOU INSTALL CLIENT PLEASE USE client.yml
nano config.yml

teleport start --config="/home/pi/v11_teleport/teleport/config.yml"

