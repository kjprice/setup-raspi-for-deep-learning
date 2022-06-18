# Make sure everything is up to date
sudo apt update
sudo apt -y full-upgrade
sudo apt-get update

# Anaconda
# Taken from https://stackoverflow.com/questions/39371772/how-to-install-anaconda-on-raspberry-pi-3-model-b
wget http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-armv7l.sh
md5sum Miniconda3-latest-Linux-armv7l.sh
bash Miniconda3-latest-Linux-armv7l.sh
# Installs to ~/miniconda3...
echo 'PATH=$PATH:~/miniconda3/bin/' >> ~/.bash_profile
echo 'PATH=$PATH:~/.local/bin/' >> ~/.bash_profile

source ~/.bash_profile

conda update conda

conda install anaconda-client

# taken from https://salishsea-meopar-docs.readthedocs.io/en/latest/work_env/python3_conda_environment.html
conda install -c anaconda python=3.7
conda update --all
conda create -n mypython3.8 python=3.8
# source activate mypython3

# TODO: getting errors when using keras ... python3.7 -c 'from tensorflow.keras.applications.resnet50 import ResNet50'
# TODO: Maybe try this https://towardsdatascience.com/portable-computer-vision-tensorflow-2-0-on-a-raspberry-pi-part-1-of-2-84e318798ce9

conda config --add channels conda-forge

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

# Then install tensorflow and keras
python3 -m pip install scipy
python3 -m pip install pandas
python3 -m pip install cython
python3 -m pip install tensorflow
python3 -m pip install keras

# Taken from https://pypi.org/project/opencv-python/
python3 -m pip install opencv-python

# Raspberry Pi Camera for Python
python3 -m pip install picamera

# NLTK
python3 -m pip install --user -U nltk
# TODO: Install nltk dictionary stuff
# TODO: Install keras pretrained network

# scikit-learn
pip install -U scikit-learn

# TODO: tensorflow lite: https://lindevs.com/install-precompiled-tensorflow-lite-on-raspberry-pi/

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

cd ~
mkdir -p kits
cd kits
git clone --depth 1 https://github.com/freenove/Freenove_Ultimate_Starter_Kit_for_Raspberry_Pi
mv Freenove_Ultimate_Starter_Kit_for_Raspberry_Pi/ Freenove_Kit/

