FROM docker.io/fedora:24

RUN dnf install -y git gcc redhat-rpm-config python3-devel openssl-devel libffi-devel \
&& pip3 install --no-input --upgrade flask requests paramiko psutil toml \
&& git clone https://github.com/curious-containers/cc-container-worker.git /opt

ENV PYTHONPATH $PYTHONPATH:/opt
