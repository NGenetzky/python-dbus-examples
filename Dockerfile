FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    python python-dev python-pip python-virtualenv \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    dbus \
    libdbus-1-dev \
    libdbus-glib-1-dev \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    libgirepository1.0-dev \
    python-gi \
    python-gi-dev \
    python-gi-cairo \
    libcairo2-dev \
    libcairo-gobject2 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./*.py ./

VOLUME /var/run/dbus/

CMD [ "python", "./receiver.py" ]
