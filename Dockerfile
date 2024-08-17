FROM python:3-bookworm

RUN apt-get update && apt-get -y install pulseaudio pavucontrol portaudio19-dev python3 python3-pip

WORKDIR /app
ADD requirements.txt .
RUN pip3 install -r requirements.txt
ADD trusdx-txrx.py .
ADD startup.sh .