FROM docker.io/fedora:24

RUN dnf install -y git gcc redhat-rpm-config python3-devel openssl-devel libffi-devel libseccomp-devel \
&& pip3 install --no-input --upgrade flask requests paramiko psutil toml process_tracing seccomplite pymongo \
&& git clone -b 0.6 --depth 1 https://github.com/curious-containers/cc-container-worker.git /opt

ENV PYTHONPATH $PYTHONPATH:/opt
