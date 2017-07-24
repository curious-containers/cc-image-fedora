FROM docker.io/fedora:26

RUN dnf install -y git-core gcc redhat-rpm-config python3-devel openssl-devel libffi-devel
RUN pip3 install --no-input --user --upgrade git+https://github.com/curious-containers/cc-container-worker.git@0.12
