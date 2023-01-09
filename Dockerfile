FROM matthewc2003/kaniko-demo-image:1.3

RUN cd home/ && chmod -R 777 stable-diffusion-webui/
