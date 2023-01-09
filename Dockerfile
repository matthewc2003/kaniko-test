FROM matthewc2003/kaniko-demo-image:1.0

RUN ln -fs /usr/share/zoneinfo/America/Los_Angeles /etc/localtime && DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata && dpkg-reconfigure --frontend noninteractive tzdata && apt-get install -y tk-dev
