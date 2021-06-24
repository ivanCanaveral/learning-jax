FROM ubuntu

WORKDIR /home

RUN apt-get update && apt-get install -y python3-pip curl

RUN pip3 install jupyterlab jax jaxlib

COPY .gitignore /home

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]