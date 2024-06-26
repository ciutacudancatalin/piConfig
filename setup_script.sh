#update and upgrade
sudo apt-get update -y ; sudo apt-get upgrade -y;

#create folder for airplay in /home/user and navigate to it
cd /home/catalin;
mkdir airplay;
cd airplay;

#install git
sudo apt-get install git -y;

#copy project from git
git clone https://github.com/mikebrady/shairport-sync.git; 

#navigate to git repo
cd shairport-sync;

#setup airplay using shairplay
sudo apt install autoconf libtool libdaemon-dev libasound2-dev libpopt-dev libconfig-dev -y ;
sudo apt install avahi-daemon libavahi-client-dev -y ; 
sudo apt install libssl-dev -y;  
sudo autoreconf -i -f ; 
sudo ./configure --with-alsa --with-avahi --with-ssl=openssl --with-systemd --with-metadata; 
sudo make;
sudo make install

#enable airplay service
sudo systemctl enable shairport-sync;
sudo service shairport-sync start;

#navigate to home
cd /home/catalin;

#create folder for cooler and navigate to it
mkdir cooler;
cd cooler;

#copy cooler(pimoroni-fanshim) repo and navigate to it IT DOES NOT WORK FOR UBUNTU SERVERRRRRRRR WHHYYYYY
git clone https://github.com/pimoroni/fanshim-python;
cd fanshim-python;

#install cooler software
sudo apt-get install python3 -y;
sudo apt-get install python3-pip -y;
sudo ./install.sh;
cd examples;
sudo ./install-service.sh --off-threshold 45 --on-threshold 65 --low-temp 45 --high-temp 65 --preempt --noled --nobutton;
sudo systemctl enable pimoroni-fanshim.service;

#navigate to /home/user
cd /home/catalin;

#create folder for pi-hole
mkdir pihole;
cd pihole;

#download pi-hole (human interaction needed for cofiguration)
curl -sSL https://install.pi-hole.net | bash;
