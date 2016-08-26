FROM docker.io/fedora:24

RUN dnf install -y gcc redhat-rpm-config python3-devel openssl-devel libffi-devel \
&& pip3 install --no-input flask \
&& pip3 install --no-input requests \
&& pip3 install --no-input paramiko \
&& pip3 install --no-input psutil \
&& pip3 install --no-input toml

COPY cc-container-worker/container_worker /opt/container_worker
ENV PYTHONPATH $PYTHONPATH:/opt
