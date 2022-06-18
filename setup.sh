# Make sure everything is up to date
sudo apt update
sudo apt -y full-upgrade
sudo apt-get update

echo 'PATH=$PATH:~/.local/bin/' >> ~/.bash_profile

source ~/.bash_profile

# Create Projects Folder
mkdir -p ~/Projects/pirobot

# Taken from https://ai-pool.com/d/how-to-install-keras-on-raspberry-pi-
# ML Libraries
python3 -m pip install --upgrade pip

sudo apt-get install -y python3-numpy
sudo apt-get install -y libblas-dev
sudo apt-get install -y liblapack-dev
sudo apt-get install -y python3-dev
sudo apt-get install -y libatlas-base-dev
sudo apt-get install -y gfortran
sudo apt-get install -y python3-setuptools
sudo apt-get install -y python3-scipy
sudo apt-get update
sudo apt-get install -y python3-h5py

# Install common ML libraries
python3 -m pip install scipy
python3 -m pip install pandas
python3 -m pip install cython
python3 -m pip install opencv-python
pip install -U scikit-learn # sklearn
python3 -m pip install --user -U nltk

# TODO: install tensorflow lite: https://lindevs.com/install-precompiled-tensorflow-lite-on-raspberry-pi/
# TODO: install keras

# Raspberry Pi Camera for Python
python3 -m pip install picamera


# Video encoders
sudo apt install -y gpac # MP4 Format

# Google Drive
pip install --no-input --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib

# Keyboard/mouse events
pip install --no-input pynput

# Instructions from Freenove
# https://drive.google.com/file/d/16ximR2Ka6HJDdu20Xr7_sWo04teDhlcP/view
cd /tmp
git clone https://github.com/WiringPi/WiringPi
cd WiringPi
./build

## Freenove code
cd ~
mkdir -p kits

cd ~/kits
git clone --depth 1 https://github.com/freenove/Freenove_Ultimate_Starter_Kit_for_Raspberry_Pi
mv Freenove_Ultimate_Starter_Kit_for_Raspberry_Pi/ Freenove_Kit/

cd ~/kits
git clone https://github.com/Freenove/Freenove_Robot_Dog_Kit_for_Raspberry_Pi Freenove_Robot_Dog

echo 
echo 'Setup is complete!!'