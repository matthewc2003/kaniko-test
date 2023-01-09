FROM matthewc2003/kaniko-demo-image:1.1

RUN apt-get install -y git nano lzma-dev liblzma-dev
RUN cd home/
RUN wget https://www.python.org/ftp/python/3.10.6/Python-3.10.6.tgz
RUN tar -xvf Python-3.10.6.tgz
RUN cd Python-3.10.6/ && ./configure --enable-optimizations && make -j 16 && make altinstall

