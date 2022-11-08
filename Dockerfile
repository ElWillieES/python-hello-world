FROM python:3.9.15-slim-bullseye

RUN mkdir -p /usr/src/app
COPY requirements.txt /usr/src/app/

WORKDIR /usr/src/app

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY main.py /usr/src/app/

CMD cd /usr/src/app && python3 main.py