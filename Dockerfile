FROM debian:11

RUN apt-get update && apt-get upgrade
RUN apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev liblzma-dev lzma-dev git
RUN apt-get install ffmpeg libsm6 libxext6  -y

RUN cd /home && wget https://www.python.org/ftp/python/3.10.7/Python-3.10.7.tgz && tar -xvf Python-3.10.7.tgz
RUN cd /home/Python-3.10.7 && ./configure --enable-optimizations && make -j 32 && make altinstall
RUN cd /home && git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui
