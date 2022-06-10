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

sudo apt-get install python3-numpy
sudo apt-get install libblas-dev
sudo apt-get install liblapack-dev
sudo apt-get install python3-dev
sudo apt-get install libatlas-base-dev
sudo apt-get install gfortran
sudo apt-get install python3-setuptools
sudo apt-get install python3-scipy
sudo apt-get update
sudo apt-get install python3-h5py

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

# Docker (required to run pretrained neural networks)
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker pi

# Use python3.7
python3 -c 'from keras.applications.resnet50 import ResNet50'
# raspi

sudo pip install http://ci.tensorflow.org/view/Nightly/job/nightly-pi-zero/lastSuccessfulBuild/artifact/output-artifacts/tensorflow-1.4.0-cp27-none-any.whl

# Another attempt at installing tensorflow - Taken from https://www.tensorflow.org/install/source_rpi#python-3.7
# git clone https://github.com/tensorflow/tensorflow.git
# cd tensorflow
# git checkout r2.0
# tensorflow/tools/ci_build/ci_build.sh PI-PYTHON37 \
#     tensorflow/tools/ci_build/pi/build_raspberry_pi.sh
# cd ..

# Video encoders
sudo apt install -y gpac # MP4 Format

# Google Drive
pip install --no-input --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib
