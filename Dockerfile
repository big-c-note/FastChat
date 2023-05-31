FROM nvidia/cuda:11.7.1-runtime-ubuntu20.04
RUN apt-get update -y && apt-get install -y python3 python3-pip 
WORKDIR /FastChat
COPY . /FastChat
RUN pip3 install --upgrade pip  # enable PEP 660 support                        
RUN pip3 install -e .
