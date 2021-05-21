FROM ubuntu:18.04

# Install required packages
RUN apt update -y
RUN apt-get install -y python3.7 python3-pip strace libsm6 libxext6 libxrender-dev
RUN python3 -m pip install --trusted-host pypi.python.org numpy flask simple-pid
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq python3-opencv
RUN python3 -m pip install psutil

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

EXPOSE 8080

ENV MOVE=true headless=true
ENV teamid=smol-brain teamname="smol brain neural net"
ENTRYPOINT ["python3", "-u", "run.py"]
