FROM matthewc2003/kaniko-demo-image:1.2

RUN cd home/ && git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui 
