# TurboAIRT execution step


## Step 1: setup python virtual environment

### 1. setup miniconda3

bash miniconda_setup/Miniconda3-py39_4.9.2-Linux-aarch64.sh

**NOTE**: recommend using default path to setup

### 2. update environment variable

source ~/.bashrc

### 3. edit downloading path

vim ~/.condarc

paste the following content to ~/.condarc, then save and quit

channels:
\- defaults
show_channel_urls: true
default_channels:
\- https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main
\- https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/r
\- https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/msys2
custom_channels:
conda-forge: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
msys2: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
bioconda: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
menpo: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
pytorch: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
pytorch-lts: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
simpleitk: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
deepmodeling: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/

### 4. clean index

conda clean -i

### 5. create your virtual environmet

conda create -n YOUR_VIRTUAL_ENV_NAME python=3.8
conda activate YOUR_VIRTUAL_ENV_NAME
pip install numpy opencv-python -i https://pypi.tuna.tsinghua.edu.cn/simple/
pip install dist/TurboAIRT-0.0.1-cp38-cp38-linux_aarch64.whl

## Step2: add execution rights

chmod +x env.sh
chmod +x env_check.sh

## Step3: set environment variable

source env.sh

## Step4: check the environment for device

bash env_check.sh

**NOTE**: when GPU and DSP unit test failed, you should reboot device until GPU and DSP unit test passed

## Step5: execute deeplabv3/unet demo script

python demo/demo_tai_rt_dlv3.py --runtime CPU (GPU/HTP)

**NOTE**: one directory named dlv3_outputs in root directory will be generated after execution completed

python demo/demo_tai_rt_unet.py --runtime CPU (GPU/HTP)

**NOTE**: one directory named unet_outputs in root directory will be generated after execution completed
