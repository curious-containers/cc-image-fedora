FROM docker.io/fedora:26

RUN dnf install -y git gcc redhat-rpm-config python3-devel openssl-devel libffi-devel \
&& pip3 install --no-input --user --upgrade flask requests paramiko psutil pymongo gunicorn gevent \
&& git clone -b 0.12 --depth 1 https://github.com/curious-containers/cc-container-worker.git /opt

ENV PYTHONPATH $PYTHONPATH:/opt
