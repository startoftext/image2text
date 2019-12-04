#!/bin/bash

# Cuda setup on ubuntu 19.10 (not exact)
# wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
# sudo dpkg -i cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
# sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
# sudo apt-get update
# wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
# sudo apt install ./nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
# sudo apt-get install --no-install-recommends     cuda-10-0     libcudnn7=7.6.2.24-1+cuda10.0      libcudnn7-dev=7.6.2.24-1+cuda10.0
# sudo apt-get install -y --no-install-recommends libnvinfer5=5.1.5-1+cuda10.0     libnvinfer-dev=5.1.5-1+cuda10.0
# sudo apt-get install --no-install-recommends nvidia-driver-418

# Make sure you have python 3 and virtualenv setup

virtualenv venv
source venv/bin/activate
pip3 install tensorflow numpy matplotlib graphviz pydot cairocffi

# If you have a GPU
# pip3 install tensorflow-gpu numpy matplotlib graphviz pydot cairocffi

pip3 install jupyter
jupyter notebook
