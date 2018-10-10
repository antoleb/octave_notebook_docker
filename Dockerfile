FROM ubuntu
LABEL maintainer="Anton Lebedev <anleb96@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository -r  ppa:octave/stable
RUN apt-get update
RUN apt-get install -y octave
RUN apt-get install -y liboctave-dev
RUN apt-get install -y make
RUN apt-get install -y python3-pip
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install jupyter
RUN python3 -m pip install octave_kernel

VOLUME ["/code"]
WORKDIR /code
