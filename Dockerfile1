FROM nvidia/cuda:11.3.0-cudnn8-devel-ubuntu20.04

RUN apt-get -y update && apt-get -y upgrade
RUN ln -fs /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
RUN dpkg-reconfigure --frontend noninteractive tzdata
RUN apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev liblzma-dev lzma-dev git
RUN apt-get install ffmpeg libsm6 libxext6  -y

RUN cd /home && wget https://www.python.org/ftp/python/3.10.7/Python-3.10.7.tgz && tar -xvf Python-3.10.7.tgz
RUN cd /home/Python-3.10.7 && ./configure --enable-optimizations && make -j 32 && make altinstall
RUN cd /home && git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui
