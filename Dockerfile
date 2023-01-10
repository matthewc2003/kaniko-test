FROM matthewc2003/webui-ubuntu-cuda113:1.0

RUN cd /home/stable-diffusion-webui/models/Stable-diffusion && wget https://huggingface.co/Linaqruf/anything-v3.0/resolve/main/Anything-V3.0-pruned.safetensors
RUN cd /home/stable-diffusion-webui/models/VAE && wget https://huggingface.co/Linaqruf/anything-v3.0/resolve/main/Anything-V3.0.vae.pt